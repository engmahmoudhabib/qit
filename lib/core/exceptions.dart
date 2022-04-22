import 'package:qit/models/login/login_error_response_model.dart';

class ServerException implements Exception {
  final String errorMessage;
  ServerException(this.errorMessage);
}

class CasheExceptions implements Exception {}
