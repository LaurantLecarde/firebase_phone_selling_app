import 'package:firebase_phone_selling_app/constants/navigators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mask_input_formatter/mask_input_formatter.dart';

import '../../../../constants/colors.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_fields/log_reg_textfld.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback onFlip;

  const RegisterPage({super.key, required this.onFlip});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _phoneNumber = TextEditingController();

  var mask = MaskInputFormatter(mask: "(##)-###-##-##");

  bool togglePass = true;

  final List<String> dropdownItems = [
    'Andijon Viloyati',
    "Yana"
  ];
  String selectedItem = 'Andijan Viloyati';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainTheme(context), body: _registerSection());
  }

  _registerSection() {
    var size = MediaQuery
        .of(context)
        .size;
    final double radius = size.width * 0.02;
    return SingleChildScrollView(
      padding: EdgeInsets.all(size.width / 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: size.height / 3.5,
              width: size.width / 1.7,
              child: Lottie.asset('assets/animations/register.json',
                  fit: BoxFit.cover,width: double.infinity, height: double.infinity),
            ),
          ),
          Gap(size.height / 25),
          Text("Register",
              style: GoogleFonts.nunitoSans(
                  fontSize: size.height / 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.appPrimaryColor)),
          Gap(size.height /40),
          SizedBox(
            width: size.width,
            child: Text(
              "Assalomu Alaykum! Davom Etish Uchun Hisob Yarating ",
              style: GoogleFonts.nunitoSans(
                  fontSize: size.height / 35, color: AppColors.appPrimaryColor),
            ),
          ),
          Gap(size.height / 35),
          SizedBox(
              width: size.width,
              height: size.height / 10,
              child: LogRegTextField(
                  controller: _email,
                  prefIcon: Padding(
                    padding: EdgeInsets.only(left: size.width / 40),
                    child: Icon(
                      Icons.email_outlined,
                      size: size.width / 20,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: size.width / 40),
                    child: Icon(CupertinoIcons.person, size: size.width / 20),
                  ),
                  labelText: "  Email")),
          Gap(size.height / 30),
          SizedBox(
              width: size.width,
              height: size.height / 10,
              child: LogRegTextField(
                  controller: _email,
                  prefIcon: Padding(
                    padding: EdgeInsets.only(left: size.width / 40),
                    child: Icon(
                      Icons.person,
                      size: size.width / 20,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: size.width / 40),
                    child: Icon(CupertinoIcons.checkmark_alt_circle,
                        size: size.width / 20),
                  ),
                  labelText: "  Username")),
          Gap(size.height / 30),
          SizedBox(
            width: size.width,
            height: size.height / 10,
            child: LogRegTextField(
              controller: _password,
              prefIcon: Padding(
                padding: EdgeInsets.only(left: size.width / 40),
                child: Icon(Icons.lock, size: size.width / 20),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: size.width / 40),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      togglePass = !togglePass;
                    });
                  },
                  icon: Icon(
                      togglePass
                          ? CupertinoIcons.eye
                          : CupertinoIcons.eye_slash,
                      size: size.width / 20),
                ),
              ),
              labelText: "  Parol",
              obscure: togglePass,
            ),
          ),
          Gap(size.height / 30),
          SizedBox(
            width: size.width,
            height: size.height / 10,
            child: _numberTextField(),
          ),
          Gap(size.height / 30),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                color: Colors.white,
              ),
              child: null,
            ),
          ),
          Gap(size.height / 20),
          SizedBox(
            width: size.width,
            height: size.height / 15,
            child: AppButton(
              text: 'Register',
              onPressed: () {},
            ),
          ),
          Gap(size.height / 30),
          SizedBox(
            width: size.width / 1.1,
            child: Text(
              " Registratsiya Orqali Qabul Qilinadi ",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunitoSans(
                  fontSize: size.height / 35, color: AppColors.appPrimaryColor),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Text(
                "Ommaviy Offerta",
                style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: size.height / 35,
                    color: Colors.indigoAccent),
              ),
            ),
          ),
          Gap(size.height / 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hisobingiz bormi?  ",
                style: GoogleFonts.nunitoSans(
                    fontSize: size.height / 35,
                    color: AppColors.appPrimaryColor),
              ),
              InkWell(
                onTap: widget.onFlip,
                child: Text(
                  "Login",
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height / 35,
                      color: Colors.indigoAccent),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _numberTextField() {
    var size = MediaQuery
        .of(context)
        .size;
    final double radius = size.width * 0.1;
    return TextField(
      controller: _phoneNumber,
      inputFormatters: [mask],
      cursorColor: Colors.black,
      obscureText: false,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "  Telefon Raqam",
        prefixText: "+998  ",
        prefixStyle: GoogleFonts.nunitoSans(
            color: AppColors.appPrimaryColor, fontSize: size.height / 35),
        labelStyle: GoogleFonts.nunitoSans(
            color: AppColors.appPrimaryColor, fontSize: size.height / 35),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: size.width / 40),
          child: Icon(CupertinoIcons.phone, size: size.width / 20),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius * 2),
            borderSide: BorderSide(color: Colors.grey.shade500)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius * 2),
            borderSide: BorderSide(color: Colors.grey.shade100)),
      ),
    );
  }
}
