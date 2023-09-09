import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flojics_task/authentication/domian/entites/user.dart';

abstract class BaseRemoteDataSourceUser {
  Future<void> logIn(AuthUser user);
  Future<void> signUp(AuthUser user);
}

class UserRemoteDataSource extends BaseRemoteDataSourceUser {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  UserRemoteDataSource({
    required this.firebaseAuth,
    required this.firebaseFirestore,
  });

  @override
  Future<void> logIn(AuthUser user) async {
    await firebaseAuth.signInWithEmailAndPassword(
        email: user.emailAdress, password: user.password);
  }

  @override
  Future<void> signUp(AuthUser user) async {
    await firebaseAuth.createUserWithEmailAndPassword(
        email: user.emailAdress, password: user.password);
  }
  
  
}
