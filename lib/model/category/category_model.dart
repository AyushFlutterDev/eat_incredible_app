// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

CategoryModel categoryModelFromJson(String str) =>
    CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  CategoryModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.status,
    required this.addedOn,
    required this.productName,
    required this.categoryId,
    required this.tax,
    required this.originalPrice,
    required this.salePrice,
    required this.weight,
    required this.nutriBenifit,
    required this.description,
    required this.metaTitle,
    required this.metaTag,
    required this.metaDesc,
    required this.thumbnail,
    required this.thumbHover,
    required this.quantity,
    required this.date,
    required this.topSellingProduct,
    required this.couponCode,
    required this.specialPrice,
    required this.locationId,
  });

  String id;
  String name;
  String slug;
  String status;
  String addedOn;
  String productName;
  String categoryId;
  String tax;
  String originalPrice;
  String salePrice;
  String weight;
  String nutriBenifit;
  String description;
  String metaTitle;
  String metaTag;
  String metaDesc;
  String thumbnail;
  String thumbHover;
  String quantity;
  String date;
  dynamic topSellingProduct;
  dynamic couponCode;
  dynamic specialPrice;
  dynamic locationId;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        status: json["status"],
        addedOn: json["addedOn"],
        productName: json["product_name"],
        categoryId: json["category_id"],
        tax: json["tax"],
        originalPrice: json["original_price"],
        salePrice: json["sale_price"],
        weight: json["weight"],
        nutriBenifit: json["nutri_benifit"],
        description: json["description"],
        metaTitle: json["meta_title"],
        metaTag: json["meta_tag"],
        metaDesc: json["meta_desc"],
        thumbnail: json["thumbnail"],
        thumbHover: json["thumb_hover"],
        quantity: json["quantity"],
        date: json["date"],
        topSellingProduct: json["top_selling_product"],
        couponCode: json["coupon_code"],
        specialPrice: json["special_price"],
        locationId: json["location_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "status": status,
        "addedOn": addedOn,
        "product_name": productName,
        "category_id": categoryId,
        "tax": tax,
        "original_price": originalPrice,
        "sale_price": salePrice,
        "weight": weight,
        "nutri_benifit": nutriBenifit,
        "description": description,
        "meta_title": metaTitle,
        "meta_tag": metaTag,
        "meta_desc": metaDesc,
        "thumbnail": thumbnail,
        "thumb_hover": thumbHover,
        "quantity": quantity,
        "date": date,
        "top_selling_product": topSellingProduct,
        "coupon_code": couponCode,
        "special_price": specialPrice,
        "location_id": locationId,
      };
}
