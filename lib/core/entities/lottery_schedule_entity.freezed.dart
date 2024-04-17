// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LotteryScheduleEntity _$LotteryScheduleEntityFromJson(
    Map<String, dynamic> json) {
  return _LotteryScheduleEntity.fromJson(json);
}

/// @nodoc
mixin _$LotteryScheduleEntity {
  @JsonKey(name: "lottery_id")
  String get lotteryId => throw _privateConstructorUsedError;
  @JsonKey(name: "lottery_day_id")
  int get lotteryDayId => throw _privateConstructorUsedError;
  @JsonKey(name: "time_open")
  String get timeOpen => throw _privateConstructorUsedError;
  @JsonKey(name: "time_close")
  String get timeClose => throw _privateConstructorUsedError;
  @JsonKey(name: "is_closed")
  bool get isClosed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryScheduleEntityCopyWith<LotteryScheduleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryScheduleEntityCopyWith<$Res> {
  factory $LotteryScheduleEntityCopyWith(LotteryScheduleEntity value,
          $Res Function(LotteryScheduleEntity) then) =
      _$LotteryScheduleEntityCopyWithImpl<$Res, LotteryScheduleEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "lottery_id") String lotteryId,
      @JsonKey(name: "lottery_day_id") int lotteryDayId,
      @JsonKey(name: "time_open") String timeOpen,
      @JsonKey(name: "time_close") String timeClose,
      @JsonKey(name: "is_closed") bool isClosed});
}

/// @nodoc
class _$LotteryScheduleEntityCopyWithImpl<$Res,
        $Val extends LotteryScheduleEntity>
    implements $LotteryScheduleEntityCopyWith<$Res> {
  _$LotteryScheduleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryId = null,
    Object? lotteryDayId = null,
    Object? timeOpen = null,
    Object? timeClose = null,
    Object? isClosed = null,
  }) {
    return _then(_value.copyWith(
      lotteryId: null == lotteryId
          ? _value.lotteryId
          : lotteryId // ignore: cast_nullable_to_non_nullable
              as String,
      lotteryDayId: null == lotteryDayId
          ? _value.lotteryDayId
          : lotteryDayId // ignore: cast_nullable_to_non_nullable
              as int,
      timeOpen: null == timeOpen
          ? _value.timeOpen
          : timeOpen // ignore: cast_nullable_to_non_nullable
              as String,
      timeClose: null == timeClose
          ? _value.timeClose
          : timeClose // ignore: cast_nullable_to_non_nullable
              as String,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryScheduleEntityImplCopyWith<$Res>
    implements $LotteryScheduleEntityCopyWith<$Res> {
  factory _$$LotteryScheduleEntityImplCopyWith(
          _$LotteryScheduleEntityImpl value,
          $Res Function(_$LotteryScheduleEntityImpl) then) =
      __$$LotteryScheduleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lottery_id") String lotteryId,
      @JsonKey(name: "lottery_day_id") int lotteryDayId,
      @JsonKey(name: "time_open") String timeOpen,
      @JsonKey(name: "time_close") String timeClose,
      @JsonKey(name: "is_closed") bool isClosed});
}

/// @nodoc
class __$$LotteryScheduleEntityImplCopyWithImpl<$Res>
    extends _$LotteryScheduleEntityCopyWithImpl<$Res,
        _$LotteryScheduleEntityImpl>
    implements _$$LotteryScheduleEntityImplCopyWith<$Res> {
  __$$LotteryScheduleEntityImplCopyWithImpl(_$LotteryScheduleEntityImpl _value,
      $Res Function(_$LotteryScheduleEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryId = null,
    Object? lotteryDayId = null,
    Object? timeOpen = null,
    Object? timeClose = null,
    Object? isClosed = null,
  }) {
    return _then(_$LotteryScheduleEntityImpl(
      lotteryId: null == lotteryId
          ? _value.lotteryId
          : lotteryId // ignore: cast_nullable_to_non_nullable
              as String,
      lotteryDayId: null == lotteryDayId
          ? _value.lotteryDayId
          : lotteryDayId // ignore: cast_nullable_to_non_nullable
              as int,
      timeOpen: null == timeOpen
          ? _value.timeOpen
          : timeOpen // ignore: cast_nullable_to_non_nullable
              as String,
      timeClose: null == timeClose
          ? _value.timeClose
          : timeClose // ignore: cast_nullable_to_non_nullable
              as String,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryScheduleEntityImpl implements _LotteryScheduleEntity {
  const _$LotteryScheduleEntityImpl(
      {@JsonKey(name: "lottery_id") required this.lotteryId,
      @JsonKey(name: "lottery_day_id") required this.lotteryDayId,
      @JsonKey(name: "time_open") required this.timeOpen,
      @JsonKey(name: "time_close") required this.timeClose,
      @JsonKey(name: "is_closed") required this.isClosed});

  factory _$LotteryScheduleEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryScheduleEntityImplFromJson(json);

  @override
  @JsonKey(name: "lottery_id")
  final String lotteryId;
  @override
  @JsonKey(name: "lottery_day_id")
  final int lotteryDayId;
  @override
  @JsonKey(name: "time_open")
  final String timeOpen;
  @override
  @JsonKey(name: "time_close")
  final String timeClose;
  @override
  @JsonKey(name: "is_closed")
  final bool isClosed;

  @override
  String toString() {
    return 'LotteryScheduleEntity(lotteryId: $lotteryId, lotteryDayId: $lotteryDayId, timeOpen: $timeOpen, timeClose: $timeClose, isClosed: $isClosed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryScheduleEntityImpl &&
            (identical(other.lotteryId, lotteryId) ||
                other.lotteryId == lotteryId) &&
            (identical(other.lotteryDayId, lotteryDayId) ||
                other.lotteryDayId == lotteryDayId) &&
            (identical(other.timeOpen, timeOpen) ||
                other.timeOpen == timeOpen) &&
            (identical(other.timeClose, timeClose) ||
                other.timeClose == timeClose) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lotteryId, lotteryDayId, timeOpen, timeClose, isClosed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryScheduleEntityImplCopyWith<_$LotteryScheduleEntityImpl>
      get copyWith => __$$LotteryScheduleEntityImplCopyWithImpl<
          _$LotteryScheduleEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryScheduleEntityImplToJson(
      this,
    );
  }
}

abstract class _LotteryScheduleEntity implements LotteryScheduleEntity {
  const factory _LotteryScheduleEntity(
          {@JsonKey(name: "lottery_id") required final String lotteryId,
          @JsonKey(name: "lottery_day_id") required final int lotteryDayId,
          @JsonKey(name: "time_open") required final String timeOpen,
          @JsonKey(name: "time_close") required final String timeClose,
          @JsonKey(name: "is_closed") required final bool isClosed}) =
      _$LotteryScheduleEntityImpl;

  factory _LotteryScheduleEntity.fromJson(Map<String, dynamic> json) =
      _$LotteryScheduleEntityImpl.fromJson;

  @override
  @JsonKey(name: "lottery_id")
  String get lotteryId;
  @override
  @JsonKey(name: "lottery_day_id")
  int get lotteryDayId;
  @override
  @JsonKey(name: "time_open")
  String get timeOpen;
  @override
  @JsonKey(name: "time_close")
  String get timeClose;
  @override
  @JsonKey(name: "is_closed")
  bool get isClosed;
  @override
  @JsonKey(ignore: true)
  _$$LotteryScheduleEntityImplCopyWith<_$LotteryScheduleEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
