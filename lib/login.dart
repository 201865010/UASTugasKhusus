import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'home.dart';

import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginAppState createState() => new _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/images/logo.png'),
      ),
    );

    final nim = TextFormField(
      keyboardType: TextInputType.name,
      autofocus: false,
      initialValue: '201865010',
      decoration: InputDecoration(
        hintText: 'NIM',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'unipa',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(Home.tag);
          },
          color: Color.fromARGB(255, 166, 107, 211),
          child: Text(
            'Log In',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    final portal = Center(
        child: Text(
      "PORTAL AKADEMIK",
      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    ));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 196, 239),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            portal,
            logo,
            SizedBox(height: 48.0),
            nim,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
          ],
        ),
      ),
    );
  }
}
