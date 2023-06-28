import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'sign_in_form.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Sign in with Email & Password\nor continue with social media',
                textAlign: TextAlign.center,
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: SignInForm(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
