import 'package:flutter/material.dart';
import 'package:share_near_v2/src/screens/sign-in/sing_in_screen.dart';
import 'package:share_near_v2/src/screens/splash/splash_screen.dart';
import 'src/constants.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ShareNearApp());
}

class ShareNearApp extends StatelessWidget {
  const ShareNearApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: textColor),
          bodyMedium: TextStyle(color: textColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SignInScreen(),
    );
  }
}
