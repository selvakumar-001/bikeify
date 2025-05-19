import 'package:bikeify/login.dart';
import 'package:bikeify/register_page.dart';
import 'package:bikeify/splash.dart';
import 'package:bikeify/forgot_password.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}
