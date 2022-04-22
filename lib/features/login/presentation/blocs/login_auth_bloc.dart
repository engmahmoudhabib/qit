
import 'package:qit/features/login/presentation/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validation {
  final BehaviorSubject<String> _email = BehaviorSubject<String>();
  Stream<String> get email$ => _email.stream.transform(eMailValidate);
  void setEmail(String value) => _email.sink.add(value);

  String get geEmailTxt => _email.value;

  final BehaviorSubject<String> _password = BehaviorSubject<String>();
  Stream<String> get password$ => _password.stream.transform(passwordValidate);
  void setPassword(String value) => _password.sink.add(value);

  String get gePasswordStr => _password.value;

  void dispose() {
    _email.close();
    _password.close();
  }
}
