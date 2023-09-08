import 'package:dartz/dartz.dart';
import 'package:flojics_task/authentication/domian/entites/user.dart';
import 'package:flojics_task/authentication/domian/repository/auth_repository.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  Future<Either<Faulier, List<AuthUser>>> call(AuthUser user) async {
    return await authRepository.login(user);
  }
}

