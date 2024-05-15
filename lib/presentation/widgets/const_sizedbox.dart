import 'package:flutter/cupertino.dart';

class ConstTextSizedBox extends StatelessWidget {
  const ConstTextSizedBox({super.key,required this.child});

 final Widget child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: child,
    );
  }
}
