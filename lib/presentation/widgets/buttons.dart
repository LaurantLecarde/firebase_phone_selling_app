import 'package:firebase_phone_selling_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.onPressed, required this.text});

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double radius = size.width * 0.1;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius * 2),
          )),
      child: Text(
        text,
        style: GoogleFonts.nunitoSans(color: Colors.white, fontWeight: FontWeight.bold,fontSize: size.height / 40),
      ),
    );
  }
}
