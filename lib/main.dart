import 'dart:js';

import 'package:flutter/material.dart';

import 'login.dart';
import 'home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginApp.tag: (context) => LoginApp(),
    Home.tag: (context) => Home(),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SIMUNIPA',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.green, fontFamily: 'Nunito'),
      home: new LoginApp(),
      routes: routes,
    );
  }
}
