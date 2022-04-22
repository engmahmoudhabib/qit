import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:qit/core/exceptions.dart';

abstract class CategoriesRemoteDataSource {
  Future<List<dynamic>> getCategoriesResponse();
}

class CategoriesRemoteDataSourceImpl implements CategoriesRemoteDataSource {
  Dio dio = Dio();
  final _baseUrl = 'https://fakestoreapi.com/';
  CategoriesRemoteDataSourceImpl({
    required this.dio,
  });
  @override
  Future<List<dynamic>> getCategoriesResponse() async {
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
        _baseUrl + 'products/categories',
      );

      return response.data;
    } on ServerException catch (e) {
      print(  e.errorMessage);

      throw ServerException(e.errorMessage);
    } catch (e) {
      print( e.toString());

      throw ServerException(e.toString());
    }
  }
}
