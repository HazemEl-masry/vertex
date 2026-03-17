import 'package:flutter/material.dart';
import 'package:vertex/features/onboarding/presentation/widgets/onboarding_page_widget.dart';

class OnboardingPages extends StatelessWidget {
  const OnboardingPages({
    super.key,
    required this.controller,
    required this.onPageChanged,
  });
  final PageController controller;
  final void Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: onPageChanged,
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
    );
  }
}
