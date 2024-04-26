import 'package:fpdart/fpdart.dart';
import 'package:reuseify_app/core/common/entities/user.dart';
import 'package:reuseify_app/core/error/exceptions.dart';
import 'package:reuseify_app/core/error/failures.dart';
import 'package:reuseify_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:reuseify_app/features/auth/domain/repositories/auth_repository.dart';

import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  AuthRepositoryImpl(this._authRemoteDataSource);

  @override
  Future<Either<Failure, User>> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      UserModel user =
          await _authRemoteDataSource.loginWithEmailPassword(email, password);
      return right(user);
    } on ServerException catch (e) {
      return left(Failure(e.message, e.statusCode));
    }
  }

  @override
  Future<Either<Failure, User>> signupUser({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await _authRemoteDataSource.signupWithEmailPassword(
          username, email, password);
      return right(user);
    } on ServerException catch (e) {
      return left(Failure(e.message, e.statusCode));
    }
  }

  @override
  Future<Either<Failure, User>> currentUser() async {
    try {
      final user = await _authRemoteDataSource.getCurrentUserData();
      if (user == null) {
        return left(Failure('User not logged in!'));
      }
      return right(user);
    } on ServerException catch (e) {
      return left(Failure(e.message, e.statusCode));
    }
  }
}
