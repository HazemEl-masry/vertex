import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:vertex/core/theme/colors.dart';
import 'package:vertex/core/widgets/custom_main_button.dart';
import 'package:vertex/core/widgets/social_media_section.dart';
import 'package:vertex/features/auth/presentation/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.only(
          top: screenHeight * 0.3,
          left: 15.0.w,
          right: 15.0.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 22.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0.h),
              Text(
                "Join Vertex and start your journey today.",
                style: TextStyle(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20.0.h),
              const RegisterForm(),
              SizedBox(height: 20.0.h),
              CustomMainButton(
                title: "Register",
                backgroundColor: ColorsManager.mainGreen,
                onPressed: () {},
              ),
              SizedBox(height: 10.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () => context.pop(),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.0.h),
              const Row(
                children: [
                  Expanded(child: Divider(endIndent: 5, indent: 50)),
                  Text("OR"),
                  Expanded(child: Divider(indent: 5, endIndent: 50)),
                ],
              ),
              SizedBox(height: 10.0.h),
              const SocialMediaSection(),
            ],
          ),
        ),
      ),
    );
  }
}
