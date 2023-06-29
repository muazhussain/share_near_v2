import 'package:flutter/material.dart';
import 'package:share_near_v2/src/constants.dart';
import 'package:share_near_v2/src/models/Products.dart';
import 'package:share_near_v2/src/size_config.dart';

class ProductDetailsBody extends StatefulWidget {
  const ProductDetailsBody({super.key});

  @override
  State<ProductDetailsBody> createState() => _ProductDetailsBodyState();
}

class _ProductDetailsBodyState extends State<ProductDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return const ProductImages();
  }
}

class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
  });

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(demoProducts[0].images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              demoProducts.length,
              (index) => smallPreviewBuild(index),
            ),
          ],
        ),
      ],
    );
  }

  GestureDetector smallPreviewBuild(int index) {
    return GestureDetector(
      onTap: () {
        selectedImage = index;
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.all(
          getProportionateScreenHeight(8),
        ),
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color:
                  selectedImage == index ? primaryColor : Colors.transparent),
        ),
        child: Image.asset(demoProducts[0].images[index]),
      ),
    );
  }
}
