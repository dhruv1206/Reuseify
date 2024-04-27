import 'package:flutter/material.dart';
import 'package:reuseify_app/core/common/widgets/loader.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';

class PrimaryButton extends StatelessWidget {
  final Widget? child;
  final Function()? onPressed;
  final bool loading;
  final double? height;
  final double? width;
  const PrimaryButton(
      {super.key,
      this.child,
      this.onPressed,
      this.loading = false,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 60,
      width: width ?? MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppPallete.secondaryColor,
          backgroundColor: AppPallete.primaryColor,
          padding: EdgeInsets.all(loading ? 10 : 18),
        ),
        onPressed: onPressed != null
            ? () async {
                if (loading) {
                  return;
                }
                await onPressed!();
              }
            : null,
        child: AnimatedSwitcher(
          switchInCurve: Curves.easeIn,
          switchOutCurve: Curves.easeOut,
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (child, animation) {
            return Stack(
              children: [
                ScaleTransition(
                  scale: animation,
                  child: FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                ),
              ],
            );
          },
          child: loading
              ? FittedBox(
                  child: Transform.scale(scale: 0.8, child: const Loader()))
              : child!,
        ),
      ),
    );
  }
}
