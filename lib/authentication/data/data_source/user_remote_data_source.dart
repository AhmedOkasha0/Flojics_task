import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flojics_task/core/network/requests.dart';

abstract class FirebaseAuthDatasource {
  Future<UserCredential> logIn(LoginRequest loginRequest);
  Future<UserCredential> signUp(SignupRequest signupRequest);
}

class UserRemoteDataSource extends FirebaseAuthDatasource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  UserRemoteDataSource({
    required this.firebaseAuth,
    required this.firebaseFirestore,
  });
  static final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<UserCredential> logIn(LoginRequest loginRequest) async {
    return await firebaseAuth.signInWithEmailAndPassword(
        email: loginRequest.emailAdress, password: loginRequest.password);
  }

  @override
  Future<UserCredential> signUp(SignupRequest signupRequest) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
      email: signupRequest.emailAdress,
      password: signupRequest.password,
    );
  }
}
