import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:vertex/features/onboarding/presentation/cubits/onboarding_cubit/onboarding_cubit.dart';
import 'package:vertex/features/onboarding/presentation/cubits/onboarding_cubit/onboarding_state.dart';
import 'package:vertex/features/onboarding/presentation/widgets/dots_widget.dart';
import 'package:vertex/features/onboarding/presentation/widgets/onboarding_pages.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final cubit = context.read<OnboardingCubit>();

    return Scaffold(
      body: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          return Stack(
            children: [
              OnboardingPages(
                controller: cubit.pageController,
                onPageChanged: cubit.onPageChanged,
              ),
              Positioned(
                top: screenHeight * 0.55,
                left: 0,
                right: 0,
                child: DotsWidget(currentIndex: state.currentIndex),
              ),
              Positioned(
                bottom: 40.h,
                right: 24.w,
                child: ElevatedButton(
                  onPressed: () => state.isLastPage
                      ? context.go('/LoginScreen')
                      : cubit.nextPage(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        state.isLastPage ? 'Finish' : 'Next',
                        style: TextStyle(fontSize: 15.0.sp),
                      ),
                      SizedBox(width: 8.w),
                      Icon(Icons.arrow_forward_ios, size: 16.sp),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
