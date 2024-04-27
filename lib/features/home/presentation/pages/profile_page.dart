import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/common/cubits/app_user/app_user_cubit.dart';
import '../../../../core/theme/app_pallete.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.secondaryColor,
      appBar: AppBar(
        title: const Text(
          "PROFILE",
        ),
        actions: [
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.rightFromBracket,
              color: AppPallete.tertiaryColor,
            ),
            onPressed: () {
              BlocProvider.of<AppUserCubit>(context).logout();
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          "PROFILE",
          style: TextStyle(
            color: AppPallete.backgroundColor,
          ),
        ),
      ),
    );
  }
}
