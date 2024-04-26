import 'package:flutter/material.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';

class Loader extends StatelessWidget {
  final Color? color;
  const Loader({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color ?? AppPallete.secondaryColor,
      ),
    );
  }
}
