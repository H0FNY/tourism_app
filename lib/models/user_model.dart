class UserModel {
  UserModel({
    required this.uId,
    required this.username,
    required this.email,
    required this.image,
  });

  late final String uId;
  late final String username;
  late final String email;
  late final String image;

  UserModel.fromJson(Map<String, dynamic> json) {
    uId = json['uId'] ?? '';
    username = json['username'] ?? '';
    email = json['email'] ?? '';
    image = json['image'] ?? '';
  }

  Map<String, dynamic> toJson() {
    return {
      'uId': uId,
      'username': username,
      'email': email,
      'image': image,
    };
  }
}