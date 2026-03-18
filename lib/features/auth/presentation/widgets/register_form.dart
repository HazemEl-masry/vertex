import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vertex/core/widgets/custom_text_form_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            hintText: "username",
            prefixIcon: Transform.scale(
              scale: 0.7,
              child: SvgPicture.asset(
                "assets/svg/user_svg.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            controller: TextEditingController(),
            validator: (value) {},
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 10.0.h),
          CustomTextFormField(
            hintText: "Email",
            prefixIcon: const Icon(Icons.email,size: 18),
            controller: TextEditingController(),
            validator: (value) {},
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 10.0.h),
          CustomTextFormField(
            hintText: "Password",
            prefixIcon: Transform.scale(
              scale: 0.7,
              child: SvgPicture.asset(
                "assets/svg/lock_svg.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            controller: TextEditingController(),
            validator: (value) {},
            keyboardType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 10.0.h),
          CustomTextFormField(
            hintText: "Confirm password",
            prefixIcon: Transform.scale(
              scale: 0.7,
              child: SvgPicture.asset(
                "assets/svg/lock_svg.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            controller: TextEditingController(),
            validator: (value) {},
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
