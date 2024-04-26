import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reuseify_app/core/common/widgets/loader.dart';
import 'package:reuseify_app/core/common/widgets/primary_button.dart';
import 'package:reuseify_app/core/network/http_status.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';
import 'package:reuseify_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:reuseify_app/features/auth/presentation/pages/signup_page.dart';
import 'package:reuseify_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:reuseify_app/home_screen.dart';

class LoginPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
  );
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!_emailRegExp.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: AppPallete.errorColor,
              ),
            );
            if (state.statusCode == HttpStatus.notFound) {
              Navigator.push(context, SignUpPage.route());
            }
          }
          if (state is AuthSuccess) {
            Navigator.of(context).pushAndRemoveUntil(
              HomeScreen.route(),
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Loader();
          }
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sign In.',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppPallete.secondaryColor,
                    ),
                  ),
                  const Spacer(),
                  AuthField(
                    hintText: 'Email',
                    controller: emailController,
                    validator: _validateEmail,
                  ),
                  const SizedBox(height: 15),
                  AuthField(
                    hintText: 'Password',
                    controller: passwordController,
                    isObscureText: true,
                  ),
                  const SizedBox(height: 20),
                  PrimaryButton(
                    child: const Text('Sign in'),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                              AuthLogin(
                                email: emailController.text,
                                password: passwordController.text,
                              ),
                            );
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, SignUpPage.route());
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: Theme.of(context).textTheme.titleMedium,
                        children: const [
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: AppPallete.tertiaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
