// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'items_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IteamData _$IteamDataFromJson(Map<String, dynamic> json) {
  return _IteamData.fromJson(json);
}

/// @nodoc
mixin _$IteamData {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IteamDataCopyWith<IteamData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IteamDataCopyWith<$Res> {
  factory $IteamDataCopyWith(IteamData value, $Res Function(IteamData) then) =
      _$IteamDataCopyWithImpl<$Res>;
  $Res call(
      {int id, String email, String firstName, String lastName, String avatar});
}

/// @nodoc
class _$IteamDataCopyWithImpl<$Res> implements $IteamDataCopyWith<$Res> {
  _$IteamDataCopyWithImpl(this._value, this._then);

  final IteamData _value;
  // ignore: unused_field
  final $Res Function(IteamData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IteamDataCopyWith<$Res> implements $IteamDataCopyWith<$Res> {
  factory _$$_IteamDataCopyWith(
          _$_IteamData value, $Res Function(_$_IteamData) then) =
      __$$_IteamDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String email, String firstName, String lastName, String avatar});
}

/// @nodoc
class __$$_IteamDataCopyWithImpl<$Res> extends _$IteamDataCopyWithImpl<$Res>
    implements _$$_IteamDataCopyWith<$Res> {
  __$$_IteamDataCopyWithImpl(
      _$_IteamData _value, $Res Function(_$_IteamData) _then)
      : super(_value, (v) => _then(v as _$_IteamData));

  @override
  _$_IteamData get _value => super._value as _$_IteamData;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_IteamData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IteamData implements _IteamData {
  const _$_IteamData(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.avatar});

  factory _$_IteamData.fromJson(Map<String, dynamic> json) =>
      _$$_IteamDataFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String avatar;

  @override
  String toString() {
    return 'IteamData(id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IteamData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$$_IteamDataCopyWith<_$_IteamData> get copyWith =>
      __$$_IteamDataCopyWithImpl<_$_IteamData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IteamDataToJson(
      this,
    );
  }
}

abstract class _IteamData implements IteamData {
  const factory _IteamData(
      {required final int id,
      required final String email,
      required final String firstName,
      required final String lastName,
      required final String avatar}) = _$_IteamData;

  factory _IteamData.fromJson(Map<String, dynamic> json) =
      _$_IteamData.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_IteamDataCopyWith<_$_IteamData> get copyWith =>
      throw _privateConstructorUsedError;
}
