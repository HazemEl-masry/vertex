import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState());

  final PageController pageController = PageController();

  void nextPage() {
    final nextIndex = state.currentIndex + 1;
    pageController.animateToPage(
      nextIndex,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    emit(state.copyWith(currentIndex: nextIndex));
  }

  void onPageChanged(int index) => emit(state.copyWith(currentIndex: index));

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
