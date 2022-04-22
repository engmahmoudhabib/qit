
import 'package:dartz/dartz.dart';
import 'package:qit/core/faileurs.dart';
import 'package:qit/features/login/domain/entities/login_request_model.dart';
import 'package:qit/features/login/domain/entities/login_response_model.dart';



abstract class LoginRepository {
  Future<Either<Failure, LoginResponseModel>> getLoginResponse(LoginRequest request) ;

}