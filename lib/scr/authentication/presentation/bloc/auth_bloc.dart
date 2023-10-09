import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flojics_task/scr/authentication/domian/usecases/login_usecase.dart';
import 'package:flojics_task/scr/authentication/domian/usecases/signup_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final SignUpUseCase signUpUseCase;
  AuthBloc(this.loginUseCase, this.signUpUseCase) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      try {
        await loginUseCase(
            LoginUseCaseInput(event.emailAdress, event.password));
        emit(AuthSuccess());
      } catch (e) {
        emit(ErrorState(message: e.toString()));
      }
    });
    on<SignUpEvent>((event, emit) async {
      try {
        await signUpUseCase(RegisterUseCaseInput(
            event.emailAdress, event.password, event.name));
        emit(AuthSuccess());
      } catch (e) {
        emit(ErrorState(message: e.toString()));
      }
    });
  }
}
