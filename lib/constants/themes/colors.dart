import 'package:flutter/material.dart';

class AppColors {
  static Color appPrimaryColor = const Color(0xff1b374d);
}

mainTheme(context) {
  final background = Theme.of(context).colorScheme.surface;
  return background;
}

