// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuestData _$$_GuestDataFromJson(Map<String, dynamic> json) => _$_GuestData(
      surname: json['surname'] as String,
      firstname: json['firstname'] as String,
      age: json['age'] as int,
      status: json['status'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$_GuestDataToJson(_$_GuestData instance) =>
    <String, dynamic>{
      'surname': instance.surname,
      'firstname': instance.firstname,
      'age': instance.age,
      'status': instance.status,
      'avatarUrl': instance.avatarUrl,
      'phone': instance.phone,
    };
