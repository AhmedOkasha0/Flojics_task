import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:flojics_task/core/error/exceptions.dart';
import 'package:flojics_task/core/network/requests.dart';
import 'package:flojics_task/core/fauiler/faulier.dart';
import 'package:flojics_task/scr/authentication/data/data_source/user_remote_data_source.dart';
import 'package:flojics_task/scr/authentication/domian/repository/auth_repository.dart';

class AuthRepositoryImbl implements AuthRepository {
  final FirebaseAuthDatasource _firebaseAuthDatasource;

  AuthRepositoryImbl(this._firebaseAuthDatasource);
  @override
  Future<Either<Faulier, UserCredential>> login(
      LoginRequest loginRequest) async {
    try {
      final userCredential = await _firebaseAuthDatasource.logIn(loginRequest);
      return Right(userCredential);
    } on ServerExeption catch (faulier) {
      // Handle exceptions and return a Failure object
      return Left(SereverFailuer(faulier.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Faulier, UserCredential>> signUp(
      SignupRequest signupRequest) async {
    try {
      final userCredential =
          await _firebaseAuthDatasource.signUp(signupRequest);
      return Right(userCredential);
    } on ServerExeption catch (fauiler) {
      // Handle exceptions and return a Failure object
      return Left(SereverFailuer(fauiler.errorMessageModel.statusMessage));
    }
  }
}
