import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Divider(height: 25.0),
            submitButton(),
          ],
        ));
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'name@domain.com',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('LogIn'),
      onPressed: () {},
    );
  }
}
