import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reuseify_app/core/common/repositories/local_storage_repo.dart';
import 'package:reuseify_app/core/constants/local_storage_keys.dart';

import '../../../usecase/logout_user.dart';
import '../../../usecase/usecase.dart';
import '../../entities/user.dart';

part 'app_user_state.dart';

class AppUserCubit extends Cubit<AppUserState> {
  final LocalStorageRepo localStorageRepo;
  final LogoutUser logoutUser;
  AppUserCubit(this.logoutUser, this.localStorageRepo)
      : super(AppUserInitial());

  void updateUser(User? user) {
    if (user == null) {
      if (_onboarded()) {
        emit(AppUserOnboarded());
      } else {
        emit(AppUserInitial());
      }
    } else {
      emit(AppUserLoggedIn(user));
    }
  }

  bool onboarded() {
    localStorageRepo.setBool(LocalStorageKeys.onboardedKey, true);
    emit(AppUserOnboarded());
    return true;
  }

  bool _onboarded() {
    return localStorageRepo.getBool(LocalStorageKeys.onboardedKey);
  }

  void logout() async {
    final result = await logoutUser(NoParams());
    result.fold(
      (failure) => emit(AppUserLoggedIn((state as AppUserLoggedIn).user)),
      (_) => emit(AppUserOnboarded()),
    );
  }
}
