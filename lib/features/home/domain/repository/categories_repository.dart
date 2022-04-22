
import 'package:dartz/dartz.dart';
import 'package:qit/core/faileurs.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, List<String>>> getCategoriesResponse() ;

}