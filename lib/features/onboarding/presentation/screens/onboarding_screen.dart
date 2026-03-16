import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:vertex/features/onboarding/presentation/widgets/dots_widget.dart';
import 'package:vertex/features/onboarding/presentation/widgets/onboarding_page_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(const AssetImage("assets/images/onboarding_1.webp"), context);
    precacheImage(const AssetImage("assets/images/onboarding_2.webp"), context);
    precacheImage(
      const AssetImage("assets/images/onboarding_3.1.webp"),
      context,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
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
            child: DotsWidget(currentIndex: currentIndex),
          ),
          Positioned(
            bottom: 40.h,
            right: 24.w,
            child: ElevatedButton(
              onPressed: () {
                if (currentIndex < 2) {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  context.go("/LoginScreen");
                }
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    currentIndex == 2 ? "Finish" : "Next",
                    style: TextStyle(fontSize: 15.0.sp),
                  ),
                  SizedBox(width: 8.w),
                  Icon(Icons.arrow_forward_ios, size: 16.sp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
