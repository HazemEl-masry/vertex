import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:vertex/features/onboarding/presentation/cubits/onboarding_cubit/onboarding_cubit.dart';
import 'package:vertex/features/onboarding/presentation/cubits/onboarding_cubit/onboarding_state.dart';
import 'package:vertex/features/onboarding/presentation/widgets/dots_widget.dart';
import 'package:vertex/features/onboarding/presentation/widgets/onboarding_page_widget.dart';

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
              PageView(
                controller: cubit.pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: cubit.onPageChanged,
                children: const [
                  OnboardingPageWidget(
                    image: 'assets/images/onboarding_1.webp',
                    title: 'Discover Your Dream\nDestination',
                    subTitle:
                        'Explore thousands of breathtaking places\naround the globe curated just for you.',
                  ),
                  OnboardingPageWidget(
                    image: 'assets/images/onboarding_2.webp',
                    title: 'Book Flights & Hotels\nEasily',
                    subTitle:
                        'Find the best deals on flights, premium\nhotels, and local transportation all in one\nplace.',
                  ),
                  OnboardingPageWidget(
                    image: 'assets/images/onboarding_3.1.webp',
                    title: 'Plan Your Hajj & Umrah',
                    subTitle:
                        'Exclusive trusted packages designed to give\nyou peace of mind during your spiritual\njourney.',
                  ),
                ],
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
