import 'package:flutter/material.dart';
import 'package:share_near_v2/src/components/default_button.dart';
import '../../../constants.dart';
import '../../../models/Products.dart';
import '../../../size_config.dart';

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
        Container(
          margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
          padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              Text(
                demoProducts[0].title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(16)),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: demoProducts[0].isFavourite
                      ? const Icon(Icons.favorite)
                      : const Icon(Icons.favorite_outline),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.04,
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(120),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Text(
                            demoProducts[0].description,
                            maxLines: 3,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.04,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: DefaultButton(
                  text: 'Request to rent',
                  press: () {},
                ),
              ),
            ],
          ),
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
            color: selectedImage == index ? primaryColor : Colors.transparent,
          ),
        ),
        child: Image.asset(demoProducts[0].images[index]),
      ),
    );
  }
}
