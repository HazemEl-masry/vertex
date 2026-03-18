import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vertex/core/widgets/custom_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            hintText: "Email address",
            keyboardType: TextInputType.emailAddress,
            prefixIcon: const Icon(Icons.email),
            controller: TextEditingController(),
            validator: (value) {},
          ),
          SizedBox(height: 20.0.h),
          CustomTextFormField(
            hintText: "Password",
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: SvgPicture.asset(
              "assets/svg/lock_svg.svg",
              fit: BoxFit.scaleDown,
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/eye_close_svg.svg"),
            ),
            controller: TextEditingController(),
            validator: (value) {},
          ),
        ],
      ),
    );
  }
}
