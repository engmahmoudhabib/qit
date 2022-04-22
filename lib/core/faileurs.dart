
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
 const Failure([List properties = const <dynamic>[]]);
}

class ServerFailures extends Failure {
  final Map<String, dynamic> error;

 const ServerFailures( this.error);
  @override
 
  List<Object> get props => [error];
}

class CasheFailures extends Failure {
  @override

  List<Object> get props => [];
}
