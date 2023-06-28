import 'package:flutter/material.dart';
import '../../../components/app_text_form_field.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const AppTextFormField(
              label: 'Email',
              hintText: 'Enter your email',
              svgIcon: 'assets/icons/Mail.svg'),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          const AppTextFormField(
              label: 'Password',
              hintText: 'Enter your password',
              svgIcon: 'assets/icons/Lock.svg'),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          const AppTextFormField(
              label: 'Confirm Password',
              hintText: 'Re-enter your password',
              svgIcon: 'assets/icons/Lock.svg'),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          DefaultButton(
            text: 'Continue',
            press: () {},
          ),
        ],
      ),
    );
  }
}
