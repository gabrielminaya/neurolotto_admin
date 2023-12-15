// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LotteryEntity _$LotteryEntityFromJson(Map<String, dynamic> json) {
  return _LotteryEntity.fromJson(json);
}

/// @nodoc
mixin _$LotteryEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryEntityCopyWith<LotteryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryEntityCopyWith<$Res> {
  factory $LotteryEntityCopyWith(
          LotteryEntity value, $Res Function(LotteryEntity) then) =
      _$LotteryEntityCopyWithImpl<$Res, LotteryEntity>;
  @useResult
  $Res call({String id, String name, bool status});
}

/// @nodoc
class _$LotteryEntityCopyWithImpl<$Res, $Val extends LotteryEntity>
    implements $LotteryEntityCopyWith<$Res> {
  _$LotteryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryEntityImplCopyWith<$Res>
    implements $LotteryEntityCopyWith<$Res> {
  factory _$$LotteryEntityImplCopyWith(
          _$LotteryEntityImpl value, $Res Function(_$LotteryEntityImpl) then) =
      __$$LotteryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, bool status});
}

/// @nodoc
class __$$LotteryEntityImplCopyWithImpl<$Res>
    extends _$LotteryEntityCopyWithImpl<$Res, _$LotteryEntityImpl>
    implements _$$LotteryEntityImplCopyWith<$Res> {
  __$$LotteryEntityImplCopyWithImpl(
      _$LotteryEntityImpl _value, $Res Function(_$LotteryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$LotteryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryEntityImpl implements _LotteryEntity {
  const _$LotteryEntityImpl(
      {required this.id, required this.name, required this.status});

  factory _$LotteryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool status;

  @override
  String toString() {
    return 'LotteryEntity(id: $id, name: $name, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryEntityImplCopyWith<_$LotteryEntityImpl> get copyWith =>
      __$$LotteryEntityImplCopyWithImpl<_$LotteryEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryEntityImplToJson(
      this,
    );
  }
}

abstract class _LotteryEntity implements LotteryEntity {
  const factory _LotteryEntity(
      {required final String id,
      required final String name,
      required final bool status}) = _$LotteryEntityImpl;

  factory _LotteryEntity.fromJson(Map<String, dynamic> json) =
      _$LotteryEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get status;
  @override
  @JsonKey(ignore: true)
  _$$LotteryEntityImplCopyWith<_$LotteryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
