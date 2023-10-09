import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';
import 'package:flojics_task/core/network/requests.dart';

abstract class AuthRepository {
  Future<Either<Faulier, UserCredential>> login(LoginRequest loginRequest);
  Future<Either<Faulier, UserCredential>> signUp(SignupRequest signupRequest);
}
