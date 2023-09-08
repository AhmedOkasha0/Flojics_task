import 'package:flojics_task/authentication/domian/entites/authentication.dart';

class UserModel extends Authentication {
  const UserModel({
    required super.name,
    required super.emailAdress,
    required super.password,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"] as String,
        emailAdress: json["emialAdress"] as String,
        password: json["password"] as String,
      );

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "emailAdress": emailAdress,
      "password": password,
    };
  }
}
