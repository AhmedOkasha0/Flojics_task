import 'package:equatable/equatable.dart';

abstract class Faulier extends Equatable {
  final String message;

  const Faulier(this.message);
  @override
  List<Object> get props => [message];
}

class SereverFailuer extends Faulier {
  const SereverFailuer(super.message);
}

class DataBaseFailuer extends Faulier {
  const DataBaseFailuer(super.message);
}

class CachFaulier extends Faulier {
  const CachFaulier(super.message);
}
class FirebaseFaulier extends Faulier{
 const FirebaseFaulier(super.message);

}

// class ErrorHandler implements Exception{
//   late Failure failure;
//   ErrorHandler.handle(dynamic error){
//     if(error is FirebaseAuthException){
//     // error response OF THE Firebase
//     failure = _handleError(error);
//     }else{
//       //default error
//       failure = DataSource.DEFAULT.getFailure();
//     }
//   }

// }

//  Failure _handleError(FirebaseException firebaseError){
//     switch (firebaseError.code) {
//       case ResponseCode.UserNotFound:
//         return DataSource.INCORRECTUSERNAME.getFailure();
//       case ResponseCode.EmailFounded:
//         return DataSource.EMAILALREADYINUSE.getFailure();
//       case ResponseCode.WrongPassword:
//         return DataSource.INCORRECTPASSWORD.getFailure();
//       default:
//         return DataSource.DEFAULT.getFailure();
//     }
//   }


// class ResponseCode {
//   static const String UserNotFound = 'user-not-found';
//   static const String WrongPassword = 'wrong-password';
//   static const String EmailFounded = 'email-already-in-use';
//   static const String OtherError = 'other-error';
//   static const int NointernetConnection = -6;
// }

// enum DataSource {
//   INCORRECTUSERNAME,
//   INCORRECTPASSWORD,
//   EMAILALREADYINUSE,
//   DEFAULT,
//   NO_INTERNET_CONNECTION,
// }
