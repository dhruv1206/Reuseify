import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reuseify_app/core/common/cubits/app_user/app_user_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static route() => MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        (context.read<AppUserCubit>().state as AppUserLoggedIn).user.email,
      ),
    );
  }
}
