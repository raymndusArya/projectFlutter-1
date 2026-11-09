// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

LoginModels LoginModelsFromJson(String str) => LoginModels.fromJson(json.decode(str));

String LoginModelsToJson(LoginModels data) => json.encode(data.toJson());

class LoginModels {
  final bool status;
  final String message;
  final String token;

 LoginModels({required this.status, required this.message, required this.token});

  factory LoginModels.fromJson(Map<String, dynamic> json) => LoginModels(
    status: json["status"],
    message: json["message"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "token": token,
  };
}
