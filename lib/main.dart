import 'package:flutter/material.dart';
import 'package:flutter_weather_app/sample/bloc_provider.dart';
import 'package:flutter_weather_app/sample/count_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: CountPage(),
      ),
    );
  }
}
