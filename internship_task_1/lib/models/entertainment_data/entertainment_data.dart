// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entertainment_data.freezed.dart';
part 'entertainment_data.g.dart';

@freezed
class EntertainmentData with _$EntertainmentData {
  const factory EntertainmentData({
    @JsonKey(name: 'icon_url') required String iconUrl,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
  }) = _EntertainmentData;

  factory EntertainmentData.fromJson(Map<String, dynamic> json) => _$EntertainmentDataFromJson(json);
}