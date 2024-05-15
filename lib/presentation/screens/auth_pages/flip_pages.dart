import 'package:firebase_phone_selling_app/constants/colors.dart';
import 'package:firebase_phone_selling_app/presentation/screens/auth_pages/login_pages/login.dart';
import 'package:firebase_phone_selling_app/presentation/screens/auth_pages/register_pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class LoginRegisterFlip extends StatefulWidget {
  const LoginRegisterFlip({super.key});

  @override
  _LoginRegisterFlipState createState() => _LoginRegisterFlipState();
}

class _LoginRegisterFlipState extends State<LoginRegisterFlip> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme(context),
      body: Center(
        child: FlipCard(
          key: cardKey,
          flipOnTouch: false,
          front: LoginPage(onFlip: () => cardKey.currentState?.toggleCard()),
          back: RegisterPage(onFlip: () => cardKey.currentState?.toggleCard()),
        ),
      ),
    );
  }
}
