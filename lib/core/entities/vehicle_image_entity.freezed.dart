// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleImageEntity {
  String get id => throw _privateConstructorUsedError;
  int get sequence => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get blurHash => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleImageEntityCopyWith<VehicleImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleImageEntityCopyWith<$Res> {
  factory $VehicleImageEntityCopyWith(
          VehicleImageEntity value, $Res Function(VehicleImageEntity) then) =
      _$VehicleImageEntityCopyWithImpl<$Res, VehicleImageEntity>;
  @useResult
  $Res call({String id, int sequence, String imageUrl, String blurHash});
}

/// @nodoc
class _$VehicleImageEntityCopyWithImpl<$Res, $Val extends VehicleImageEntity>
    implements $VehicleImageEntityCopyWith<$Res> {
  _$VehicleImageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sequence = null,
    Object? imageUrl = null,
    Object? blurHash = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleImageEntityImplCopyWith<$Res>
    implements $VehicleImageEntityCopyWith<$Res> {
  factory _$$VehicleImageEntityImplCopyWith(_$VehicleImageEntityImpl value,
          $Res Function(_$VehicleImageEntityImpl) then) =
      __$$VehicleImageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int sequence, String imageUrl, String blurHash});
}

/// @nodoc
class __$$VehicleImageEntityImplCopyWithImpl<$Res>
    extends _$VehicleImageEntityCopyWithImpl<$Res, _$VehicleImageEntityImpl>
    implements _$$VehicleImageEntityImplCopyWith<$Res> {
  __$$VehicleImageEntityImplCopyWithImpl(_$VehicleImageEntityImpl _value,
      $Res Function(_$VehicleImageEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sequence = null,
    Object? imageUrl = null,
    Object? blurHash = null,
  }) {
    return _then(_$VehicleImageEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VehicleImageEntityImpl implements _VehicleImageEntity {
  const _$VehicleImageEntityImpl(
      {required this.id,
      required this.sequence,
      required this.imageUrl,
      required this.blurHash});

  @override
  final String id;
  @override
  final int sequence;
  @override
  final String imageUrl;
  @override
  final String blurHash;

  @override
  String toString() {
    return 'VehicleImageEntity(id: $id, sequence: $sequence, imageUrl: $imageUrl, blurHash: $blurHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleImageEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sequence, imageUrl, blurHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleImageEntityImplCopyWith<_$VehicleImageEntityImpl> get copyWith =>
      __$$VehicleImageEntityImplCopyWithImpl<_$VehicleImageEntityImpl>(
          this, _$identity);
}

abstract class _VehicleImageEntity implements VehicleImageEntity {
  const factory _VehicleImageEntity(
      {required final String id,
      required final int sequence,
      required final String imageUrl,
      required final String blurHash}) = _$VehicleImageEntityImpl;

  @override
  String get id;
  @override
  int get sequence;
  @override
  String get imageUrl;
  @override
  String get blurHash;
  @override
  @JsonKey(ignore: true)
  _$$VehicleImageEntityImplCopyWith<_$VehicleImageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
