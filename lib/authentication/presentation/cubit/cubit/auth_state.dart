part of 'auth_cubit.dart';

class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthDataLoading extends AuthState {}

class AuthDataLoaded extends AuthState {
  final UserCredential userCredential;

  const AuthDataLoaded(
    this.userCredential,
  );
  @override
  List<Object> get props => [userCredential];
}

class AuthMessageError extends AuthState {
  final String message;

  const AuthMessageError(this.message);
  @override
  List<Object> get props => [message];
}
