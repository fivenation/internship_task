// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wish_data.freezed.dart';
part 'wish_data.g.dart';

@freezed
class WishData with _$WishData {
  const factory WishData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'is_booked') required bool isBooked,
  }) = _WishData;

  factory WishData.fromJson(Map<String, dynamic> json) => _$WishDataFromJson(json);
}