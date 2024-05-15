import 'package:firebase_phone_selling_app/constants/colors.dart';
import 'package:firebase_phone_selling_app/constants/navigators.dart';
import 'package:firebase_phone_selling_app/presentation/screens/profile_pages/profile.dart';
import 'package:firebase_phone_selling_app/presentation/widgets/buttons.dart';
import 'package:firebase_phone_selling_app/presentation/widgets/text_fields/log_reg_textfld.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback onFlip;
  const LoginPage({super.key, required this.onFlip});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  bool togglePass = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainTheme(context),
      body: _loginSection(),
    );
  }

  _loginSection() {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      padding: EdgeInsets.all(size.width / 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              height: size.height / 3.5,
              width: size.width / 1.7,
              child: Lottie.asset('assets/animations/login_phone.json',fit: BoxFit.cover),
            ),
          ),
          Gap(size.height / 25),
          Text("Login",
              style: GoogleFonts.nunitoSans(
                  fontSize: size.height / 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.appPrimaryColor)),
          Gap(size.height / 40),
          SizedBox(
            width: size.width,
            child: Text(
              "Iltimos, Davom Etish Uchun Login Qiling! ",
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
          Gap(size.height / 25),
          SizedBox(
            width: size.width,
            height: size.height / 15,
            child: AppButton(
              text: 'Login',
              onPressed: () {
                navPush(context, const Profile());
              },
            ),
          ),
          Gap(size.height / 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Yangimisiz?  ",
                style: GoogleFonts.nunitoSans(
                    fontSize: size.height / 35,
                    color: AppColors.appPrimaryColor),
              ),
              InkWell(
                onTap: widget.onFlip,
                child: Text(
                  "Register",
                  style: GoogleFonts.nunitoSans(
                    fontWeight:FontWeight.bold,
                      fontSize: size.height / 35, color: Colors.indigoAccent),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
