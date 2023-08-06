// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_guest_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveGuestAdapter extends TypeAdapter<HiveGuestObject> {
  @override
  final int typeId = 0;

  @override
  HiveGuestObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveGuestObject(
      id: fields[0] as String,
      firstname: fields[2] as String,
      status: fields[4] as String,
      age: fields[3] as int,
      surname: fields[1] as String,
      avatarUrl: fields[5] as String?,
      phone: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveGuestObject obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.surname)
      ..writeByte(2)
      ..write(obj.firstname)
      ..writeByte(3)
      ..write(obj.age)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.avatarUrl)
      ..writeByte(6)
      ..write(obj.phone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveGuestAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
