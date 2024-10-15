class User {
  final String id;
  final String email;
  final String name;
  final String role;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.role});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['data']['id'],
      name: json['data']['name'],
      email: json['data']['email'],
      role: json['data']['role'],
    );
  }
}
