import 'package:firebase_phone_selling_app/constants/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogRegTextField extends StatelessWidget {
  const LogRegTextField(
      {super.key,
      required this.controller,
      required this.prefIcon,
      required this.suffixIcon,
      required this.labelText,
      this.digitsOnly = false,
      this.obscure = false});

  final TextEditingController controller;
  final Widget prefIcon;
  final Widget suffixIcon;
  final bool digitsOnly;
  final String labelText;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double radius = size.width * 0.1;

    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      obscureText: obscure,
      keyboardType: digitsOnly ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: labelText,
          labelStyle: GoogleFonts.nunitoSans(
              color: AppColors.appPrimaryColor, fontSize: size.height / 35),
          prefixIcon: prefIcon,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius * 2),
              borderSide:  BorderSide(color: Colors.grey.shade500)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius * 2),
          borderSide: BorderSide(color: Colors.grey.shade100)
      ),),
    );
  }
}
