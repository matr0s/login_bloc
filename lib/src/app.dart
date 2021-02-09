import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'blocs/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log me In with BLoC',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Log In'),
          ),
          body: LoginScreen(),
        ),
      ),
    );
  }
}
