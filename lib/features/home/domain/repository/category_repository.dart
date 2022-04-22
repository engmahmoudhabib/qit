


import 'package:dartz/dartz.dart';
import 'package:qit/core/faileurs.dart';
import 'package:qit/features/home/domain/entities/categories_response_model.dart';

abstract class CategoryRepository {
  Future<Either<Failure, CategoriesResponseModel>> getCategoryResponse(String category) ;

}