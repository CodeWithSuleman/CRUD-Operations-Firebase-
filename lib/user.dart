class User {
  final String id;
  final String name;
  final String email;
  User({required this.id, required this.name, required this.email});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'email': email};
  }
}
