import 'package:flutter/material.dart';
import 'package:food_app/PageMain.dart';
import 'package:food_app/Menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/menu': (BuildContext context) => new Menu(),
      },
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageMain(),
    );
  }
}
