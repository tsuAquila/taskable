import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 50,
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
              padding: EdgeInsets.only(top: 200),
              child: Center(
                child: Text(
                  "sign in with",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ))

          //google image
          

        ]),
      ),
    );
  }
}
