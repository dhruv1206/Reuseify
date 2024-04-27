import 'package:fpdart/fpdart.dart';

import '../../features/auth/domain/repositories/auth_repository.dart';
import '../error/failures.dart';
import 'usecase.dart';

class LogoutUser implements UseCase<void, NoParams> {
  final AuthRepository repository;

  LogoutUser(this.repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await repository.logoutUser();
  }
}
