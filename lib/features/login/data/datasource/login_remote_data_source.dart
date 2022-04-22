import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:qit/core/exceptions.dart';
import 'package:qit/features/login/domain/entities/login_request_model.dart';
import 'package:qit/features/login/domain/entities/login_response_model.dart';


abstract class LoginRemoteDataSource {
  Future<LoginResponseModel> getLoginResponse(
    LoginRequest request,
  );
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  Dio dio = Dio();
  final _baseUrl = 'http://restapi.adequateshop.com/';
  LoginRemoteDataSourceImpl({
    required this.dio,
  });
  @override
  Future<LoginResponseModel> getLoginResponse(LoginRequest request) async {
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
      Response response = await dio.post(
        _baseUrl + '/api/authaccount/login',
        data: request.toJson(),
      );

      return LoginResponseModel.fromJson(response.data);
    } on ServerException catch (e) {
      print(  e.errorMessage);

      throw ServerException(e.errorMessage);
    } catch (e) {
      print( e.toString());

      throw ServerException(e.toString());
    }
  }
}
