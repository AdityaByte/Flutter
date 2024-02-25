import 'package:connect/pages/completeprofile_scrn.dart';
import 'package:connect/pages/home_scrn.dart';
import 'package:connect/pages/signup_scrn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_scrn extends StatefulWidget {
  const Login_scrn({Key? key}) : super(key: key);

  @override
  State<Login_scrn> createState() => _Login_scrnState();
}

class _Login_scrnState extends State<Login_scrn> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.white,
              Colors.blue.shade50,
              Colors.greenAccent
            ])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Connect",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Alata",
                              fontSize: 35),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(labelText: 'Password'),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CupertinoButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Complete_profile_scrn()));
                          },
                          color: Theme.of(context).colorScheme.primary,
                          child: Text(
                            "Log in",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            bottomNavigationBar: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Signup_scrn()));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
