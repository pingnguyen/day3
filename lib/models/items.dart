import 'package:json_annotation/json_annotation.dart';
import "chat.dart";
part 'items.g.dart';

@JsonSerializable()
class Items {
  Items();

  late List<Chat> results;
  
  factory Items.fromJson(Map<String,dynamic> json) => _$ItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}
