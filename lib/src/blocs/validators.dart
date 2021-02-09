import 'dart:async';

class Validators {
  // ********************************************
  // * eMail validation for the BLoC transformer
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains('@')) {
        sink.add(email);
      } else {
        sink.addError('Enter a Valid email');
      }
    },
  );
  // ********************************************
  // * Password validation for the BLoC transformer
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (passsword, sink) {
      if (passsword.length > 3) {
        sink.add(passsword);
      } else {
        sink.addError('Need at least 4 char');
      }
    },
  );
}
