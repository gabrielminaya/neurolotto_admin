// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupEntity _$GroupEntityFromJson(Map<String, dynamic> json) {
  return _GroupEntity.fromJson(json);
}

/// @nodoc
mixin _$GroupEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "quiniela_max_amount")
  num get quinielaMaxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "pale_max_amount")
  num get paleMaxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "tripleta_max_amount")
  num get tripletaMaxAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupEntityCopyWith<GroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEntityCopyWith<$Res> {
  factory $GroupEntityCopyWith(
          GroupEntity value, $Res Function(GroupEntity) then) =
      _$GroupEntityCopyWithImpl<$Res, GroupEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: "quiniela_max_amount") num quinielaMaxAmount,
      @JsonKey(name: "pale_max_amount") num paleMaxAmount,
      @JsonKey(name: "tripleta_max_amount") num tripletaMaxAmount});
}

/// @nodoc
class _$GroupEntityCopyWithImpl<$Res, $Val extends GroupEntity>
    implements $GroupEntityCopyWith<$Res> {
  _$GroupEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? quinielaMaxAmount = null,
    Object? paleMaxAmount = null,
    Object? tripletaMaxAmount = null,
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
      quinielaMaxAmount: null == quinielaMaxAmount
          ? _value.quinielaMaxAmount
          : quinielaMaxAmount // ignore: cast_nullable_to_non_nullable
              as num,
      paleMaxAmount: null == paleMaxAmount
          ? _value.paleMaxAmount
          : paleMaxAmount // ignore: cast_nullable_to_non_nullable
              as num,
      tripletaMaxAmount: null == tripletaMaxAmount
          ? _value.tripletaMaxAmount
          : tripletaMaxAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupEntityImplCopyWith<$Res>
    implements $GroupEntityCopyWith<$Res> {
  factory _$$GroupEntityImplCopyWith(
          _$GroupEntityImpl value, $Res Function(_$GroupEntityImpl) then) =
      __$$GroupEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: "quiniela_max_amount") num quinielaMaxAmount,
      @JsonKey(name: "pale_max_amount") num paleMaxAmount,
      @JsonKey(name: "tripleta_max_amount") num tripletaMaxAmount});
}

/// @nodoc
class __$$GroupEntityImplCopyWithImpl<$Res>
    extends _$GroupEntityCopyWithImpl<$Res, _$GroupEntityImpl>
    implements _$$GroupEntityImplCopyWith<$Res> {
  __$$GroupEntityImplCopyWithImpl(
      _$GroupEntityImpl _value, $Res Function(_$GroupEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? quinielaMaxAmount = null,
    Object? paleMaxAmount = null,
    Object? tripletaMaxAmount = null,
  }) {
    return _then(_$GroupEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quinielaMaxAmount: null == quinielaMaxAmount
          ? _value.quinielaMaxAmount
          : quinielaMaxAmount // ignore: cast_nullable_to_non_nullable
              as num,
      paleMaxAmount: null == paleMaxAmount
          ? _value.paleMaxAmount
          : paleMaxAmount // ignore: cast_nullable_to_non_nullable
              as num,
      tripletaMaxAmount: null == tripletaMaxAmount
          ? _value.tripletaMaxAmount
          : tripletaMaxAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupEntityImpl implements _GroupEntity {
  const _$GroupEntityImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "quiniela_max_amount") required this.quinielaMaxAmount,
      @JsonKey(name: "pale_max_amount") required this.paleMaxAmount,
      @JsonKey(name: "tripleta_max_amount") required this.tripletaMaxAmount});

  factory _$GroupEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: "quiniela_max_amount")
  final num quinielaMaxAmount;
  @override
  @JsonKey(name: "pale_max_amount")
  final num paleMaxAmount;
  @override
  @JsonKey(name: "tripleta_max_amount")
  final num tripletaMaxAmount;

  @override
  String toString() {
    return 'GroupEntity(id: $id, name: $name, quinielaMaxAmount: $quinielaMaxAmount, paleMaxAmount: $paleMaxAmount, tripletaMaxAmount: $tripletaMaxAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quinielaMaxAmount, quinielaMaxAmount) ||
                other.quinielaMaxAmount == quinielaMaxAmount) &&
            (identical(other.paleMaxAmount, paleMaxAmount) ||
                other.paleMaxAmount == paleMaxAmount) &&
            (identical(other.tripletaMaxAmount, tripletaMaxAmount) ||
                other.tripletaMaxAmount == tripletaMaxAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, quinielaMaxAmount,
      paleMaxAmount, tripletaMaxAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupEntityImplCopyWith<_$GroupEntityImpl> get copyWith =>
      __$$GroupEntityImplCopyWithImpl<_$GroupEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupEntityImplToJson(
      this,
    );
  }
}

abstract class _GroupEntity implements GroupEntity {
  const factory _GroupEntity(
      {required final String id,
      required final String name,
      @JsonKey(name: "quiniela_max_amount")
      required final num quinielaMaxAmount,
      @JsonKey(name: "pale_max_amount") required final num paleMaxAmount,
      @JsonKey(name: "tripleta_max_amount")
      required final num tripletaMaxAmount}) = _$GroupEntityImpl;

  factory _GroupEntity.fromJson(Map<String, dynamic> json) =
      _$GroupEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: "quiniela_max_amount")
  num get quinielaMaxAmount;
  @override
  @JsonKey(name: "pale_max_amount")
  num get paleMaxAmount;
  @override
  @JsonKey(name: "tripleta_max_amount")
  num get tripletaMaxAmount;
  @override
  @JsonKey(ignore: true)
  _$$GroupEntityImplCopyWith<_$GroupEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
