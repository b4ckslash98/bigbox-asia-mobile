import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../lib.dart';

class RegisterUsecase implements UseCase<bool, RegisterUsecaseParam> {
  final AuthRepository repository;

  RegisterUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(RegisterUsecaseParam params) async {
    return await repository.register(
        params.email, params.password, params.role);
  }
}

class RegisterUsecaseParam {
  final String email;
  final String password;
  final String role;

  const RegisterUsecaseParam({
    required this.email,
    required this.password,
    required this.role,
  });
}
