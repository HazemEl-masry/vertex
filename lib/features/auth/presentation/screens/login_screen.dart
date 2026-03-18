import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:vertex/core/widgets/custom_main_button.dart';
import 'package:vertex/core/widgets/social_media_section.dart';
import 'package:vertex/features/auth/presentation/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                "Welcome Back",
                style: TextStyle(
                  fontSize: 22.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0.h),
              Text(
                "Sign in to continue planning your next great\nadventure.",
                style: TextStyle(
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20.0.h),
              const LoginForm(),
              SizedBox(height: 5.0.h),
              Align(
                alignment: AlignmentGeometry.topEnd,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?"),
                ),
              ),
              SizedBox(height: 10.0.h),
              CustomMainButton(title: "Login", onPressed: () {}),
              SizedBox(height: 10.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () => context.push("/RegisterScreen"),
                    child: const Text(
                      "Register",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0.h),
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
