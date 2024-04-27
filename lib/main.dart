import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reuseify_app/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:reuseify_app/core/theme/theme.dart';
import 'package:reuseify_app/features/auth/presentation/pages/login_page.dart';
import 'package:reuseify_app/onboarding_page.dart';
import 'package:reuseify_app/features/home/presentation/pages/bottom_nav_page.dart';
import 'package:reuseify_app/locator.dart';

import 'bloc_observer.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  Bloc.observer = SimpleBlocObserver();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<AppUserCubit>(),
        ),
        BlocProvider(create: (context) => locator<AuthBloc>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(AuthIsUserLoggedIn());
    return MaterialApp(
      title: 'ReUseify',
      theme: AppTheme.darkThemeMode,
      debugShowCheckedModeBanner: false,
      home: BlocBuilder<AppUserCubit, AppUserState>(
        builder: (context, state) {
          if (state is AppUserLoggedIn) {
            return const BottomNavPage();
          }
          if (state is AppUserOnboarded) {
            return const LoginPage();
          }
          return const OnboardingPage();
        },
      ),
    );
  }
}
