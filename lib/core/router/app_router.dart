import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vertex/features/auth/presentation/screens/login_screen.dart';
import 'package:vertex/features/auth/presentation/screens/register_screen.dart';
import 'package:vertex/features/onboarding/presentation/cubits/onboarding_cubit/onboarding_cubit.dart';
import 'package:vertex/features/onboarding/presentation/screens/onboarding_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => BlocProvider(
        create: (context) => OnboardingCubit(),
        child: const OnboardingScreen(),
      ),
    ),
    GoRoute(
      path: '/LoginScreen',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/RegisterScreen',
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
