import 'package:flutter/material.dart';

class MyBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/background.jpg",
      fit: BoxFit.contain,
    );
  }
}
