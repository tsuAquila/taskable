import 'package:flutter/material.dart';

void signInUser() {}

class Login extends StatelessWidget {
  const Login({super.key});

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
                  Icon(Icons.sign_language, size: Checkbox.width,), // Add your image/icon here
                  SizedBox(width: 20.0, height: 20,), // Adjust the spacing as needed
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
