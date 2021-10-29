import 'package:json_annotation/json_annotation.dart';
import "picture.dart";
part 'user.g.dart';

@JsonSerializable()
class User {
  User();

  String? gender;
  String? name;
  String? email;
  String? dob;
  String? registered;
  String? phone;
  String? status;
  late Picture picture;
  
  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
