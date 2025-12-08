import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double width;

  const AppLogo({super.key, this.width = 124});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/instagram.png', width: width);
  }
}
