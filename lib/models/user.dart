import 'dart:convert';

class User {
  final String id;
  final String name;
  final String email;
  final String username; 
  final String token;
  final String password;
  final dynamic profilePicture;

  User ({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.token,
    required this.password,
    required this.profilePicture
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'username': username,
      'token': token,
      'password': password,
      'profilePicture': profilePicture
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      username: map['username'] ?? '',
      token: map['token'] ?? '',
      password: map['password'] ?? '',
      profilePicture: map['profilePicture'] ?? ''
    );
  }

  String toJson() =>  json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}