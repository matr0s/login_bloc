import 'dart:async';

import 'validators.dart';

class Bloc with Validators {
// ********************************************
// * Controllers for different elements
  final _email = StreamController<String>();
  final _password = StreamController<String>();

// ********************************************
// * Add data tothe stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

// ********************************************
// * Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

// ********************************************
// * Dispose methods to be able to close controllers
  dispose() {
    _email.close();
    _password.close();
  }
}

// ********************************************
// * Block instance init. We are using Single Instance Approach for this App
final bloc = Bloc();
