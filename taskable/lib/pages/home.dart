import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:taskable/pages/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Future<void> logout(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final FirebaseAuth auth = FirebaseAuth.instance;

    await googleSignIn.signOut();
    await auth.signOut();

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("taskable"),
        titleTextStyle:
            const TextStyle(fontFamily: "CascadiaCode", fontSize: 25),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
              onPressed: () async {
                await logout(context);
              },
              icon: const Icon(Icons.logout_rounded)),
        ],
      ),
      body: const Center(
        child: Text("Logged In!"),
      ),
    );
  }
}
