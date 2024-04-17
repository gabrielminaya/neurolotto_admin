// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_play_constraint_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupPlayConstraintEntity _$GroupPlayConstraintEntityFromJson(
    Map<String, dynamic> json) {
  return _GroupPlayConstraintEntity.fromJson(json);
}

/// @nodoc
mixin _$GroupPlayConstraintEntity {
  @JsonKey(name: "play_number")
  num get playNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "constraint_amount")
  num get constraintAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "constraint_max_amount")
  num get constraintMaxAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupPlayConstraintEntityCopyWith<GroupPlayConstraintEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupPlayConstraintEntityCopyWith<$Res> {
  factory $GroupPlayConstraintEntityCopyWith(GroupPlayConstraintEntity value,
          $Res Function(GroupPlayConstraintEntity) then) =
      _$GroupPlayConstraintEntityCopyWithImpl<$Res, GroupPlayConstraintEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "play_number") num playNumber,
      @JsonKey(name: "constraint_amount") num constraintAmount,
      @JsonKey(name: "constraint_max_amount") num constraintMaxAmount});
}

/// @nodoc
class _$GroupPlayConstraintEntityCopyWithImpl<$Res,
        $Val extends GroupPlayConstraintEntity>
    implements $GroupPlayConstraintEntityCopyWith<$Res> {
  _$GroupPlayConstraintEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playNumber = null,
    Object? constraintAmount = null,
    Object? constraintMaxAmount = null,
  }) {
    return _then(_value.copyWith(
      playNumber: null == playNumber
          ? _value.playNumber
          : playNumber // ignore: cast_nullable_to_non_nullable
              as num,
      constraintAmount: null == constraintAmount
          ? _value.constraintAmount
          : constraintAmount // ignore: cast_nullable_to_non_nullable
              as num,
      constraintMaxAmount: null == constraintMaxAmount
          ? _value.constraintMaxAmount
          : constraintMaxAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupPlayConstraintEntityImplCopyWith<$Res>
    implements $GroupPlayConstraintEntityCopyWith<$Res> {
  factory _$$GroupPlayConstraintEntityImplCopyWith(
          _$GroupPlayConstraintEntityImpl value,
          $Res Function(_$GroupPlayConstraintEntityImpl) then) =
      __$$GroupPlayConstraintEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "play_number") num playNumber,
      @JsonKey(name: "constraint_amount") num constraintAmount,
      @JsonKey(name: "constraint_max_amount") num constraintMaxAmount});
}

/// @nodoc
class __$$GroupPlayConstraintEntityImplCopyWithImpl<$Res>
    extends _$GroupPlayConstraintEntityCopyWithImpl<$Res,
        _$GroupPlayConstraintEntityImpl>
    implements _$$GroupPlayConstraintEntityImplCopyWith<$Res> {
  __$$GroupPlayConstraintEntityImplCopyWithImpl(
      _$GroupPlayConstraintEntityImpl _value,
      $Res Function(_$GroupPlayConstraintEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playNumber = null,
    Object? constraintAmount = null,
    Object? constraintMaxAmount = null,
  }) {
    return _then(_$GroupPlayConstraintEntityImpl(
      playNumber: null == playNumber
          ? _value.playNumber
          : playNumber // ignore: cast_nullable_to_non_nullable
              as num,
      constraintAmount: null == constraintAmount
          ? _value.constraintAmount
          : constraintAmount // ignore: cast_nullable_to_non_nullable
              as num,
      constraintMaxAmount: null == constraintMaxAmount
          ? _value.constraintMaxAmount
          : constraintMaxAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupPlayConstraintEntityImpl implements _GroupPlayConstraintEntity {
  const _$GroupPlayConstraintEntityImpl(
      {@JsonKey(name: "play_number") required this.playNumber,
      @JsonKey(name: "constraint_amount") required this.constraintAmount,
      @JsonKey(name: "constraint_max_amount")
      required this.constraintMaxAmount});

  factory _$GroupPlayConstraintEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupPlayConstraintEntityImplFromJson(json);

  @override
  @JsonKey(name: "play_number")
  final num playNumber;
  @override
  @JsonKey(name: "constraint_amount")
  final num constraintAmount;
  @override
  @JsonKey(name: "constraint_max_amount")
  final num constraintMaxAmount;

  @override
  String toString() {
    return 'GroupPlayConstraintEntity(playNumber: $playNumber, constraintAmount: $constraintAmount, constraintMaxAmount: $constraintMaxAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupPlayConstraintEntityImpl &&
            (identical(other.playNumber, playNumber) ||
                other.playNumber == playNumber) &&
            (identical(other.constraintAmount, constraintAmount) ||
                other.constraintAmount == constraintAmount) &&
            (identical(other.constraintMaxAmount, constraintMaxAmount) ||
                other.constraintMaxAmount == constraintMaxAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, playNumber, constraintAmount, constraintMaxAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupPlayConstraintEntityImplCopyWith<_$GroupPlayConstraintEntityImpl>
      get copyWith => __$$GroupPlayConstraintEntityImplCopyWithImpl<
          _$GroupPlayConstraintEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupPlayConstraintEntityImplToJson(
      this,
    );
  }
}

abstract class _GroupPlayConstraintEntity implements GroupPlayConstraintEntity {
  const factory _GroupPlayConstraintEntity(
      {@JsonKey(name: "play_number") required final num playNumber,
      @JsonKey(name: "constraint_amount") required final num constraintAmount,
      @JsonKey(name: "constraint_max_amount")
      required final num
          constraintMaxAmount}) = _$GroupPlayConstraintEntityImpl;

  factory _GroupPlayConstraintEntity.fromJson(Map<String, dynamic> json) =
      _$GroupPlayConstraintEntityImpl.fromJson;

  @override
  @JsonKey(name: "play_number")
  num get playNumber;
  @override
  @JsonKey(name: "constraint_amount")
  num get constraintAmount;
  @override
  @JsonKey(name: "constraint_max_amount")
  num get constraintMaxAmount;
  @override
  @JsonKey(ignore: true)
  _$$GroupPlayConstraintEntityImplCopyWith<_$GroupPlayConstraintEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
