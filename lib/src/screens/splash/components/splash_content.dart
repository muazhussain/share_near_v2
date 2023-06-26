import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.text,
    required this.imagePath,
  });

  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Share Near',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          imagePath,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
