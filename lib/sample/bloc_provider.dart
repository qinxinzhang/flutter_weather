import 'package:flutter/material.dart';
import 'counter_bloc.dart';

class BlocProvider extends InheritedWidget {
  CounterBLoC bLoC = CounterBLoC();

  BlocProvider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static CounterBLoC of(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType() as BlocProvider).bLoC;
}