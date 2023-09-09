import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flojics_task/authentication/domian/repository/auth_repository.dart';
import 'package:flojics_task/core/base_usecase/base_usecase.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';
import 'package:flojics_task/core/network/requests.dart';

class SignUpUseCase extends BaseUseCase< UserCredential,RegisterUseCaseInput> {
  final AuthRepository authRepository;

  SignUpUseCase({required this.authRepository});

  @override
  Future<Either<Faulier, UserCredential>> call(RegisterUseCaseInput input) async {
    return await authRepository
        .signUp(SignupRequest(input.emailAdress, input.password, input.name));
  }
}

class RegisterUseCaseInput extends Equatable {
  final String emailAdress;
  final String password;
  final String name;
  const RegisterUseCaseInput(this.emailAdress, this.password, this.name);

  @override
  List<Object?> get props => [emailAdress, password, name];
}
