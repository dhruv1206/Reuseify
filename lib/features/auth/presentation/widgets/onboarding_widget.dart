import 'package:flutter/material.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String description;
  final Widget? widget;
  const OnboardingWidget(
      {super.key, required this.title, required this.description, this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppPallete.secondaryColor,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: AppPallete.tertiaryColor,
            ),
          ),
          const Spacer(),
          widget ?? const SizedBox.shrink(),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
