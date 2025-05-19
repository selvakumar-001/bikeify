import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bikeify/login.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => login())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff07a467),
      body: Center(child: Image.asset("Image/Title.png")),
    );
  }
}
