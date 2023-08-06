// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WishData _$$_WishDataFromJson(Map<String, dynamic> json) => _$_WishData(
      id: json['id'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      isBooked: json['is_booked'] as bool,
    );

Map<String, dynamic> _$$_WishDataToJson(_$_WishData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'is_booked': instance.isBooked,
    };
