import 'package:flutter/material.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';

class AuthField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  final String? Function(String?)? validator;
  const AuthField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
    this.validator,
  });

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  void togglePasswordView() {
    setState(() {
      _passwordHidden = !_passwordHidden;
    });
  }

  bool _passwordHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.isObscureText
            ? Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                  onPressed: togglePasswordView,
                  icon: _passwordHidden
                      ? const Icon(
                          Icons.visibility,
                          color: AppPallete.tertiaryColor,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: AppPallete.tertiaryColor,
                        ),
                ),
              )
            : null,
      ),
      validator: widget.validator ??
          (value) {
            if (value!.isEmpty) {
              return "${widget.hintText} is missing!";
            }
            return null;
          },
      obscureText: widget.isObscureText && _passwordHidden,
    );
  }
}
