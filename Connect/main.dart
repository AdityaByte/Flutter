import 'package:connect/pages/Splash_scrn.dart';
import 'package:connect/pages/signup_scrn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    title: 'connect',
    debugShowCheckedModeBanner: false,
    home: Connect(),
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
  ));
}

class Connect extends StatefulWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Splash_screen(),
    );
  }
}
