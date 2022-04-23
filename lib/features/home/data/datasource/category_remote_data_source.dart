import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:qit/core/exceptions.dart';
import 'package:qit/features/home/domain/entities/categories_response_model.dart';
import 'package:qit/features/home/domain/entities/category_item_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  Future<CategoriesResponseModel> getCategoryResponse(
    String category,
  ) async {
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
      List<CategoryItemModel> items = [];
      response.data.forEach((e) {
        items.add(CategoryItemModel.fromJson(e));
      });
      final prefs = await SharedPreferences.getInstance();
      prefs.setString(
          'token', Map<String, dynamic>.from(response.data)['message']);
      return CategoriesResponseModel(categoryItemModel: items);
    } on ServerException catch (e) {
      print(e.errorMessage);

      throw ServerException(e.errorMessage);
    } catch (e) {
      print(e.toString());

      throw ServerException(e.toString());
    }
  }
}
