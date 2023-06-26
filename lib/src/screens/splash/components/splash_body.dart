import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'splash_content.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  List<Map<String, String>> splashData = [
    {
      'text': 'Share Things Share Happiness',
      'imagePath': 'assets/images/splash_1.png'
    },
    {
      'text': 'Share Things Share Happiness',
      'imagePath': 'assets/images/splash_2.png'
    },
    {
      'text': 'Share Things Share Happiness',
      'imagePath': 'assets/images/splash_3.png'
    },
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            const Spacer(),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  currentPage = value;
                  setState(() {});
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]['text']!,
                  imagePath: splashData[index]['imagePath']!,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index),
                      ),
                    ),
                    const Spacer(flex: 3),
                    DefaultButton(
                      press: () {},
                      text: 'Continue',
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor : const Color(0xFfD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
