import 'package:equatable/equatable.dart';

class LoginRequest extends Equatable {
  final String emailAdress;
  final String password;
  const LoginRequest(this.emailAdress, this.password);

  @override
  List<Object?> get props => [emailAdress, password];
}

class SignupRequest extends Equatable{
  final String name;
  final String emailAdress;
  final String password;
  const SignupRequest(this.emailAdress, this.password, this.name);
  
  @override
  List<Object?> get props =>  [name,password,emailAdress]
}
