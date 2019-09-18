import 'package:flutter/material.dart';
import 'package:fluttergram/Authentication/Login.dart';
import 'package:fluttergram/Authentication/Signup.dart';
import 'package:fluttergram/Home.dart';
import 'package:fluttergram/Wrappers/Wrappers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterGram',
      initialRoute: '/',
      routes: {
        '/': (context) => wrapWithSafeArea(Home()),
        '/login': (context) => wrapWithSafeArea(Login()),
        '/signup': (context) => wrapWithSafeArea(Signup()),
      },
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'TitilliumWeb'),
    );
  }
}
