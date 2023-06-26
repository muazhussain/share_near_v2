import 'package:flutter/material.dart';
import 'package:share_near_v2/src/screens/splash/components/splash_body.dart';
import 'package:share_near_v2/src/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
