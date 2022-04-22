
import 'package:dartz/dartz.dart';
import 'package:qit/core/faileurs.dart';
import 'package:qit/features/home/domain/entities/categories_response_model.dart';
import 'package:qit/features/home/domain/repository/category_repository.dart';

class GetCategoryResponse {
  final CategoryRepository repository;
  GetCategoryResponse(
    this.repository,
  );
  Future<Either<Failure, CategoriesResponseModel>> call({
    required String category,
  }) async {
    return await repository.getCategoryResponse(
      category,
    );
  }
}
