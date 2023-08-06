// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceData _$$_PlaceDataFromJson(Map<String, dynamic> json) => _$_PlaceData(
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      date: json['date'] as int,
      webLink: json['web_link'] as String,
      productList: (json['product_list'] as List<dynamic>)
          .map((e) => ProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      entertainmentList: (json['entertainment_list'] as List<dynamic>)
          .map((e) => EntertainmentData.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: LocationData.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlaceDataToJson(_$_PlaceData instance) =>
    <String, dynamic>{
      'images': instance.images,
      'description': instance.description,
      'date': instance.date,
      'web_link': instance.webLink,
      'product_list': instance.productList,
      'entertainment_list': instance.entertainmentList,
      'location': instance.location,
    };
