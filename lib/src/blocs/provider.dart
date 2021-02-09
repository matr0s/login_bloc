import 'package:flutter/material.dart';

import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

// **************************************
// * We need this class constructor to be able to wrap another Widget as a Child
  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
// **************************************
// * It is required in case we extendet from InheritedWidget
  bool updateShouldNotify(_) => true;

// **************************************
// * This strange function is looking for the Prvider higer in the widget hierarchy
// * starting the context of Widget we mentioned Provider.of(context) 
  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>()).bloc;
  }
}
