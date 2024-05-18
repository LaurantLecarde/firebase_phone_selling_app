import 'package:firebase_phone_selling_app/constants/themes/colors.dart';
import 'package:flutter/material.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme(context),
      body: _chatSection(),
    );
  }

//   _chatSection() {
//     var size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ListView.builder(itemBuilder: (context,index){
//         return ;
//       }),
//     );
//   }
// }

  _chatSection() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Container(
              height: 60,
              width: 100,
              color: Colors.red,
              child: null,
            ),
          ),Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Container(
              height: 60,
              width: 100,
              color: Colors.red,
              child: null,
            ),
          ),
        ],
      ),
    );
  }
}
