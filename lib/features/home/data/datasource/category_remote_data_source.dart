

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:qit/core/exceptions.dart';
import 'package:qit/features/home/domain/entities/categories_response_model.dart';

abstract class CategoryRemoteDataSource {
  Future<CategoriesResponseModel> getCategoryResponse(
    String category,
  );
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  Dio dio = Dio();
  final _baseUrl = 'https://fakestoreapi.com/products/category/';
  CategoryRemoteDataSourceImpl({
    required this.dio,
  });
  @override
  Future<CategoriesResponseModel> getCategoryResponse( String category,) async {
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
    try {
      Response response = await dio.get(
        _baseUrl + category,
        
      );

      return CategoriesResponseModel.fromJson(response.data);
    } on ServerException catch (e) {
      print('debug-get>>>>> Exception error message : ' + e.errorMessage);

      throw ServerException(e.errorMessage);
    } catch (e) {
      print('debug-get steps >>>>> catch error message : ' + e.toString());

      throw ServerException(e.toString());
    }
  }
}
