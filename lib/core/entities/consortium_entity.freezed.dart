// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consortium_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsortiumEntity _$ConsortiumEntityFromJson(Map<String, dynamic> json) {
  return _ConsortiumEntity.fromJson(json);
}

/// @nodoc
mixin _$ConsortiumEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_sale_amount")
  num get maximumSaleAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "quiniela_max_amount")
  num get quinielaMaxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "pale_max_amount")
  num get paleMaxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "tripleta_max_amount")
  num get tripletaMaxAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsortiumEntityCopyWith<ConsortiumEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsortiumEntityCopyWith<$Res> {
  factory $ConsortiumEntityCopyWith(
          ConsortiumEntity value, $Res Function(ConsortiumEntity) then) =
      _$ConsortiumEntityCopyWithImpl<$Res, ConsortiumEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: "maximum_sale_amount") num maximumSaleAmount,
      @JsonKey(name: "quiniela_max_amount") num quinielaMaxAmount,
      @JsonKey(name: "pale_max_amount") num paleMaxAmount,
      @JsonKey(name: "tripleta_max_amount") num tripletaMaxAmount});
}

/// @nodoc
class _$ConsortiumEntityCopyWithImpl<$Res, $Val extends ConsortiumEntity>
    implements $ConsortiumEntityCopyWith<$Res> {
  _$ConsortiumEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? maximumSaleAmount = null,
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
      maximumSaleAmount: null == maximumSaleAmount
          ? _value.maximumSaleAmount
          : maximumSaleAmount // ignore: cast_nullable_to_non_nullable
              as num,
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
abstract class _$$ConsortiumEntityImplCopyWith<$Res>
    implements $ConsortiumEntityCopyWith<$Res> {
  factory _$$ConsortiumEntityImplCopyWith(_$ConsortiumEntityImpl value,
          $Res Function(_$ConsortiumEntityImpl) then) =
      __$$ConsortiumEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: "maximum_sale_amount") num maximumSaleAmount,
      @JsonKey(name: "quiniela_max_amount") num quinielaMaxAmount,
      @JsonKey(name: "pale_max_amount") num paleMaxAmount,
      @JsonKey(name: "tripleta_max_amount") num tripletaMaxAmount});
}

/// @nodoc
class __$$ConsortiumEntityImplCopyWithImpl<$Res>
    extends _$ConsortiumEntityCopyWithImpl<$Res, _$ConsortiumEntityImpl>
    implements _$$ConsortiumEntityImplCopyWith<$Res> {
  __$$ConsortiumEntityImplCopyWithImpl(_$ConsortiumEntityImpl _value,
      $Res Function(_$ConsortiumEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? maximumSaleAmount = null,
    Object? quinielaMaxAmount = null,
    Object? paleMaxAmount = null,
    Object? tripletaMaxAmount = null,
  }) {
    return _then(_$ConsortiumEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      maximumSaleAmount: null == maximumSaleAmount
          ? _value.maximumSaleAmount
          : maximumSaleAmount // ignore: cast_nullable_to_non_nullable
              as num,
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
class _$ConsortiumEntityImpl implements _ConsortiumEntity {
  const _$ConsortiumEntityImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "maximum_sale_amount") required this.maximumSaleAmount,
      @JsonKey(name: "quiniela_max_amount") required this.quinielaMaxAmount,
      @JsonKey(name: "pale_max_amount") required this.paleMaxAmount,
      @JsonKey(name: "tripleta_max_amount") required this.tripletaMaxAmount});

  factory _$ConsortiumEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsortiumEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: "maximum_sale_amount")
  final num maximumSaleAmount;
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
    return 'ConsortiumEntity(id: $id, name: $name, maximumSaleAmount: $maximumSaleAmount, quinielaMaxAmount: $quinielaMaxAmount, paleMaxAmount: $paleMaxAmount, tripletaMaxAmount: $tripletaMaxAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsortiumEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.maximumSaleAmount, maximumSaleAmount) ||
                other.maximumSaleAmount == maximumSaleAmount) &&
            (identical(other.quinielaMaxAmount, quinielaMaxAmount) ||
                other.quinielaMaxAmount == quinielaMaxAmount) &&
            (identical(other.paleMaxAmount, paleMaxAmount) ||
                other.paleMaxAmount == paleMaxAmount) &&
            (identical(other.tripletaMaxAmount, tripletaMaxAmount) ||
                other.tripletaMaxAmount == tripletaMaxAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, maximumSaleAmount,
      quinielaMaxAmount, paleMaxAmount, tripletaMaxAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsortiumEntityImplCopyWith<_$ConsortiumEntityImpl> get copyWith =>
      __$$ConsortiumEntityImplCopyWithImpl<_$ConsortiumEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsortiumEntityImplToJson(
      this,
    );
  }
}

abstract class _ConsortiumEntity implements ConsortiumEntity {
  const factory _ConsortiumEntity(
      {required final String id,
      required final String name,
      @JsonKey(name: "maximum_sale_amount")
      required final num maximumSaleAmount,
      @JsonKey(name: "quiniela_max_amount")
      required final num quinielaMaxAmount,
      @JsonKey(name: "pale_max_amount") required final num paleMaxAmount,
      @JsonKey(name: "tripleta_max_amount")
      required final num tripletaMaxAmount}) = _$ConsortiumEntityImpl;

  factory _ConsortiumEntity.fromJson(Map<String, dynamic> json) =
      _$ConsortiumEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: "maximum_sale_amount")
  num get maximumSaleAmount;
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
  _$$ConsortiumEntityImplCopyWith<_$ConsortiumEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
