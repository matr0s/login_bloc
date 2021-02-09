import 'package:flutter/material.dart';

import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailField(bloc),
            passwordField(bloc),
            Divider(height: 25.0),
            submitButton(),
          ],
        ));
  }

// **********************************
// * Widget for the email input
  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (ctx, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'name@domain.com',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

// **********************************
// * Widget for the password input
  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (ctx, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

// **********************************
// * Submit button we have to save all the data
  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('LogIn'),
      onPressed: () {},
    );
  }
}
