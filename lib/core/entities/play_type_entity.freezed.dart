// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayTypeEntity _$PlayTypeEntityFromJson(Map<String, dynamic> json) {
  return _PlayTypeEntity.fromJson(json);
}

/// @nodoc
mixin _$PlayTypeEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayTypeEntityCopyWith<PlayTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayTypeEntityCopyWith<$Res> {
  factory $PlayTypeEntityCopyWith(
          PlayTypeEntity value, $Res Function(PlayTypeEntity) then) =
      _$PlayTypeEntityCopyWithImpl<$Res, PlayTypeEntity>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$PlayTypeEntityCopyWithImpl<$Res, $Val extends PlayTypeEntity>
    implements $PlayTypeEntityCopyWith<$Res> {
  _$PlayTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayTypeEntityImplCopyWith<$Res>
    implements $PlayTypeEntityCopyWith<$Res> {
  factory _$$PlayTypeEntityImplCopyWith(_$PlayTypeEntityImpl value,
          $Res Function(_$PlayTypeEntityImpl) then) =
      __$$PlayTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$PlayTypeEntityImplCopyWithImpl<$Res>
    extends _$PlayTypeEntityCopyWithImpl<$Res, _$PlayTypeEntityImpl>
    implements _$$PlayTypeEntityImplCopyWith<$Res> {
  __$$PlayTypeEntityImplCopyWithImpl(
      _$PlayTypeEntityImpl _value, $Res Function(_$PlayTypeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PlayTypeEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayTypeEntityImpl implements _PlayTypeEntity {
  const _$PlayTypeEntityImpl({required this.id, required this.name});

  factory _$PlayTypeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayTypeEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'PlayTypeEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayTypeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayTypeEntityImplCopyWith<_$PlayTypeEntityImpl> get copyWith =>
      __$$PlayTypeEntityImplCopyWithImpl<_$PlayTypeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayTypeEntityImplToJson(
      this,
    );
  }
}

abstract class _PlayTypeEntity implements PlayTypeEntity {
  const factory _PlayTypeEntity(
      {required final String id,
      required final String name}) = _$PlayTypeEntityImpl;

  factory _PlayTypeEntity.fromJson(Map<String, dynamic> json) =
      _$PlayTypeEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PlayTypeEntityImplCopyWith<_$PlayTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
