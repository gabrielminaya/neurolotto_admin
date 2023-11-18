// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleCategoryEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<VehicleImageEntity> get vehicleImages =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleCategoryEntityCopyWith<VehicleCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCategoryEntityCopyWith<$Res> {
  factory $VehicleCategoryEntityCopyWith(VehicleCategoryEntity value,
          $Res Function(VehicleCategoryEntity) then) =
      _$VehicleCategoryEntityCopyWithImpl<$Res, VehicleCategoryEntity>;
  @useResult
  $Res call({String id, String name, List<VehicleImageEntity> vehicleImages});
}

/// @nodoc
class _$VehicleCategoryEntityCopyWithImpl<$Res,
        $Val extends VehicleCategoryEntity>
    implements $VehicleCategoryEntityCopyWith<$Res> {
  _$VehicleCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? vehicleImages = null,
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
      vehicleImages: null == vehicleImages
          ? _value.vehicleImages
          : vehicleImages // ignore: cast_nullable_to_non_nullable
              as List<VehicleImageEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleCategoryEntityImplCopyWith<$Res>
    implements $VehicleCategoryEntityCopyWith<$Res> {
  factory _$$VehicleCategoryEntityImplCopyWith(
          _$VehicleCategoryEntityImpl value,
          $Res Function(_$VehicleCategoryEntityImpl) then) =
      __$$VehicleCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<VehicleImageEntity> vehicleImages});
}

/// @nodoc
class __$$VehicleCategoryEntityImplCopyWithImpl<$Res>
    extends _$VehicleCategoryEntityCopyWithImpl<$Res,
        _$VehicleCategoryEntityImpl>
    implements _$$VehicleCategoryEntityImplCopyWith<$Res> {
  __$$VehicleCategoryEntityImplCopyWithImpl(_$VehicleCategoryEntityImpl _value,
      $Res Function(_$VehicleCategoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? vehicleImages = null,
  }) {
    return _then(_$VehicleCategoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleImages: null == vehicleImages
          ? _value._vehicleImages
          : vehicleImages // ignore: cast_nullable_to_non_nullable
              as List<VehicleImageEntity>,
    ));
  }
}

/// @nodoc

class _$VehicleCategoryEntityImpl implements _VehicleCategoryEntity {
  const _$VehicleCategoryEntityImpl(
      {required this.id,
      required this.name,
      required final List<VehicleImageEntity> vehicleImages})
      : _vehicleImages = vehicleImages;

  @override
  final String id;
  @override
  final String name;
  final List<VehicleImageEntity> _vehicleImages;
  @override
  List<VehicleImageEntity> get vehicleImages {
    if (_vehicleImages is EqualUnmodifiableListView) return _vehicleImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleImages);
  }

  @override
  String toString() {
    return 'VehicleCategoryEntity(id: $id, name: $name, vehicleImages: $vehicleImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleCategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._vehicleImages, _vehicleImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_vehicleImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleCategoryEntityImplCopyWith<_$VehicleCategoryEntityImpl>
      get copyWith => __$$VehicleCategoryEntityImplCopyWithImpl<
          _$VehicleCategoryEntityImpl>(this, _$identity);
}

abstract class _VehicleCategoryEntity implements VehicleCategoryEntity {
  const factory _VehicleCategoryEntity(
          {required final String id,
          required final String name,
          required final List<VehicleImageEntity> vehicleImages}) =
      _$VehicleCategoryEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<VehicleImageEntity> get vehicleImages;
  @override
  @JsonKey(ignore: true)
  _$$VehicleCategoryEntityImplCopyWith<_$VehicleCategoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
