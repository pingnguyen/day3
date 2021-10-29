// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User()
  ..gender = json['gender'] as String?
  ..name = json['name'] as String?
  ..email = json['email'] as String?
  ..dob = json['dob'] as String?
  ..registered = json['registered'] as String?
  ..phone = json['phone'] as String?
  ..status = json['status'] as String?
  ..picture = Picture.fromJson(json['picture'] as Map<String, dynamic>);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'email': instance.email,
      'dob': instance.dob,
      'registered': instance.registered,
      'phone': instance.phone,
      'status': instance.status,
      'picture': instance.picture,
    };
