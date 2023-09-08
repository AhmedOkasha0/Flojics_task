import 'package:dartz/dartz.dart';
import 'package:flojics_task/authentication/domian/entites/user.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';

abstract class AuthRepository {
  Future<Either<Faulier, List<AuthUser>>> login(AuthUser user);
  Future<Either<Faulier, List<AuthUser>>> signUp(AuthUser user);
}
