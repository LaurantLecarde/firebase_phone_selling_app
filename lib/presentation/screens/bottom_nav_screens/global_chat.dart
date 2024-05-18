import 'package:flutter/material.dart';

import '../../../constants/themes/colors.dart';

class GlobalChat extends StatefulWidget {
  const GlobalChat({super.key});

  @override
  State<GlobalChat> createState() => _GlobalChatState();
}

class _GlobalChatState extends State<GlobalChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: mainTheme(context),
      body: Center(
        child: Text("Global chat"),
      ),
    );
  }
}
