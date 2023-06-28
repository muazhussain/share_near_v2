import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/Products.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
  });

  final double width;
  final double aspectRatio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(width),
            child: AspectRatio(
              aspectRatio: aspectRatio,
              child: Container(
                padding: EdgeInsets.all(
                  getProportionateScreenWidth(20),
                ),
                decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(width),
            child: Column(
              children: [
                Text(
                  '${product.title}\n',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  maxLines: 2,
                ),
                Text(
                  '${product.price}',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
