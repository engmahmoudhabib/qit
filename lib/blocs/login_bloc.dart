import 'package:qit/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validation {
  final BehaviorSubject<String> _email = BehaviorSubject<String>();
  Stream<String> get email$ => _email.stream.transform(eMailValidate);
  void setEmail(String value) => _email.sink.add(value);
  //void clearEmail() => _email.sink.add(null);
  String get geEmailTxt => _email.value;

  final BehaviorSubject<String> _password = BehaviorSubject<String>();
  Stream<String> get password$ => _password.stream.transform(passwordValidate);
  void setPassword(String value) => _password.sink.add(value);
 // void clearPassword() => _password.sink.add(null);
  String get gePasswordStr => _password.value;

  void dispose() {
    _email.close();
    _password.close();
  }
}
