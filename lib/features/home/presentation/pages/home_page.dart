import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reuseify_app/core/common/cubits/app_user/app_user_cubit.dart';

import '../../../../core/theme/app_pallete.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HOME",
        ),
      ),
      backgroundColor: AppPallete.secondaryColor,
      body: BlocConsumer<AppUserCubit, AppUserState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Center(
            child: Text(
              "HOME ${(state as AppUserLoggedIn).user.toString()}",
              style: const TextStyle(
                color: AppPallete.backgroundColor,
              ),
            ),
          );
        },
      ),
    );
  }
}
