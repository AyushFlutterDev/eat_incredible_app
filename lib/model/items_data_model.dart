// To parse this JSON data, do
//
//     final iteamData = iteamDataFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'items_data_model.freezed.dart';
part 'items_data_model.g.dart';

List<IteamData> iteamDataFromJson(String str) =>
    List<IteamData>.from(json.decode(str).map((x) => IteamData.fromJson(x)));

String iteamDataToJson(List<IteamData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class IteamData with _$IteamData {
  const factory IteamData({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String avatar,
  }) = _IteamData;

  factory IteamData.fromJson(Map<String, dynamic> json) =>
      _$IteamDataFromJson(json);
}
