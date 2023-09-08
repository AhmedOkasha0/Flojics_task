import 'package:equatable/equatable.dart';

class Authentication extends Equatable {
  final String name;
  final String emailAdress;
  final String password;

  const Authentication({
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
