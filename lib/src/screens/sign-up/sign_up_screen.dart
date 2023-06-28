import 'package:flutter/material.dart';
import 'package:share_near_v2/src/screens/sign-up/componenets/sign_up_body.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign up',
          style: TextStyle(color: Colors.black),
        ),
        leading: const BackButton(color: Colors.black),
      ),
      body: const SignUpBody(),
    );
  }
}
