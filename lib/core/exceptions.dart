

class ServerException implements Exception {
  final String errorMessage;
  ServerException(this.errorMessage);
}

class CasheExceptions implements Exception {}
