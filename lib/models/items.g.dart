// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Items _$ItemsFromJson(Map<String, dynamic> json) => Items()
  ..results = (json['results'] as List<dynamic>)
      .map((e) => Chat.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'results': instance.results,
    };
