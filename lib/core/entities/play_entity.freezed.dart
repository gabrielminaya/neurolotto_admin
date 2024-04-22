// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayEntity _$PlayEntityFromJson(Map<String, dynamic> json) {
  return _PlayEntity.fromJson(json);
}

/// @nodoc
mixin _$PlayEntity {
  @JsonKey(name: "play_number")
  String get playNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "play_amount")
  num get playAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "lottery_names")
  List<String> get lotteryNames => throw _privateConstructorUsedError;
  @JsonKey(name: "lottery_ids")
  List<String> get lotteryIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayEntityCopyWith<PlayEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayEntityCopyWith<$Res> {
  factory $PlayEntityCopyWith(
          PlayEntity value, $Res Function(PlayEntity) then) =
      _$PlayEntityCopyWithImpl<$Res, PlayEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "play_number") String playNumber,
      @JsonKey(name: "play_amount") num playAmount,
      @JsonKey(name: "lottery_names") List<String> lotteryNames,
      @JsonKey(name: "lottery_ids") List<String> lotteryIds});
}

/// @nodoc
class _$PlayEntityCopyWithImpl<$Res, $Val extends PlayEntity>
    implements $PlayEntityCopyWith<$Res> {
  _$PlayEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playNumber = null,
    Object? playAmount = null,
    Object? lotteryNames = null,
    Object? lotteryIds = null,
  }) {
    return _then(_value.copyWith(
      playNumber: null == playNumber
          ? _value.playNumber
          : playNumber // ignore: cast_nullable_to_non_nullable
              as String,
      playAmount: null == playAmount
          ? _value.playAmount
          : playAmount // ignore: cast_nullable_to_non_nullable
              as num,
      lotteryNames: null == lotteryNames
          ? _value.lotteryNames
          : lotteryNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lotteryIds: null == lotteryIds
          ? _value.lotteryIds
          : lotteryIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayEntityImplCopyWith<$Res>
    implements $PlayEntityCopyWith<$Res> {
  factory _$$PlayEntityImplCopyWith(
          _$PlayEntityImpl value, $Res Function(_$PlayEntityImpl) then) =
      __$$PlayEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "play_number") String playNumber,
      @JsonKey(name: "play_amount") num playAmount,
      @JsonKey(name: "lottery_names") List<String> lotteryNames,
      @JsonKey(name: "lottery_ids") List<String> lotteryIds});
}

/// @nodoc
class __$$PlayEntityImplCopyWithImpl<$Res>
    extends _$PlayEntityCopyWithImpl<$Res, _$PlayEntityImpl>
    implements _$$PlayEntityImplCopyWith<$Res> {
  __$$PlayEntityImplCopyWithImpl(
      _$PlayEntityImpl _value, $Res Function(_$PlayEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playNumber = null,
    Object? playAmount = null,
    Object? lotteryNames = null,
    Object? lotteryIds = null,
  }) {
    return _then(_$PlayEntityImpl(
      playNumber: null == playNumber
          ? _value.playNumber
          : playNumber // ignore: cast_nullable_to_non_nullable
              as String,
      playAmount: null == playAmount
          ? _value.playAmount
          : playAmount // ignore: cast_nullable_to_non_nullable
              as num,
      lotteryNames: null == lotteryNames
          ? _value._lotteryNames
          : lotteryNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lotteryIds: null == lotteryIds
          ? _value._lotteryIds
          : lotteryIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayEntityImpl implements _PlayEntity {
  const _$PlayEntityImpl(
      {@JsonKey(name: "play_number") required this.playNumber,
      @JsonKey(name: "play_amount") required this.playAmount,
      @JsonKey(name: "lottery_names") required final List<String> lotteryNames,
      @JsonKey(name: "lottery_ids") required final List<String> lotteryIds})
      : _lotteryNames = lotteryNames,
        _lotteryIds = lotteryIds;

  factory _$PlayEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayEntityImplFromJson(json);

  @override
  @JsonKey(name: "play_number")
  final String playNumber;
  @override
  @JsonKey(name: "play_amount")
  final num playAmount;
  final List<String> _lotteryNames;
  @override
  @JsonKey(name: "lottery_names")
  List<String> get lotteryNames {
    if (_lotteryNames is EqualUnmodifiableListView) return _lotteryNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lotteryNames);
  }

  final List<String> _lotteryIds;
  @override
  @JsonKey(name: "lottery_ids")
  List<String> get lotteryIds {
    if (_lotteryIds is EqualUnmodifiableListView) return _lotteryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lotteryIds);
  }

  @override
  String toString() {
    return 'PlayEntity(playNumber: $playNumber, playAmount: $playAmount, lotteryNames: $lotteryNames, lotteryIds: $lotteryIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayEntityImpl &&
            (identical(other.playNumber, playNumber) ||
                other.playNumber == playNumber) &&
            (identical(other.playAmount, playAmount) ||
                other.playAmount == playAmount) &&
            const DeepCollectionEquality()
                .equals(other._lotteryNames, _lotteryNames) &&
            const DeepCollectionEquality()
                .equals(other._lotteryIds, _lotteryIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      playNumber,
      playAmount,
      const DeepCollectionEquality().hash(_lotteryNames),
      const DeepCollectionEquality().hash(_lotteryIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayEntityImplCopyWith<_$PlayEntityImpl> get copyWith =>
      __$$PlayEntityImplCopyWithImpl<_$PlayEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayEntityImplToJson(
      this,
    );
  }
}

abstract class _PlayEntity implements PlayEntity {
  const factory _PlayEntity(
      {@JsonKey(name: "play_number") required final String playNumber,
      @JsonKey(name: "play_amount") required final num playAmount,
      @JsonKey(name: "lottery_names") required final List<String> lotteryNames,
      @JsonKey(name: "lottery_ids")
      required final List<String> lotteryIds}) = _$PlayEntityImpl;

  factory _PlayEntity.fromJson(Map<String, dynamic> json) =
      _$PlayEntityImpl.fromJson;

  @override
  @JsonKey(name: "play_number")
  String get playNumber;
  @override
  @JsonKey(name: "play_amount")
  num get playAmount;
  @override
  @JsonKey(name: "lottery_names")
  List<String> get lotteryNames;
  @override
  @JsonKey(name: "lottery_ids")
  List<String> get lotteryIds;
  @override
  @JsonKey(ignore: true)
  _$$PlayEntityImplCopyWith<_$PlayEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
