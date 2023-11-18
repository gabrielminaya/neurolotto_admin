// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BrandEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logoUrl => throw _privateConstructorUsedError;
  String? get vehicleImageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandEntityCopyWith<BrandEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandEntityCopyWith<$Res> {
  factory $BrandEntityCopyWith(
          BrandEntity value, $Res Function(BrandEntity) then) =
      _$BrandEntityCopyWithImpl<$Res, BrandEntity>;
  @useResult
  $Res call({String id, String name, String logoUrl, String? vehicleImageUrl});
}

/// @nodoc
class _$BrandEntityCopyWithImpl<$Res, $Val extends BrandEntity>
    implements $BrandEntityCopyWith<$Res> {
  _$BrandEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = null,
    Object? vehicleImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleImageUrl: freezed == vehicleImageUrl
          ? _value.vehicleImageUrl
          : vehicleImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandEntityImplCopyWith<$Res>
    implements $BrandEntityCopyWith<$Res> {
  factory _$$BrandEntityImplCopyWith(
          _$BrandEntityImpl value, $Res Function(_$BrandEntityImpl) then) =
      __$$BrandEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String logoUrl, String? vehicleImageUrl});
}

/// @nodoc
class __$$BrandEntityImplCopyWithImpl<$Res>
    extends _$BrandEntityCopyWithImpl<$Res, _$BrandEntityImpl>
    implements _$$BrandEntityImplCopyWith<$Res> {
  __$$BrandEntityImplCopyWithImpl(
      _$BrandEntityImpl _value, $Res Function(_$BrandEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = null,
    Object? vehicleImageUrl = freezed,
  }) {
    return _then(_$BrandEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleImageUrl: freezed == vehicleImageUrl
          ? _value.vehicleImageUrl
          : vehicleImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BrandEntityImpl implements _BrandEntity {
  const _$BrandEntityImpl(
      {required this.id,
      required this.name,
      required this.logoUrl,
      this.vehicleImageUrl = null});

  @override
  final String id;
  @override
  final String name;
  @override
  final String logoUrl;
  @override
  @JsonKey()
  final String? vehicleImageUrl;

  @override
  String toString() {
    return 'BrandEntity(id: $id, name: $name, logoUrl: $logoUrl, vehicleImageUrl: $vehicleImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.vehicleImageUrl, vehicleImageUrl) ||
                other.vehicleImageUrl == vehicleImageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, logoUrl, vehicleImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandEntityImplCopyWith<_$BrandEntityImpl> get copyWith =>
      __$$BrandEntityImplCopyWithImpl<_$BrandEntityImpl>(this, _$identity);
}

abstract class _BrandEntity implements BrandEntity {
  const factory _BrandEntity(
      {required final String id,
      required final String name,
      required final String logoUrl,
      final String? vehicleImageUrl}) = _$BrandEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get logoUrl;
  @override
  String? get vehicleImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$BrandEntityImplCopyWith<_$BrandEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
