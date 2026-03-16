class OnboardingState {
  final int currentIndex;

  const OnboardingState({this.currentIndex = 0});

  bool get isLastPage => currentIndex == 2;

  OnboardingState copyWith({int? currentIndex}) =>
      OnboardingState(currentIndex: currentIndex ?? this.currentIndex);
}
