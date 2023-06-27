import 'package:flutter/material.dart';
import '../constants.dart';
import 'text_form_suffix_icon.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    required this.svgIcon,
    this.obscure,
    this.textInputType,
  });

  final String label;
  final String hintText;
  final String svgIcon;
  final bool? obscure;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType ?? TextInputType.text,
      obscureText: obscure ?? false,
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(color: textColor),
        ),
        hintText: hintText,
        suffixIcon: TextFormSuffixIcon(
          svgIcon: svgIcon,
        ),
      ),
    );
  }
}
