import 'package:reuseify_app/core/common/entities/onboarding_data.dart';

class Constants {
  static List<OnboardingData> onboardingData = [
    const OnboardingData(
        title: 'Welcome to ReUseify',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin.',
        image: "assets/images/onboard-1.png"),
    const OnboardingData(
      title: 'Sustainable Living',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin.',
      image: "assets/images/onboard-2.png",
    ),
    const OnboardingData(
      title: 'Eco-Friendly Products',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin.',
      image: "assets/images/onboard-3.png",
    ),
    const OnboardingData(
      title: 'Recycle and Reuse',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin.',
      image: "assets/images/onboard-4.png",
    ),
  ];
}
