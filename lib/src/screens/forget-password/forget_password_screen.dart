import 'package:flutter/material.dart';
import 'package:share_near_v2/src/components/app_text_form_field.dart';
import 'package:share_near_v2/src/components/default_button.dart';

import '../../components/no_account_text.dart';
import '../../size_config.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forget password',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: const BackButton(color: Colors.black),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Please enter your email and we will send \nyou a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        label: 'Email',
                        hintText: 'Enter your email',
                        svgIcon: 'assets/icons/Mail.svg',
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.06),
                      DefaultButton(
                        text: 'Continue',
                        press: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
