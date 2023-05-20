class UserModel {
  UserModel({
    required this.uId,
    required this.username,
    required this.email,
    required this.image,
    required this.tourist
  });

  late  String uId;
  late  String username;
  late  String email;
  late  String image;
  late bool tourist;

  UserModel.fromJson(json) {
    uId = json['uId'] ?? '';
    username = json['username'] ?? '';
    email = json['email'] ?? '';
    image = json['image'] ?? '';
    tourist=json['tourist']??'';
  }

  Map<String, dynamic> toJson() {
    return {
      'uId': uId,
      'username': username,
      'email': email,
      'image': image,
      'tourist':tourist,
    };
  }
}