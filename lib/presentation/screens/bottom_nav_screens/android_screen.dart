import 'package:firebase_phone_selling_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AndroidScreen extends StatefulWidget {
  const AndroidScreen({super.key});

  @override
  State<AndroidScreen> createState() => _AndroidScreenState();
}

class _AndroidScreenState extends State<AndroidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme(context),
      body: Center(
      child: Text("Android"),
    ),
    );
  }
}
