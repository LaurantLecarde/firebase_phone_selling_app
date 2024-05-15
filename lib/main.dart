import 'package:firebase_phone_selling_app/presentation/screens/auth_pages/flip_pages.dart';
import 'package:firebase_phone_selling_app/presentation/screens/auth_pages/login_pages/login.dart';
import 'package:firebase_phone_selling_app/presentation/screens/main_page.dart';
import 'package:firebase_phone_selling_app/presentation/screens/profile_pages/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true, primaryColor: const Color(0xffe6e9ef)),
        // home: const LoginRegisterFlip()
    home: LoginRegisterFlip(),
    );
  }
}
