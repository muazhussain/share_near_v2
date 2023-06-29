import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_near_v2/src/screens/product-details/product_details_screen.dart';
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
      home: const ProductDetailsScreen(),
    );
  }
}
