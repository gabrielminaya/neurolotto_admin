// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_prize_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupStandPrizeEntity _$GroupStandPrizeEntityFromJson(
    Map<String, dynamic> json) {
  return _GroupStandPrizeEntity.fromJson(json);
}

/// @nodoc
mixin _$GroupStandPrizeEntity {
  @JsonKey(name: "lotteries")
  LotteryEntity get lottery => throw _privateConstructorUsedError;
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
  num get tripletaPrize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupStandPrizeEntityCopyWith<GroupStandPrizeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupStandPrizeEntityCopyWith<$Res> {
  factory $GroupStandPrizeEntityCopyWith(GroupStandPrizeEntity value,
          $Res Function(GroupStandPrizeEntity) then) =
      _$GroupStandPrizeEntityCopyWithImpl<$Res, GroupStandPrizeEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "lotteries") LotteryEntity lottery,
      @JsonKey(name: "quiniela_first_prize") num quinielaFirstPrize,
      @JsonKey(name: "quiniela_second_prize") num quinielaSecondPrize,
      @JsonKey(name: "quiniela_third_prize") num quinielaThirdPrize,
      @JsonKey(name: "pale_first_second_prize") num paleFirstSecondPrize,
      @JsonKey(name: "pale_first_third_prize") num paleFirstThirdPrize,
      @JsonKey(name: "pale_second_third_prize") num paleSecondThirdPrize,
      @JsonKey(name: "tripleta_prize") num tripletaPrize});

  $LotteryEntityCopyWith<$Res> get lottery;
}

/// @nodoc
class _$GroupStandPrizeEntityCopyWithImpl<$Res,
        $Val extends GroupStandPrizeEntity>
    implements $GroupStandPrizeEntityCopyWith<$Res> {
  _$GroupStandPrizeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lottery = null,
    Object? quinielaFirstPrize = null,
    Object? quinielaSecondPrize = null,
    Object? quinielaThirdPrize = null,
    Object? paleFirstSecondPrize = null,
    Object? paleFirstThirdPrize = null,
    Object? paleSecondThirdPrize = null,
    Object? tripletaPrize = null,
  }) {
    return _then(_value.copyWith(
      lottery: null == lottery
          ? _value.lottery
          : lottery // ignore: cast_nullable_to_non_nullable
              as LotteryEntity,
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
      tripletaPrize: null == tripletaPrize
          ? _value.tripletaPrize
          : tripletaPrize // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotteryEntityCopyWith<$Res> get lottery {
    return $LotteryEntityCopyWith<$Res>(_value.lottery, (value) {
      return _then(_value.copyWith(lottery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupStandPrizeEntityImplCopyWith<$Res>
    implements $GroupStandPrizeEntityCopyWith<$Res> {
  factory _$$GroupStandPrizeEntityImplCopyWith(
          _$GroupStandPrizeEntityImpl value,
          $Res Function(_$GroupStandPrizeEntityImpl) then) =
      __$$GroupStandPrizeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lotteries") LotteryEntity lottery,
      @JsonKey(name: "quiniela_first_prize") num quinielaFirstPrize,
      @JsonKey(name: "quiniela_second_prize") num quinielaSecondPrize,
      @JsonKey(name: "quiniela_third_prize") num quinielaThirdPrize,
      @JsonKey(name: "pale_first_second_prize") num paleFirstSecondPrize,
      @JsonKey(name: "pale_first_third_prize") num paleFirstThirdPrize,
      @JsonKey(name: "pale_second_third_prize") num paleSecondThirdPrize,
      @JsonKey(name: "tripleta_prize") num tripletaPrize});

  @override
  $LotteryEntityCopyWith<$Res> get lottery;
}

/// @nodoc
class __$$GroupStandPrizeEntityImplCopyWithImpl<$Res>
    extends _$GroupStandPrizeEntityCopyWithImpl<$Res,
        _$GroupStandPrizeEntityImpl>
    implements _$$GroupStandPrizeEntityImplCopyWith<$Res> {
  __$$GroupStandPrizeEntityImplCopyWithImpl(_$GroupStandPrizeEntityImpl _value,
      $Res Function(_$GroupStandPrizeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lottery = null,
    Object? quinielaFirstPrize = null,
    Object? quinielaSecondPrize = null,
    Object? quinielaThirdPrize = null,
    Object? paleFirstSecondPrize = null,
    Object? paleFirstThirdPrize = null,
    Object? paleSecondThirdPrize = null,
    Object? tripletaPrize = null,
  }) {
    return _then(_$GroupStandPrizeEntityImpl(
      lottery: null == lottery
          ? _value.lottery
          : lottery // ignore: cast_nullable_to_non_nullable
              as LotteryEntity,
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
      tripletaPrize: null == tripletaPrize
          ? _value.tripletaPrize
          : tripletaPrize // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupStandPrizeEntityImpl implements _GroupStandPrizeEntity {
  const _$GroupStandPrizeEntityImpl(
      {@JsonKey(name: "lotteries") required this.lottery,
      @JsonKey(name: "quiniela_first_prize") required this.quinielaFirstPrize,
      @JsonKey(name: "quiniela_second_prize") required this.quinielaSecondPrize,
      @JsonKey(name: "quiniela_third_prize") required this.quinielaThirdPrize,
      @JsonKey(name: "pale_first_second_prize")
      required this.paleFirstSecondPrize,
      @JsonKey(name: "pale_first_third_prize")
      required this.paleFirstThirdPrize,
      @JsonKey(name: "pale_second_third_prize")
      required this.paleSecondThirdPrize,
      @JsonKey(name: "tripleta_prize") required this.tripletaPrize});

  factory _$GroupStandPrizeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupStandPrizeEntityImplFromJson(json);

  @override
  @JsonKey(name: "lotteries")
  final LotteryEntity lottery;
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
  final num tripletaPrize;

  @override
  String toString() {
    return 'GroupStandPrizeEntity(lottery: $lottery, quinielaFirstPrize: $quinielaFirstPrize, quinielaSecondPrize: $quinielaSecondPrize, quinielaThirdPrize: $quinielaThirdPrize, paleFirstSecondPrize: $paleFirstSecondPrize, paleFirstThirdPrize: $paleFirstThirdPrize, paleSecondThirdPrize: $paleSecondThirdPrize, tripletaPrize: $tripletaPrize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupStandPrizeEntityImpl &&
            (identical(other.lottery, lottery) || other.lottery == lottery) &&
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
            (identical(other.tripletaPrize, tripletaPrize) ||
                other.tripletaPrize == tripletaPrize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lottery,
      quinielaFirstPrize,
      quinielaSecondPrize,
      quinielaThirdPrize,
      paleFirstSecondPrize,
      paleFirstThirdPrize,
      paleSecondThirdPrize,
      tripletaPrize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupStandPrizeEntityImplCopyWith<_$GroupStandPrizeEntityImpl>
      get copyWith => __$$GroupStandPrizeEntityImplCopyWithImpl<
          _$GroupStandPrizeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupStandPrizeEntityImplToJson(
      this,
    );
  }
}

abstract class _GroupStandPrizeEntity implements GroupStandPrizeEntity {
  const factory _GroupStandPrizeEntity(
          {@JsonKey(name: "lotteries") required final LotteryEntity lottery,
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
          @JsonKey(name: "tripleta_prize") required final num tripletaPrize}) =
      _$GroupStandPrizeEntityImpl;

  factory _GroupStandPrizeEntity.fromJson(Map<String, dynamic> json) =
      _$GroupStandPrizeEntityImpl.fromJson;

  @override
  @JsonKey(name: "lotteries")
  LotteryEntity get lottery;
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
  num get tripletaPrize;
  @override
  @JsonKey(ignore: true)
  _$$GroupStandPrizeEntityImplCopyWith<_$GroupStandPrizeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
