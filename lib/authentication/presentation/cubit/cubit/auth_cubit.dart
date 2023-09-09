import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flojics_task/authentication/domian/usecases/login_usecase.dart';
import 'package:flojics_task/authentication/domian/usecases/signup_usecase.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';
import 'package:flutter/physics.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase loginUseCase;
  final SignUpUseCase signUpUseCase;
  AuthCubit(this.loginUseCase, this.signUpUseCase) : super(AuthInitial());

  Future<void> getLogin() async {
    emit(AuthDataLoading());
  }
}
