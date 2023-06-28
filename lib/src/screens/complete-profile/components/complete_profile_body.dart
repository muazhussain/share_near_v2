import 'package:flutter/material.dart';

import '../../../components/app_text_form_field.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'Complete Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Complete your profile\'s details',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Form(
                child: Column(
                  children: [
                    const AppTextFormField(
                        label: 'Full Name',
                        hintText: 'Enter your full name',
                        svgIcon: 'assets/icons/User.svg'),
                    SizedBox(height: SizeConfig.screenHeight * 0.04),
                    const AppTextFormField(
                        label: 'Phone',
                        hintText: 'Enter your phone number',
                        svgIcon: 'assets/icons/Phone.svg'),
                    SizedBox(height: SizeConfig.screenHeight * 0.04),
                    const AppTextFormField(
                        label: 'NID Number',
                        hintText: 'Re-enter your password',
                        svgIcon: 'assets/icons/nid.svg'),
                    SizedBox(height: SizeConfig.screenHeight * 0.04),
                    DefaultButton(
                      text: 'Continue',
                      press: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
