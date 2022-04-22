
import 'package:dartz/dartz.dart';
import 'package:qit/core/exceptions.dart';
import 'package:qit/core/faileurs.dart';
import 'package:qit/core/network.dart';
import 'package:qit/features/login/domain/entities/login_request_model.dart';
import 'package:qit/features/login/domain/entities/login_response_model.dart';
import 'package:qit/features/login/domain/repository/login_repository.dart';

import '../datasource/login_remote_data_source.dart';

class LoginRepositoryImplementation implements LoginRepository {
  final LoginRemoteDataSource remote;
  final NetworkInfo network;

  LoginRepositoryImplementation({
    required this.remote,
    required this.network,
  });

  @override
  Future<Either<Failure, LoginResponseModel>> getLoginResponse(LoginRequest request) async {
    if (await network.icConnected) {
      try {
        final remoteSteps = await remote.getLoginResponse(request);

        return Right(remoteSteps);
      } on ServerException {
        return Left(CasheFailures());
      }
    } else {
      try {
        final remoteSteps = await remote.getLoginResponse(request);

        return Right(remoteSteps);
      } on ServerException {
        return Left(CasheFailures());
      }
    }
  }
}