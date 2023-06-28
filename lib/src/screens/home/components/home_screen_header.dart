import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'icon_button_with_counter.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: SizeConfig.screenWidth * 0.6,
          height: 50,
          decoration: BoxDecoration(
            color: secondaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            onChanged: (value) {
              //
            },
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: 'Search Product',
              prefixIcon: const Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9),
              ),
            ),
          ),
        ),
        IconButtonWithCounter(
          counter: 1,
          svgSrc: 'assets/icons/Cart Icon.svg',
          press: () {},
        ),
        IconButtonWithCounter(
          counter: 3,
          svgSrc: 'assets/icons/Bell.svg',
          press: () {},
        ),
      ],
    );
  }
}
