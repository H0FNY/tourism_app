import 'package:tourism/models/user_model.dart';

class PostDataModel {
  PostDataModel({
    required this.description,
    required this.time,
    required this.price,
    required this.UserID
  });

  late final String description;
  late final String time;
  late final String price;
  late final String UserID;

  PostDataModel.fromJson(json) {
    description = json['description'] ?? '';
    time = json['time'] ?? '';
    price=json['price']??'';
    UserID=json['UserID']??"";
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'time': time,
      'price':price,
      'user':UserID,
    };
  }
}
