part of 'auth_bloc.dart';

class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginEvent extends AuthEvent {
  final String emailAdress;
  final String password;

  const LoginEvent({required this.emailAdress, required this.password});
  @override
  List<Object> get props => [
        emailAdress,
        password,
      ];
}

class SignUpEvent extends AuthEvent {
  final String emailAdress;
  final String password;
  final String name;

  const SignUpEvent({
    required this.emailAdress,
    required this.password,
    required this.name,
  });

  @override
  List<Object> get props => [
        emailAdress,
        password,
        name,
      ];
}
