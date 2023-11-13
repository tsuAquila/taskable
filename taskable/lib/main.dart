import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taskable/firebase_options.dart';
import 'package:taskable/pages/auth.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyMedium: TextStyle(fontFamily: 'CascadiaCode'))),
      home: const Auth(),
    );
  }
}
