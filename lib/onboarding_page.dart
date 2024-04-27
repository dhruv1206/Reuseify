import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reuseify_app/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:reuseify_app/core/common/widgets/loader.dart';
import 'package:reuseify_app/core/common/widgets/primary_button.dart';
import 'package:reuseify_app/core/constants/constants.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';
import 'package:reuseify_app/core/utils/show_snackbar.dart';
import 'package:reuseify_app/features/auth/presentation/widgets/onboarding_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'features/auth/presentation/bloc/auth_bloc.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  static final route =
      MaterialPageRoute(builder: (context) => const OnboardingPage());

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currIndex = 0;
  final List<Widget> _onboardingWidgets = Constants.onboardingData
      .map(
        (e) => OnboardingWidget(
          title: e.title,
          description: e.description,
          widget: Image.asset(
            e.image,
            fit: BoxFit.cover,
            height: 300,
            width: 300,
          ),
        ),
      )
      .toList();

  void navigateToLoginScreen() {
    context.read<AppUserCubit>().onboarded();
    // Navigator.of(context).push(LoginPage.route());
  }

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            showSnackBar(context, state.message);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Loader();
          }
          return Stack(
            alignment: Alignment.center,
            children: [
              PageView(
                controller: _pageController,
                children: _onboardingWidgets,
                onPageChanged: (
                  index,
                ) {
                  setState(() {
                    currIndex = index;
                  });
                },
              ),
              Positioned(
                top: 50,
                child: AnimatedSmoothIndicator(
                  activeIndex: currIndex,
                  count: _onboardingWidgets.length,
                  onDotClicked: (index) {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
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
                  child: const Text("Sign Up with Email"),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
