// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_offer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleOfferEntity {
  DateTime get beginDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleOfferEntityCopyWith<VehicleOfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleOfferEntityCopyWith<$Res> {
  factory $VehicleOfferEntityCopyWith(
          VehicleOfferEntity value, $Res Function(VehicleOfferEntity) then) =
      _$VehicleOfferEntityCopyWithImpl<$Res, VehicleOfferEntity>;
  @useResult
  $Res call({DateTime beginDate, DateTime endDate, double price});
}

/// @nodoc
class _$VehicleOfferEntityCopyWithImpl<$Res, $Val extends VehicleOfferEntity>
    implements $VehicleOfferEntityCopyWith<$Res> {
  _$VehicleOfferEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginDate = null,
    Object? endDate = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      beginDate: null == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleOfferEntityImplCopyWith<$Res>
    implements $VehicleOfferEntityCopyWith<$Res> {
  factory _$$VehicleOfferEntityImplCopyWith(_$VehicleOfferEntityImpl value,
          $Res Function(_$VehicleOfferEntityImpl) then) =
      __$$VehicleOfferEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime beginDate, DateTime endDate, double price});
}

/// @nodoc
class __$$VehicleOfferEntityImplCopyWithImpl<$Res>
    extends _$VehicleOfferEntityCopyWithImpl<$Res, _$VehicleOfferEntityImpl>
    implements _$$VehicleOfferEntityImplCopyWith<$Res> {
  __$$VehicleOfferEntityImplCopyWithImpl(_$VehicleOfferEntityImpl _value,
      $Res Function(_$VehicleOfferEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginDate = null,
    Object? endDate = null,
    Object? price = null,
  }) {
    return _then(_$VehicleOfferEntityImpl(
      beginDate: null == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$VehicleOfferEntityImpl implements _VehicleOfferEntity {
  const _$VehicleOfferEntityImpl(
      {required this.beginDate, required this.endDate, required this.price});

  @override
  final DateTime beginDate;
  @override
  final DateTime endDate;
  @override
  final double price;

  @override
  String toString() {
    return 'VehicleOfferEntity(beginDate: $beginDate, endDate: $endDate, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleOfferEntityImpl &&
            (identical(other.beginDate, beginDate) ||
                other.beginDate == beginDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, beginDate, endDate, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleOfferEntityImplCopyWith<_$VehicleOfferEntityImpl> get copyWith =>
      __$$VehicleOfferEntityImplCopyWithImpl<_$VehicleOfferEntityImpl>(
          this, _$identity);
}

abstract class _VehicleOfferEntity implements VehicleOfferEntity {
  const factory _VehicleOfferEntity(
      {required final DateTime beginDate,
      required final DateTime endDate,
      required final double price}) = _$VehicleOfferEntityImpl;

  @override
  DateTime get beginDate;
  @override
  DateTime get endDate;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$VehicleOfferEntityImplCopyWith<_$VehicleOfferEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
