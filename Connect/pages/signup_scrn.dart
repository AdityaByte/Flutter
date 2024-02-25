import 'package:connect/models/UserModel.dart';
import 'package:connect/pages/completeprofile_scrn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class Signup_scrn extends StatefulWidget {
  const Signup_scrn({Key? key}) : super(key: key);

  @override
  State<Signup_scrn> createState() => _Signup_scrnState();
}

class _Signup_scrnState extends State<Signup_scrn> {
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // TextEditingController cpasswordController = TextEditingController();

  // void checkValues() {
  //   String email = emailController.text.trim();
  //   String password = passwordController.text.trim();
  //   String cpassword = cpasswordController.text.trim();

  //   if (email == "" || password == "" || cpassword == "") {
  //     print("field is empty");
  //   } else if (password != cpassword) {
  //     print("password do not match");
  //   } else {
  //     signUp(email, password);
  //   }
  // }

  // void signUp(String email, String password) async {
  //   UserCredential? credential;

  //   try {
  //     credential = await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(email: email, password: password);
  //   } on FirebaseAuthException catch (ex) {
  //     print(ex.code.toString());
  //   }

  //   if (credential != null) {
  //     String uid = credential.user!.uid;
  //     UserModel newUser = UserModel(
  //       uid: uid,
  //       email: email,
  //       fullname: "",
  //       profilepic: "",
  //     );
  //     await FirebaseFirestore.instance
  //         .collection("users")
  //         .doc(uid)
  //         .set(newUser.tomap())
  //         .then((value) {
  //       print("new user created");
  //     });
  //   }
  // }

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
                          // controller: emailController,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          // controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(labelText: 'Password'),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          // controller: cpasswordController,
                          obscureText: true,
                          decoration:
                              InputDecoration(labelText: 'Confirm Password'),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CupertinoButton(
                          onPressed: () {
                            // checkValues();
                          },
                          color: Theme.of(context).colorScheme.primary,
                          child: Text("Sign Up"),
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
                    "Already have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Log in",
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
