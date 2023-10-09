import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flojics_task/core/base_usecase/base_usecase.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';
import 'package:flojics_task/core/network/requests.dart';
import 'package:flojics_task/scr/authentication/domian/repository/auth_repository.dart';

class LoginUseCase extends BaseUseCase<UserCredential, LoginUseCaseInput> {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  @override
  Future<Either<Faulier, UserCredential>> call(LoginUseCaseInput input) async {
    return await authRepository
        .login(LoginRequest(input.emailAdress, input.password));
  }
}

class LoginUseCaseInput extends Equatable {
  String emailAdress;
  String password;
  LoginUseCaseInput(
    this.emailAdress,
    this.password,
  );

  @override
  List<Object?> get props => [emailAdress, password];
}
