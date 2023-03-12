import 'package:flutter/material.dart';
import 'package:frontend_msngr/loginpage.dart';
import 'package:frontend_msngr/messagepage.dart';
import 'homepage.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDZvxw2LXy05hLkcH_fpPWWa5RzwVlbQro",
          projectId: "messageapp-acf7a",
          messagingSenderId: "72207922701",
          appId: "1:72207922701:web:d84fe3144a7f2de5dd4744"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
