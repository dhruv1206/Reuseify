import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reuseify_app/core/common/widgets/primary_button.dart';
import 'package:reuseify_app/core/theme/app_pallete.dart';
import 'package:reuseify_app/features/auth/presentation/pages/login_page.dart';
import 'package:reuseify_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:reuseify_app/home_screen.dart';

import '../../../../core/common/widgets/loader.dart';
import '../bloc/auth_bloc.dart';

class SignUpPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      );
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: AppPallete.errorColor,
              ),
            );
          }
          if (state is AuthSuccess) {
            Navigator.of(context).pushAndRemoveUntil(
              HomeScreen.route(),
              (route) => false,
            );
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) return const Loader();
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Sign Up.',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppPallete.secondaryColor,
                    ),
                  ),
                  const Spacer(),
                  AuthField(
                    hintText: 'Name',
                    controller: nameController,
                  ),
                  const SizedBox(height: 15),
                  AuthField(
                    hintText: 'Email',
                    controller: emailController,
                  ),
                  const SizedBox(height: 15),
                  AuthField(
                    hintText: 'Password',
                    controller: passwordController,
                    isObscureText: true,
                  ),
                  const SizedBox(height: 20),
                  PrimaryButton(
                    child: const Text('Sign Up'),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                              AuthSignUp(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                                name: nameController.text.trim(),
                              ),
                            );
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, LoginPage.route());
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: Theme.of(context).textTheme.titleMedium,
                        children: const [
                          TextSpan(
                            text: 'Sign In',
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
