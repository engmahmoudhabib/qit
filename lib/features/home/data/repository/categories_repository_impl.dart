import 'package:dartz/dartz.dart';
import 'package:qit/core/exceptions.dart';
import 'package:qit/core/faileurs.dart';
import 'package:qit/core/network.dart';

import '../../domain/repository/categories_repository.dart';
import '../datasource/categories_remote_data_source.dart';

class CategoriesRepositoryImplementation implements CategoriesRepository {
  final CategoriesRemoteDataSource remote;
  final NetworkInfo network;

  CategoriesRepositoryImplementation({
    required this.remote,
    required this.network,
  });

  @override
  Future<Either<Failure, List<dynamic>>> getCategoriesResponse() async {
    if (await network.icConnected) {
      try {
        final remoteSteps = await remote.getCategoriesResponse();

        return Right(remoteSteps);
      } on ServerException {
        return Left(CasheFailures());
      }
    } else {
      try {
        final remoteSteps = await remote.getCategoriesResponse();

        return Right(remoteSteps);
      } on ServerException {
        return Left(CasheFailures());
      }
    }
  }
}
