import 'package:flutter/material.dart';
import 'package:reuseify_app/core/common/widgets/loader.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';

class PrimaryButton extends StatefulWidget {
  final Widget? child;
  final Function()? onPressed;
  final bool enableLoading;
  final double? height;
  final double? width;
  const PrimaryButton(
      {super.key,
      this.child,
      this.onPressed,
      this.enableLoading = false,
      this.height,
      this.width});

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _loading = false;

  void toggleLoading() {
    setState(() {
      _loading = !_loading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 60,
      width: widget.width ?? MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppPallete.secondaryColor,
          backgroundColor: AppPallete.primaryColor,
          padding: EdgeInsets.all(_loading ? 10 : 18),
        ),
        onPressed: widget.onPressed != null
            ? () async {
                if (_loading) {
                  return;
                }
                if (widget.enableLoading) {
                  toggleLoading();
                }
                await widget.onPressed!();
                if (widget.enableLoading) {
                  toggleLoading();
                }
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
          child: _loading
              ? FittedBox(
                  child: Transform.scale(scale: 0.8, child: const Loader()))
              : widget.child!,
        ),
      ),
    );
  }
}
