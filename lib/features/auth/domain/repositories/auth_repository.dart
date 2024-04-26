import 'package:fpdart/fpdart.dart';
import 'package:reuseify_app/core/error/failures.dart';

import '../../../../core/common/entities/user.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, User>> loginUser({
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> signupUser({
    required String username,
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> currentUser();
}
