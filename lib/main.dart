import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/screens/sign-in/sing_in_screen.dart';
import 'src/theme.dart';

void main() {
  runApp(const ShareNearApp());
}

class ShareNearApp extends StatelessWidget {
  const ShareNearApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const SignInScreen(),
    );
  }
}
