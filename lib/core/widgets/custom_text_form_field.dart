import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.prefixIcon,
    this.obscureText,
    required this.controller,
    required this.validator,
    required this.keyboardType,
  });
  final String hintText;
  final Widget? suffixIcon;
  final Widget prefixIcon;
  final bool? obscureText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      validator: (value) {
        return validator(value);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0.r)),
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
