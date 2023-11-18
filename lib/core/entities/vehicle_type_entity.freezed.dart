// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleTypeEntity {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleTypeEntityCopyWith<VehicleTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTypeEntityCopyWith<$Res> {
  factory $VehicleTypeEntityCopyWith(
          VehicleTypeEntity value, $Res Function(VehicleTypeEntity) then) =
      _$VehicleTypeEntityCopyWithImpl<$Res, VehicleTypeEntity>;
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class _$VehicleTypeEntityCopyWithImpl<$Res, $Val extends VehicleTypeEntity>
    implements $VehicleTypeEntityCopyWith<$Res> {
  _$VehicleTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleTypeEntityImplCopyWith<$Res>
    implements $VehicleTypeEntityCopyWith<$Res> {
  factory _$$VehicleTypeEntityImplCopyWith(_$VehicleTypeEntityImpl value,
          $Res Function(_$VehicleTypeEntityImpl) then) =
      __$$VehicleTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class __$$VehicleTypeEntityImplCopyWithImpl<$Res>
    extends _$VehicleTypeEntityCopyWithImpl<$Res, _$VehicleTypeEntityImpl>
    implements _$$VehicleTypeEntityImplCopyWith<$Res> {
  __$$VehicleTypeEntityImplCopyWithImpl(_$VehicleTypeEntityImpl _value,
      $Res Function(_$VehicleTypeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$VehicleTypeEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VehicleTypeEntityImpl implements _VehicleTypeEntity {
  const _$VehicleTypeEntityImpl({this.id = null, required this.name});

  @override
  @JsonKey()
  final String? id;
  @override
  final String name;

  @override
  String toString() {
    return 'VehicleTypeEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleTypeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleTypeEntityImplCopyWith<_$VehicleTypeEntityImpl> get copyWith =>
      __$$VehicleTypeEntityImplCopyWithImpl<_$VehicleTypeEntityImpl>(
          this, _$identity);
}

abstract class _VehicleTypeEntity implements VehicleTypeEntity {
  const factory _VehicleTypeEntity(
      {final String? id, required final String name}) = _$VehicleTypeEntityImpl;

  @override
  String? get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$VehicleTypeEntityImplCopyWith<_$VehicleTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
