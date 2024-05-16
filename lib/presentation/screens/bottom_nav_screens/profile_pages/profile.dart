import 'package:firebase_phone_selling_app/constants/colors.dart';
import 'package:firebase_phone_selling_app/constants/navigators.dart';
import 'package:firebase_phone_selling_app/presentation/screens/bottom_nav_screens/profile_pages/update_profile.dart';import 'package:firebase_phone_selling_app/presentation/widgets/buttons.dart';
import 'package:firebase_phone_selling_app/presentation/widgets/const_sizedbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            navPop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Profil",
          style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: mainTheme(context),
      body: _profileSection(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(size.width / 25),
        child: SizedBox(
          height: size.height / 15,
          width: double.infinity,
          child: AppButton(
            text: 'Tahrirlash',
            onPressed: () {
              navPush(context, const UpdateProfile());
            },
          ),
        ),
      ),
    );
  }

  _profileSection() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.all(size.width / 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _imageSection(context),
          Gap(size.height / 25),
          Text("Profil",
              style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.bold, fontSize: size.height / 25)),
          _infoSection(),
          Gap(size.height / 35),
          Center(
            child: _logOutButton(),
          )
        ],
      ),
    );
  }

  _infoSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _infoBuilder(text: "Username"),
        _infoBuilder(
            text: "usernameasdfsadfsadfasdfadsfasdfsad@gmail.com",
            iconData: Icons.email_outlined),
        _infoBuilder(
            text: "+998 (91) 999-99-99", iconData: CupertinoIcons.phone),
        _infoBuilder(
            text: "Andijon Viloyati", iconData: Icons.holiday_village_outlined),
      ],
    );
  }

  _infoBuilder(
      {String text = "AAAAAAAA", IconData iconData = CupertinoIcons.person}) {
    var size = MediaQuery.of(context).size;
    final double radius = size.width * 0.02;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          padding: EdgeInsets.all(size.width / 30),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400, blurRadius: 2, spreadRadius: 2)
              ],
              borderRadius: BorderRadius.circular(radius * 2),
              color: const Color(0xfff4f6fa)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: size.height / 34,
              ),
              Gap(size.width / 50),
              Container(
                width: 1,
                color: Colors.grey,
                height: size.height / 25,
              ),
              Gap(size.width / 50),
              SizedBox(
                width: size.width / 1.5,
                child: Text(
                  text,
                  style: GoogleFonts.nunitoSans(
                      fontSize: size.height / 45, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ));
  }

  Widget _imageSection(context) {
    var size = MediaQuery.of(context).size;
    final double radius = size.width * 0.02;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: size.height / 3.3,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.black26, spreadRadius: 5, blurRadius: 5)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 110,
              width: 110,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26, spreadRadius: 5, blurRadius: 5)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/profile.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Gap(20),
            _titleText("Sardorbek", context),
            _subtitleText("caburo021990@gmail.com"),
          ],
        ),
      ),
    );
  }

  Widget _titleText(String title, context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.bold,
            fontSize: size.height / 30,
            color: Colors.black),
      ),
    );
  }

  Widget _subtitleText(String subTitle) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        subTitle,
        textAlign: TextAlign.center,
        style: GoogleFonts.nunitoSans(fontSize: 15, color: Colors.black),
      ),
    );
  }

  Widget _logOutButton() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: 150,
      height: 60,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.black26, spreadRadius: 5, blurRadius: 5)
        ],
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: Image.asset("assets/images/logout.png",
                  fit: BoxFit.cover, color: Colors.red),
            ),
            Text(
              "  CHIQISH",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.nunitoSans(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
