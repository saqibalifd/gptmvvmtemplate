class UserModel {
  final String id;
  final String name;
  final String email;
  final String imageUrl;

  UserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.imageUrl});

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      name: data['name'],
      email: data['email'],
      imageUrl: data['imageUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'imageUrl': imageUrl,
    };
  }
}
