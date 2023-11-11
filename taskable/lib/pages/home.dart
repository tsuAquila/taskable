import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("taskable"),
        titleTextStyle: const TextStyle(fontFamily: "CascadiaCode"),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
              onPressed: signOutUser, icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: const Center(
        child: Text("Logged In!"),
      ),
    );
  }
}
