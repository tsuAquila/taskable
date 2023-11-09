import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void signInUser() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    await FirebaseAuth.instance.signInWithProvider(GoogleAuthProvider());

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 300,
          ),

          //text TASKABLE
          Center(
              child: Text(
            "taskable",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          )),

          //sign in with
          Padding(
              padding: EdgeInsets.only(top: 150),
              child: Center(
                child: Text(
                  "sign in with",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              )),

          //google image
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: signInUser,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.sign_language,
                    size: Checkbox.width,
                  ), // Add your image/icon here
                  SizedBox(
                    width: 20.0,
                    height: 20,
                  ), // Adjust the spacing as needed
                  Text('Press Me'),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
