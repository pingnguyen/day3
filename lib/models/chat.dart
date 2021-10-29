import 'package:json_annotation/json_annotation.dart';
import "user.dart";
part 'chat.g.dart';

@JsonSerializable()
class Chat {
  Chat();

  late String id;
  String? text;
  late User user;
  num? reply_count;
  num? unread_count;
  String? created_at;
  
  factory Chat.fromJson(Map<String,dynamic> json) => _$ChatFromJson(json);
  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
