import 'package:flutter/material.dart';
import 'package:share_near_v2/src/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.text, required this.press});

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: press,
          child: const Text(
            'See more',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
