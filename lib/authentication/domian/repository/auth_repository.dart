import 'package:dartz/dartz.dart';
import 'package:flojics_task/authentication/domian/entites/user.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';
import 'package:flojics_task/core/network/requests.dart';

abstract class AuthRepository {
  Future<Either<Faulier, AuthUser>> login(LoginRequest loginRequest);
  Future<Either<Faulier, AuthUser>> signUp(SignupRequest signupRequest);
}
