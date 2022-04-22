import 'package:dartz/dartz.dart';
import 'package:qit/core/faileurs.dart';
import 'package:qit/features/login/domain/entities/login_request_model.dart';
import 'package:qit/features/login/domain/entities/login_response_model.dart';
import 'package:qit/features/login/domain/repository/login_repository.dart';


class GetLoginResponse {
  final LoginRepository repository;
  GetLoginResponse(
    this.repository,
  );
  Future<Either<Failure, LoginResponseModel>> call({
    required LoginRequest request,
  }) async {
    return await repository.getLoginResponse(
      request,
    );
  }
}
