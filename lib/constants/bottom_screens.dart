import 'package:firebase_phone_selling_app/presentation/screens/bottom_nav_screens/android_screen.dart';
import 'package:firebase_phone_selling_app/presentation/screens/bottom_nav_screens/apple_screen.dart';
import 'package:firebase_phone_selling_app/presentation/screens/bottom_nav_screens/global_chat.dart';
import 'package:firebase_phone_selling_app/presentation/screens/bottom_nav_screens/profile_pages/profile.dart';
import 'package:flutter/material.dart';

final List<Widget> bottomScreens = [
  Center(child: GlobalChat()),
  Center(child: AndroidScreen()),
  Center(child: ApplePage()),
  Center(child: Profile())];
