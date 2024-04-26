import 'package:flutter/material.dart';
import 'package:reuseify_app/core/common/widgets/primary_button.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';
import 'package:reuseify_app/features/auth/presentation/pages/login_page.dart';
import 'package:reuseify_app/features/auth/presentation/widgets/onboarding_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  static final route =
      MaterialPageRoute(builder: (context) => const OnboardingPage());

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currIndex = 0;
  final List<Widget> _onboardingWidgets = [
    OnboardingWidget(
      title: 'Welcome to ReUseify',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin.',
      widget: Image.asset("assets/images/sustain-1.jpg"),
    ),
    OnboardingWidget(
      title: 'Sustainable Living',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin.',
      widget: Image.asset("assets/images/sustain-1.jpg"),
    ),
    OnboardingWidget(
      title: 'Eco-Friendly Products',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin.',
      widget: Image.asset("assets/images/sustain-1.jpg"),
    ),
  ];

  void navigateToLoginScreen() {
    Navigator.of(context).push(LoginPage.route());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider(
            items: _onboardingWidgets,
            options: CarouselOptions(
                height: double.infinity,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enlargeFactor: 0,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    currIndex = index;
                  });
                }),
          ),
          Positioned(
            top: 50,
            child: AnimatedSmoothIndicator(
              activeIndex: currIndex,
              count: 3,
              onDotClicked: (index) {
                setState(() {
                  currIndex = index;
                });
              },
              effect: const WormEffect(
                dotColor: AppPallete.tertiaryColor,
                spacing: 4,
                dotHeight: 4,
                dotWidth: 25,
                activeDotColor: AppPallete.primaryColor,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: PrimaryButton(
              onPressed: navigateToLoginScreen,
              enableLoading: true,
              child: const Text("Sign Up with Email"),
            ),
          ),
        ],
      ),
    );
  }
}
