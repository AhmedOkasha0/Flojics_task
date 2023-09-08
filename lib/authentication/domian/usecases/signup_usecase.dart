import 'package:dartz/dartz.dart';
import 'package:flojics_task/authentication/domian/entites/authentication.dart';
import 'package:flojics_task/authentication/domian/repository/auth_repository.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';

class SignUpUseCase {
  final AuthRepository authRepository;

  const SignUpUseCase({required this.authRepository});

  Future<Either<Faulier, List<Authentication>>> call() async {
    return await authRepository.signUp();
  }
}
