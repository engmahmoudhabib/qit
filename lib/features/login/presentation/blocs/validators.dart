import 'dart:async';

mixin Validation {
  final eMailValidate =
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.isEmpty) {
      sink.addError('Enter the e-mail');
    } else if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value) == false) {
      sink.addError('The e-mail is invalid!');
    } else {
      sink.add(value);
    }
  });

  final passwordValidate =
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.isEmpty) {
      sink.addError('Enter the password');
    } else if (value.length < 5) {
      sink.addError('The password must have at least 6 characters');
    } else {
      sink.add(value);
    }
  });
}
