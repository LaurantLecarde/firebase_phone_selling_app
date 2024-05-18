import 'package:firebase_phone_selling_app/presentation/screens/auth_pages/flip_pages.dart';
import 'package:firebase_phone_selling_app/presentation/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return MainPage();
          }else{
            return const LoginRegisterFlip();
          }
        },
      ),
    );
  }
}
