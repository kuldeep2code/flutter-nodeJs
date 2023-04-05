import 'dart:convert';

class UserModel {
  final String email;
  final String password;

  const UserModel({required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {
      "email": email,
      "password": password,
    };
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(email: map['email'], password: map['password']);
  }
}
