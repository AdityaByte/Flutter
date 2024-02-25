import 'package:flutter/material.dart';

class Home_scrn extends StatefulWidget {
  const Home_scrn({Key? key}) : super(key: key);

  @override
  State<Home_scrn> createState() => _Home_scrnState();
}

class _Home_scrnState extends State<Home_scrn> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("aditya pawar"),),
        ),
      ),
    );
  }
}
