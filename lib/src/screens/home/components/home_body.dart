import 'package:flutter/material.dart';
import 'package:share_near_v2/src/models/Products.dart';
import 'package:share_near_v2/src/screens/home/components/section_title.dart';
import '../../../size_config.dart';
import 'cashback_banner.dart';
import 'categories.dart';
import 'home_screen_header.dart';
import '../../../components/product_card.dart';
import 'special_offer_card.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.screenWidth * 0.04,
                  ),
                  const HomeScreenHeader(),
                  SizedBox(
                    height: SizeConfig.screenWidth * 0.04,
                  ),
                  const CashbackBanner(),
                  SizedBox(
                    height: SizeConfig.screenWidth * 0.04,
                  ),
                  const Categories(),
                  SizedBox(
                    height: SizeConfig.screenWidth * 0.04,
                  ),
                  SectionTitle(
                    text: 'Special for you',
                    press: () {},
                  ),
                  SizedBox(
                    height: SizeConfig.screenWidth * 0.04,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SpecialOfferCard(
                          category: 'Smartphone',
                          image: 'assets/images/Image Banner 2.png',
                          noOfBrands: 18,
                          press: () {},
                        ),
                        SpecialOfferCard(
                          category: 'Fashion',
                          image: 'assets/images/Image Banner 3.png',
                          noOfBrands: 5,
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenWidth * 0.04,
                  ),
                  SectionTitle(
                    text: 'Popular products',
                    press: () {},
                  ),
                  SizedBox(
                    height: SizeConfig.screenWidth * 0.04,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          demoProducts.length,
                          (index) => ProductCard(
                            product: demoProducts[index],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenWidth * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
