import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_near_v2/src/screens/user-profile/user_profile_screen.dart';
import 'src/size_config.dart';
import 'src/theme.dart';

void main() {
  runApp(const ShareNearApp());
}

class ShareNearApp extends StatelessWidget {
  const ShareNearApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const UserProfileScreen(),
    );
  }
}
