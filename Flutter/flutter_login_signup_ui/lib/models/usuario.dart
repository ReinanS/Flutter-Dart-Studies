import 'dart:convert';

class Usuario {
  Usuario({
    this.authenticated,
    this.expiration,
    this.token,
    this.message,
  });

  bool authenticated;
  DateTime expiration;
  String token;
  String message;

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        authenticated: json["authenticated"],
        expiration: DateTime.parse(json["expiration"]),
        token: json["token"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "authenticated": authenticated,
        "expiration": expiration.toIso8601String(),
        "token": token,
        "message": message,
      };

  String toString() {
    return 'Usuario(message: $message, token: $token)';
  }
}
