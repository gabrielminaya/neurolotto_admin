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
  @JsonKey(name: "quiniela_first_prize")
  num get quinielaFirstPrize => throw _privateConstructorUsedError;
  @JsonKey(name: "quiniela_second_prize")
  num get quinielaSecondPrize => throw _privateConstructorUsedError;
  @JsonKey(name: "quiniela_third_prize")
  num get quinielaThirdPrize => throw _privateConstructorUsedError;
  @JsonKey(name: "pale_first_second_prize")
  num get paleFirstSecondPrize => throw _privateConstructorUsedError;
  @JsonKey(name: "pale_first_third_prize")
  num get paleFirstThirdPrize => throw _privateConstructorUsedError;
  @JsonKey(name: "pale_second_third_prize")
  num get paleSecondThirdPrize => throw _privateConstructorUsedError;
  @JsonKey(name: "tripleta_prize")
  num get tripletaPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "time_open")
  String get timeOpen => throw _privateConstructorUsedError;
  @JsonKey(name: "time_close")
  String get timeClose => throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String name,
      bool status,
      @JsonKey(name: "quiniela_first_prize") num quinielaFirstPrize,
      @JsonKey(name: "quiniela_second_prize") num quinielaSecondPrize,
      @JsonKey(name: "quiniela_third_prize") num quinielaThirdPrize,
      @JsonKey(name: "pale_first_second_prize") num paleFirstSecondPrize,
      @JsonKey(name: "pale_first_third_prize") num paleFirstThirdPrize,
      @JsonKey(name: "pale_second_third_prize") num paleSecondThirdPrize,
      @JsonKey(name: "tripleta_prize") num tripletaPrice,
      @JsonKey(name: "time_open") String timeOpen,
      @JsonKey(name: "time_close") String timeClose});
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
    Object? quinielaFirstPrize = null,
    Object? quinielaSecondPrize = null,
    Object? quinielaThirdPrize = null,
    Object? paleFirstSecondPrize = null,
    Object? paleFirstThirdPrize = null,
    Object? paleSecondThirdPrize = null,
    Object? tripletaPrice = null,
    Object? timeOpen = null,
    Object? timeClose = null,
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
      quinielaFirstPrize: null == quinielaFirstPrize
          ? _value.quinielaFirstPrize
          : quinielaFirstPrize // ignore: cast_nullable_to_non_nullable
              as num,
      quinielaSecondPrize: null == quinielaSecondPrize
          ? _value.quinielaSecondPrize
          : quinielaSecondPrize // ignore: cast_nullable_to_non_nullable
              as num,
      quinielaThirdPrize: null == quinielaThirdPrize
          ? _value.quinielaThirdPrize
          : quinielaThirdPrize // ignore: cast_nullable_to_non_nullable
              as num,
      paleFirstSecondPrize: null == paleFirstSecondPrize
          ? _value.paleFirstSecondPrize
          : paleFirstSecondPrize // ignore: cast_nullable_to_non_nullable
              as num,
      paleFirstThirdPrize: null == paleFirstThirdPrize
          ? _value.paleFirstThirdPrize
          : paleFirstThirdPrize // ignore: cast_nullable_to_non_nullable
              as num,
      paleSecondThirdPrize: null == paleSecondThirdPrize
          ? _value.paleSecondThirdPrize
          : paleSecondThirdPrize // ignore: cast_nullable_to_non_nullable
              as num,
      tripletaPrice: null == tripletaPrice
          ? _value.tripletaPrice
          : tripletaPrice // ignore: cast_nullable_to_non_nullable
              as num,
      timeOpen: null == timeOpen
          ? _value.timeOpen
          : timeOpen // ignore: cast_nullable_to_non_nullable
              as String,
      timeClose: null == timeClose
          ? _value.timeClose
          : timeClose // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {String id,
      String name,
      bool status,
      @JsonKey(name: "quiniela_first_prize") num quinielaFirstPrize,
      @JsonKey(name: "quiniela_second_prize") num quinielaSecondPrize,
      @JsonKey(name: "quiniela_third_prize") num quinielaThirdPrize,
      @JsonKey(name: "pale_first_second_prize") num paleFirstSecondPrize,
      @JsonKey(name: "pale_first_third_prize") num paleFirstThirdPrize,
      @JsonKey(name: "pale_second_third_prize") num paleSecondThirdPrize,
      @JsonKey(name: "tripleta_prize") num tripletaPrice,
      @JsonKey(name: "time_open") String timeOpen,
      @JsonKey(name: "time_close") String timeClose});
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
    Object? quinielaFirstPrize = null,
    Object? quinielaSecondPrize = null,
    Object? quinielaThirdPrize = null,
    Object? paleFirstSecondPrize = null,
    Object? paleFirstThirdPrize = null,
    Object? paleSecondThirdPrize = null,
    Object? tripletaPrice = null,
    Object? timeOpen = null,
    Object? timeClose = null,
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
      quinielaFirstPrize: null == quinielaFirstPrize
          ? _value.quinielaFirstPrize
          : quinielaFirstPrize // ignore: cast_nullable_to_non_nullable
              as num,
      quinielaSecondPrize: null == quinielaSecondPrize
          ? _value.quinielaSecondPrize
          : quinielaSecondPrize // ignore: cast_nullable_to_non_nullable
              as num,
      quinielaThirdPrize: null == quinielaThirdPrize
          ? _value.quinielaThirdPrize
          : quinielaThirdPrize // ignore: cast_nullable_to_non_nullable
              as num,
      paleFirstSecondPrize: null == paleFirstSecondPrize
          ? _value.paleFirstSecondPrize
          : paleFirstSecondPrize // ignore: cast_nullable_to_non_nullable
              as num,
      paleFirstThirdPrize: null == paleFirstThirdPrize
          ? _value.paleFirstThirdPrize
          : paleFirstThirdPrize // ignore: cast_nullable_to_non_nullable
              as num,
      paleSecondThirdPrize: null == paleSecondThirdPrize
          ? _value.paleSecondThirdPrize
          : paleSecondThirdPrize // ignore: cast_nullable_to_non_nullable
              as num,
      tripletaPrice: null == tripletaPrice
          ? _value.tripletaPrice
          : tripletaPrice // ignore: cast_nullable_to_non_nullable
              as num,
      timeOpen: null == timeOpen
          ? _value.timeOpen
          : timeOpen // ignore: cast_nullable_to_non_nullable
              as String,
      timeClose: null == timeClose
          ? _value.timeClose
          : timeClose // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryEntityImpl implements _LotteryEntity {
  const _$LotteryEntityImpl(
      {required this.id,
      required this.name,
      required this.status,
      @JsonKey(name: "quiniela_first_prize") required this.quinielaFirstPrize,
      @JsonKey(name: "quiniela_second_prize") required this.quinielaSecondPrize,
      @JsonKey(name: "quiniela_third_prize") required this.quinielaThirdPrize,
      @JsonKey(name: "pale_first_second_prize")
      required this.paleFirstSecondPrize,
      @JsonKey(name: "pale_first_third_prize")
      required this.paleFirstThirdPrize,
      @JsonKey(name: "pale_second_third_prize")
      required this.paleSecondThirdPrize,
      @JsonKey(name: "tripleta_prize") required this.tripletaPrice,
      @JsonKey(name: "time_open") required this.timeOpen,
      @JsonKey(name: "time_close") required this.timeClose});

  factory _$LotteryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool status;
  @override
  @JsonKey(name: "quiniela_first_prize")
  final num quinielaFirstPrize;
  @override
  @JsonKey(name: "quiniela_second_prize")
  final num quinielaSecondPrize;
  @override
  @JsonKey(name: "quiniela_third_prize")
  final num quinielaThirdPrize;
  @override
  @JsonKey(name: "pale_first_second_prize")
  final num paleFirstSecondPrize;
  @override
  @JsonKey(name: "pale_first_third_prize")
  final num paleFirstThirdPrize;
  @override
  @JsonKey(name: "pale_second_third_prize")
  final num paleSecondThirdPrize;
  @override
  @JsonKey(name: "tripleta_prize")
  final num tripletaPrice;
  @override
  @JsonKey(name: "time_open")
  final String timeOpen;
  @override
  @JsonKey(name: "time_close")
  final String timeClose;

  @override
  String toString() {
    return 'LotteryEntity(id: $id, name: $name, status: $status, quinielaFirstPrize: $quinielaFirstPrize, quinielaSecondPrize: $quinielaSecondPrize, quinielaThirdPrize: $quinielaThirdPrize, paleFirstSecondPrize: $paleFirstSecondPrize, paleFirstThirdPrize: $paleFirstThirdPrize, paleSecondThirdPrize: $paleSecondThirdPrize, tripletaPrice: $tripletaPrice, timeOpen: $timeOpen, timeClose: $timeClose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.quinielaFirstPrize, quinielaFirstPrize) ||
                other.quinielaFirstPrize == quinielaFirstPrize) &&
            (identical(other.quinielaSecondPrize, quinielaSecondPrize) ||
                other.quinielaSecondPrize == quinielaSecondPrize) &&
            (identical(other.quinielaThirdPrize, quinielaThirdPrize) ||
                other.quinielaThirdPrize == quinielaThirdPrize) &&
            (identical(other.paleFirstSecondPrize, paleFirstSecondPrize) ||
                other.paleFirstSecondPrize == paleFirstSecondPrize) &&
            (identical(other.paleFirstThirdPrize, paleFirstThirdPrize) ||
                other.paleFirstThirdPrize == paleFirstThirdPrize) &&
            (identical(other.paleSecondThirdPrize, paleSecondThirdPrize) ||
                other.paleSecondThirdPrize == paleSecondThirdPrize) &&
            (identical(other.tripletaPrice, tripletaPrice) ||
                other.tripletaPrice == tripletaPrice) &&
            (identical(other.timeOpen, timeOpen) ||
                other.timeOpen == timeOpen) &&
            (identical(other.timeClose, timeClose) ||
                other.timeClose == timeClose));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      quinielaFirstPrize,
      quinielaSecondPrize,
      quinielaThirdPrize,
      paleFirstSecondPrize,
      paleFirstThirdPrize,
      paleSecondThirdPrize,
      tripletaPrice,
      timeOpen,
      timeClose);

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
          required final bool status,
          @JsonKey(name: "quiniela_first_prize")
          required final num quinielaFirstPrize,
          @JsonKey(name: "quiniela_second_prize")
          required final num quinielaSecondPrize,
          @JsonKey(name: "quiniela_third_prize")
          required final num quinielaThirdPrize,
          @JsonKey(name: "pale_first_second_prize")
          required final num paleFirstSecondPrize,
          @JsonKey(name: "pale_first_third_prize")
          required final num paleFirstThirdPrize,
          @JsonKey(name: "pale_second_third_prize")
          required final num paleSecondThirdPrize,
          @JsonKey(name: "tripleta_prize") required final num tripletaPrice,
          @JsonKey(name: "time_open") required final String timeOpen,
          @JsonKey(name: "time_close") required final String timeClose}) =
      _$LotteryEntityImpl;

  factory _LotteryEntity.fromJson(Map<String, dynamic> json) =
      _$LotteryEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get status;
  @override
  @JsonKey(name: "quiniela_first_prize")
  num get quinielaFirstPrize;
  @override
  @JsonKey(name: "quiniela_second_prize")
  num get quinielaSecondPrize;
  @override
  @JsonKey(name: "quiniela_third_prize")
  num get quinielaThirdPrize;
  @override
  @JsonKey(name: "pale_first_second_prize")
  num get paleFirstSecondPrize;
  @override
  @JsonKey(name: "pale_first_third_prize")
  num get paleFirstThirdPrize;
  @override
  @JsonKey(name: "pale_second_third_prize")
  num get paleSecondThirdPrize;
  @override
  @JsonKey(name: "tripleta_prize")
  num get tripletaPrice;
  @override
  @JsonKey(name: "time_open")
  String get timeOpen;
  @override
  @JsonKey(name: "time_close")
  String get timeClose;
  @override
  @JsonKey(ignore: true)
  _$$LotteryEntityImplCopyWith<_$LotteryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
