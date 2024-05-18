import 'package:flutter/material.dart';

import '../../../constants/themes/colors.dart';

class ApplePage extends StatefulWidget {
  const ApplePage({super.key});

  @override
  State<ApplePage> createState() => _ApplePageState();
}

class _ApplePageState extends State<ApplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: mainTheme(context),
      body: Center(
        child: Text("Apple"),
      ),
    );
  }
}
