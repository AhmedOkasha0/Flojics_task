part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthSuccess extends AuthState {}

class ErrorState extends AuthState {
  final String message;

  const ErrorState({required this.message});
  @override
  List<Object> get props => [];
}
