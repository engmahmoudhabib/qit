import 'package:dartz/dartz.dart';
import 'package:qit/core/exceptions.dart';
import 'package:qit/core/faileurs.dart';
import 'package:qit/core/network.dart';

import '../../domain/entities/categories_response_model.dart';
import '../../domain/repository/category_repository.dart';
import '../datasource/category_remote_data_source.dart';

class CategoryRepositoryImplementation implements CategoryRepository {
  final CategoryRemoteDataSource remote;
  final NetworkInfo network;

  CategoryRepositoryImplementation({
    required this.remote,
    required this.network,
  });

  @override
  Future<Either<Failure, CategoriesResponseModel>> getCategoryResponse(String category) async {
    if (await network.icConnected) {
      try {
        final remoteSteps = await remote.getCategoryResponse(category);

        return Right(remoteSteps);
      } on ServerException {
        return Left(CasheFailures());
      }
    } else {
      try {
        final remoteSteps = await remote.getCategoryResponse(category);

        return Right(remoteSteps);
      } on ServerException {
        return Left(CasheFailures());
      }
    }
  }
}