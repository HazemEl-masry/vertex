import 'package:go_router/go_router.dart';
import 'package:vertex/features/auth/presentation/screens/login_screen.dart';
import 'package:vertex/features/auth/presentation/screens/register_screen.dart';
import 'package:vertex/features/onboarding/presentation/screens/onboarding_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
      path: '/LoginScreen',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/RegisterScreen',
      builder: (context, state) => RegisterScreen(),
    ),
  ],
);
