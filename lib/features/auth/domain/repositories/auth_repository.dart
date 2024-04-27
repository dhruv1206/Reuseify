import 'package:fpdart/fpdart.dart';
import 'package:reuseify_app/core/error/failures.dart';

import '../../../../core/common/entities/user.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, User>> loginUser({
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> signupUser({
    required String fullName,
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> currentUser();
  Future<Either<Failure, void>> logoutUser();
}
