// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data.freezed.dart';
part 'product_data.g.dart';

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'ingredients') required List<String> ingredients,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);
}