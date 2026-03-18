import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vertex/core/theme/colors.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
  });
  final String title;
  final void Function() onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0.r)),
        ),
        elevation: const WidgetStatePropertyAll(8),
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
        shadowColor: const WidgetStatePropertyAll(Color(0x802563EB)),
        fixedSize: WidgetStatePropertyAll(Size(screenWidth, 40.0.h)),
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? ColorsManager.mainBlue,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.0.sp,
          fontWeight: FontWeight.bold,
          // color: Colors.white
        ),
      ),
    );
  }
}
