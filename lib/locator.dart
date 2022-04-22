import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/network.dart';
import 'features/login/data/datasource/login_remote_data_source.dart';
import 'features/login/data/repository/login_repository_impl.dart';
import 'features/login/domain/repository/login_repository.dart';
import 'features/login/domain/usecase/get_login_response.dart';
import 'features/login/presentation/blocs/login_bloc.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerFactory(
    () => LoginBloc(
      response: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetLoginResponse(sl()));
  // Repository
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImplementation(
      network: sl(),
      remote: sl(),
    ),
  );
   //remote Data sources
  sl.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(dio: sl()),
  );
  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImplementation(sl()));

  //! External

 
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => DataConnectionChecker());
}
