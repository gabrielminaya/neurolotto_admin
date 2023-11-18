// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ModelEntity {
  String? get id => throw _privateConstructorUsedError;
  String get brandId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelEntityCopyWith<ModelEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelEntityCopyWith<$Res> {
  factory $ModelEntityCopyWith(
          ModelEntity value, $Res Function(ModelEntity) then) =
      _$ModelEntityCopyWithImpl<$Res, ModelEntity>;
  @useResult
  $Res call({String? id, String brandId, String name});
}

/// @nodoc
class _$ModelEntityCopyWithImpl<$Res, $Val extends ModelEntity>
    implements $ModelEntityCopyWith<$Res> {
  _$ModelEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brandId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelEntityImplCopyWith<$Res>
    implements $ModelEntityCopyWith<$Res> {
  factory _$$ModelEntityImplCopyWith(
          _$ModelEntityImpl value, $Res Function(_$ModelEntityImpl) then) =
      __$$ModelEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String brandId, String name});
}

/// @nodoc
class __$$ModelEntityImplCopyWithImpl<$Res>
    extends _$ModelEntityCopyWithImpl<$Res, _$ModelEntityImpl>
    implements _$$ModelEntityImplCopyWith<$Res> {
  __$$ModelEntityImplCopyWithImpl(
      _$ModelEntityImpl _value, $Res Function(_$ModelEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brandId = null,
    Object? name = null,
  }) {
    return _then(_$ModelEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ModelEntityImpl implements _ModelEntity {
  const _$ModelEntityImpl(
      {this.id = null, required this.brandId, required this.name});

  @override
  @JsonKey()
  final String? id;
  @override
  final String brandId;
  @override
  final String name;

  @override
  String toString() {
    return 'ModelEntity(id: $id, brandId: $brandId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, brandId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelEntityImplCopyWith<_$ModelEntityImpl> get copyWith =>
      __$$ModelEntityImplCopyWithImpl<_$ModelEntityImpl>(this, _$identity);
}

abstract class _ModelEntity implements ModelEntity {
  const factory _ModelEntity(
      {final String? id,
      required final String brandId,
      required final String name}) = _$ModelEntityImpl;

  @override
  String? get id;
  @override
  String get brandId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ModelEntityImplCopyWith<_$ModelEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
