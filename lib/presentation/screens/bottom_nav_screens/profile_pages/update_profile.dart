import 'package:firebase_phone_selling_app/constants/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/navigators.dart';
import '../../../widgets/buttons.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  var _username = TextEditingController(text: "Usernasme");
  var _password = TextEditingController(text: "Password");
  var _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainTheme(context),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            navPop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: Text(
          "Profilni Yangilash",
          style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold),
        ),
      ),
      body: _updateSection(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(size.width / 25),
        child: SizedBox(
          height: size.height / 15,
          width: double.infinity,
          child: AppButton(
            text: 'Saqlash',
            onPressed: () {
              navPop(context);
            },
          ),
        ),
      ),
    );
  }

  _updateSection() {
    var size = MediaQuery.of(context).size;
    final double radius = size.width * 0.02;
    return SingleChildScrollView(
      padding: EdgeInsets.all(size.width / 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _updateDataTextField(_username, labelText: "${_username.text}"),
          _updateDataTextField(_password, labelText: "${_password.text}")
        ],
      ),
    );
  }

  _updateDataTextField(TextEditingController controller,
      {String labelText = "Label yo'q"}) {
    var size = MediaQuery.of(context).size;
    final double radius = size.width * 0.02;
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.all(20),
        labelText: labelText,
        labelStyle: GoogleFonts.nunitoSans(
            color: AppColors.appPrimaryColor, fontSize: size.height / 45),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius * 2),
          borderSide: BorderSide(color: Colors.grey.shade900),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius * 2),
            borderSide: BorderSide(color: Colors.grey.shade400)),
      ),
    );
  }
}
