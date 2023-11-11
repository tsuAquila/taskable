import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:taskable/pages/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<void> signInWithGoogle() async {
    //create instance of signin
    FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    //create signin account
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    //obtain auth info
    final GoogleSignInAuthentication googleAuth =
        await googleSignInAccount!.authentication;
    //create new credentials
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    //sign in user
    final UserCredential userCredential =
        await auth.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(children: [
          const SizedBox(
            height: 300,
          ),

          //text TASKABLE
          const Center(
              child: Text(
            "taskable",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          )),

          //sign in with
          const Padding(
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

          //google login
          GestureDetector(
            child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Image.asset(
                    "lib/images/google.png",
                    width: 50,
                    height: 50,
                  ),
                )),
            onTap: () {
              signInWithGoogle();
              Navigator.push(context, MaterialPageRoute(builder: (_) => const Home()));
            },
          )
        ]),
      ),
    );
  }
}
