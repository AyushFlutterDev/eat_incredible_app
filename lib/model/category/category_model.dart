// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String? id,
    required String? name,
    required String? slug,
    required String? status,
    required String? addedOn,
    required String? productName,
    required String? categoryId,
    required String? tax,
    required String? originalPrice,
    required String? salePrice,
    required String? weight,
    required String? nutriBenifit,
    required String? description,
    required String? metaTitle,
    required String? metaTag,
    required String? metaDesc,
    required String? thumbnail,
    required String? thumbHover,
    required String? quantity,
    required String? date,
    dynamic topSellingProduct,
    dynamic couponCode,
    dynamic specialPrice,
    dynamic locationId,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
