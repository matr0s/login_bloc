import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'validators.dart';

class Bloc with Validators {
// ********************************************
// * Controllers for different elements
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

// ********************************************
// * Add data tothe stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
// ********************************************
// * Merge two Streams
  Stream<bool> get submitValid =>
      CombineLatestStream.combine2(email, password, (e, p) => true);

// ********************************************
// * Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

// ********************************************
// * Data collection on Submit
  submit() {
    final validEmail = _email.value;
    final validPass = _password.value;
    print('You entered this email: $validEmail and password: $validPass');
  }

// ********************************************
// * Dispose methods to be able to close controllers
  dispose() {
    _email.close();
    _password.close();
  }
}

// ********************************************
// * Block instance init. We are using Single Instance Approach for this App
// final bloc = Bloc();
