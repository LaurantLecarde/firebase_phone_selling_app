import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_phone_selling_app/auth/auth_gate.dart';
import 'package:firebase_phone_selling_app/constants/themes/light_mode.dart';
import 'package:firebase_phone_selling_app/presentation/screens/auth_pages/flip_pages.dart';
import 'package:firebase_phone_selling_app/presentation/screens/auth_pages/login_pages/login.dart';
import 'package:firebase_phone_selling_app/presentation/screens/chatting_screens/chatting_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCE2k3T_5CoGkh67yzTpNAPTgNp8LFfCxU",
          appId: "1:637517963177:android:e06bd4f5baec9d93e1eeb8",
          messagingSenderId: "637517963177",
          projectId: "fir-phonesllingapp"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const AuthGate(),
    );
  }
}
