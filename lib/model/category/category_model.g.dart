// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      status: json['status'] as String?,
      addedOn: json['addedOn'] as String?,
      productName: json['productName'] as String?,
      categoryId: json['categoryId'] as String?,
      tax: json['tax'] as String?,
      originalPrice: json['originalPrice'] as String?,
      salePrice: json['salePrice'] as String?,
      weight: json['weight'] as String?,
      nutriBenifit: json['nutriBenifit'] as String?,
      description: json['description'] as String?,
      metaTitle: json['metaTitle'] as String?,
      metaTag: json['metaTag'] as String?,
      metaDesc: json['metaDesc'] as String?,
      thumbnail: json['thumbnail'] as String?,
      thumbHover: json['thumbHover'] as String?,
      quantity: json['quantity'] as String?,
      date: json['date'] as String?,
      topSellingProduct: json['topSellingProduct'],
      couponCode: json['couponCode'],
      specialPrice: json['specialPrice'],
      locationId: json['locationId'],
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'status': instance.status,
      'addedOn': instance.addedOn,
      'productName': instance.productName,
      'categoryId': instance.categoryId,
      'tax': instance.tax,
      'originalPrice': instance.originalPrice,
      'salePrice': instance.salePrice,
      'weight': instance.weight,
      'nutriBenifit': instance.nutriBenifit,
      'description': instance.description,
      'metaTitle': instance.metaTitle,
      'metaTag': instance.metaTag,
      'metaDesc': instance.metaDesc,
      'thumbnail': instance.thumbnail,
      'thumbHover': instance.thumbHover,
      'quantity': instance.quantity,
      'date': instance.date,
      'topSellingProduct': instance.topSellingProduct,
      'couponCode': instance.couponCode,
      'specialPrice': instance.specialPrice,
      'locationId': instance.locationId,
    };
