import 'package:flutter/material.dart';
import '../../../components/app_text_form_field.dart';
import '../../../components/default_button.dart';
import '../../../components/no_account_text.dart';
import '../../../components/social_card.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formkey = GlobalKey<FormState>();
  bool remeberMe = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          const AppTextFormField(
            label: 'Email',
            hintText: 'Enter your email',
            textInputType: TextInputType.emailAddress,
            svgIcon: 'assets/icons/Mail.svg',
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          const AppTextFormField(
            label: 'Password',
            hintText: 'Enter your password',
            obscure: true,
            svgIcon: 'assets/icons/Lock.svg',
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Row(
            children: [
              Checkbox(
                value: false,
                activeColor: remeberMe ? Colors.blue : textColor,
                onChanged: (value) {
                  remeberMe = value!;
                  setState(() {});
                },
              ),
              const Text('Remember me'),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forget password?',
                  style: TextStyle(color: textColor),
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          DefaultButton(text: 'Continue', press: () {}),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocalCard(
                icon: "assets/icons/google-icon.svg",
                press: () {},
              ),
              SocalCard(
                icon: "assets/icons/facebook-2.svg",
                press: () {},
              ),
              SocalCard(
                icon: "assets/icons/twitter.svg",
                press: () {},
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          const NoAccountText(),
        ],
      ),
    );
  }
}
