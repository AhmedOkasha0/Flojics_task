import 'package:dartz/dartz.dart';
import 'package:flojics_task/authentication/domian/entites/authentication.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';

abstract class AuthRepository {
  Future<Either<Faulier, List<Authentication>>> login();
  Future<Either<Faulier, List<Authentication>>> signUp();
}
