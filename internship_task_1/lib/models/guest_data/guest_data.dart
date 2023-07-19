// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_data.freezed.dart';
part 'guest_data.g.dart';

@freezed
class GuestData with _$GuestData {
  const factory GuestData({
    @JsonKey(name: 'surname') required String surname,
    @JsonKey(name: 'firstname') required String firstname,
    @JsonKey(name: 'age') required int age,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'phone') required String phone,
  }) = _GuestData;

  factory GuestData.fromJson(Map<String, dynamic> json) => _$GuestDataFromJson(json);
}