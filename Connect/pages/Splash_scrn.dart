import 'dart:async';
import 'package:connect/pages/login_scrn.dart';
import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login_scrn())));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.green, Colors.greenAccent])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Image(
              image: AssetImage("images/logo.png"),
            ),
          ),
          bottomNavigationBar: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Connect",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Alata'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
