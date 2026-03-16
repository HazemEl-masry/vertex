import 'package:flutter/material.dart';
import 'package:vertex/features/onboarding/presentation/widgets/onboarding_page_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: const [
            OnboardingPageWidget(
              image: 'assets/images/onboarding_1.jpg',
              title: 'Discover Your Dream\nDestination',
              subTitle:
                  'Explore thousands of breathtaking places\naround the globe curated just for you.',
            ),
            OnboardingPageWidget(
              image: 'assets/images/onboarding_2.jpg',
              title: 'Book Flights & Hotels\nEasily',
              subTitle:
                  'Find the best deals on flights, premium\nhotels, and local transportation all in one\nplace.',
            ),
            OnboardingPageWidget(
              image: 'assets/images/onboarding_3.jpg',
              title: 'Plan Your Hajj & Umrah',
              subTitle:
                  'Exclusive trusted packages designed to give\nyou peace of mind during your spiritual\njourney.',
            ),
          ],
        ),
      ),
    );
  }
}
