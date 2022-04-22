import 'package:dartz/dartz.dart';
import 'package:qit/core/faileurs.dart';
import 'package:qit/features/home/domain/repository/categories_repository.dart';

class GetCategoriesResponse {
  final CategoriesRepository repository;
  GetCategoriesResponse(
    this.repository,
  );
  Future<Either<Failure, List<String>>> call() async {
    return await repository.getCategoriesResponse();
  }
}
