// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) => Chat()
  ..id = json['id'] as String
  ..text = json['text'] as String?
  ..user = User.fromJson(json['user'] as Map<String, dynamic>)
  ..reply_count = json['reply_count'] as num?
  ..unread_count = json['unread_count'] as num?
  ..created_at = json['created_at'] as String?;

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'user': instance.user,
      'reply_count': instance.reply_count,
      'unread_count': instance.unread_count,
      'created_at': instance.created_at,
    };
