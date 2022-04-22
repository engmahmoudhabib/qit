import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/network.dart';
import 'features/home/data/datasource/categories_remote_data_source.dart';
import 'features/home/data/datasource/category_remote_data_source.dart';
import 'features/home/data/repository/categories_repository_impl.dart';
import 'features/home/data/repository/category_repository_impl.dart';
import 'features/home/domain/repository/categories_repository.dart';
import 'features/home/domain/repository/category_repository.dart';
import 'features/home/domain/usecase/get_categories.dart';
import 'features/home/domain/usecase/get_category.dart';
import 'features/home/presentation/bloc/categories_bloc.dart';
import 'features/home/presentation/bloc/category_bloc.dart';
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
  sl.registerFactory(
    () => CategoryBloc(
      response: sl(),
    ),
  );
  sl.registerFactory(
    () => CategoriesBloc(
      response: sl(),
    ),
  );
  // Use cases
  sl.registerLazySingleton(() => GetLoginResponse(sl()));
  sl.registerLazySingleton(() => GetCategoryResponse(sl()));
  sl.registerLazySingleton(() => GetCategoriesResponse(sl()));
  // Repository
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImplementation(
      network: sl(),
      remote: sl(),
    ),
  );
  sl.registerLazySingleton<CategoryRepository>(
    () => CategoryRepositoryImplementation(
      network: sl(),
      remote: sl(),
    ),
  );
  sl.registerLazySingleton<CategoriesRepository>(
    () => CategoriesRepositoryImplementation(
      network: sl(),
      remote: sl(),
    ),
  );
  //remote Data sources
  sl.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<CategoryRemoteDataSource>(
    () => CategoryRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<CategoriesRemoteDataSource>(
    () => CategoriesRemoteDataSourceImpl(dio: sl()),
  );
  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImplementation(sl()));

  //! External

  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => DataConnectionChecker());
}
