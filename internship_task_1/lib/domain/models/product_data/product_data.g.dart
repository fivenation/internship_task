// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductData _$$_ProductDataFromJson(Map<String, dynamic> json) =>
    _$_ProductData(
      title: json['title'] as String,
      url: json['url'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProductDataToJson(_$_ProductData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'ingredients': instance.ingredients,
    };
