import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:reuseify_app/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:reuseify_app/core/network/api_client_repo.dart';
import 'package:reuseify_app/core/network/connection_checker.dart';
import 'package:reuseify_app/core/network/dio_api_client.dart';
import 'package:reuseify_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:reuseify_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:reuseify_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:reuseify_app/features/auth/domain/usecases/current_user.dart';
import 'package:reuseify_app/features/auth/domain/usecases/user_login.dart';
import 'package:reuseify_app/features/auth/domain/usecases/user_sign_up.dart';

import 'core/common/repositories/local_storage_repo.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';

final locator = GetIt.instance;

Future<void> initDependencies() async {
  locator.registerLazySingleton<LocalStorageRepo>(() => SPLocalStorage());
  locator.registerLazySingleton<AppUserCubit>(() => AppUserCubit());

  await locator<LocalStorageRepo>().init();
  locator.registerFactory(() => InternetConnection());
  locator.registerFactory<ConnectionChecker>(
      () => ConnectionCheckerImpl(locator()));
  locator.registerLazySingleton<ApiClientRepo>(
      () => DioApiClient(locator(), locator()));
  _initAuth();
}

void _initAuth() {
  // Data Source
  locator.registerFactory<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      locator(),
      locator(),
    ),
  );
  // Repository
  locator.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(
      locator(),
    ),
  );
  // Use Cases
  locator.registerFactory(
    () => UserLogin(
      locator(),
    ),
  );
  locator.registerFactory(
    () => UserSignUp(
      locator(),
    ),
  );
  locator.registerFactory(
    () => CurrentUser(
      locator(),
    ),
  );
  // BloC
  locator.registerFactory<AuthBloc>(
    () => AuthBloc(
      userSignUp: locator(),
      userLogin: locator(),
      currentUser: locator(),
      appUserCubit: locator(),
    ),
  );
}
