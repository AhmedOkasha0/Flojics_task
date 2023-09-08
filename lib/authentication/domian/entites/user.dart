import 'package:equatable/equatable.dart';

class AuthUser extends Equatable {
  final String name;
  final String emailAdress;
  final String password;

  const AuthUser({
    required this.name,
    required this.emailAdress,
    required this.password,
  });
  @override
  List<Object?> get props => [
        name,
        emailAdress,
        password,
      ];
}
