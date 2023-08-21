// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internship_task_1/domain/models/entertainment_data/entertainment_data.dart';
import 'package:internship_task_1/domain/models/location_data/location_data.dart';
import 'package:internship_task_1/domain/models/product_data/product_data.dart';

part 'place_data.freezed.dart';
part 'place_data.g.dart';

@freezed
class PlaceData with _$PlaceData {
  const factory PlaceData({
    @JsonKey(name: 'images') required List<String> images,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'date') required int date,
    @JsonKey(name: 'web_link') required String webLink,
    @JsonKey(name: 'product_list') required List<ProductData> productList,
    @JsonKey(name: 'entertainment_list') required List<EntertainmentData> entertainmentList,
    @JsonKey(name: 'location') required LocationData location,
  }) = _PlaceData;

  factory PlaceData.fromJson(Map<String, dynamic> json) => _$PlaceDataFromJson(json);
}