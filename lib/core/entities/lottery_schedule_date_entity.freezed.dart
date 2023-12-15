// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_schedule_date_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LotteryScheduleDateEntity _$LotteryScheduleDateEntityFromJson(
    Map<String, dynamic> json) {
  return _LotteryScheduleDateEntity.fromJson(json);
}

/// @nodoc
mixin _$LotteryScheduleDateEntity {
  @JsonKey(name: "lottery_id")
  String get lotteryId => throw _privateConstructorUsedError;
  @JsonKey(name: "effective_date")
  DateTime get effectiveDate => throw _privateConstructorUsedError;
  @JsonKey(name: "time_open")
  String get timeOpen => throw _privateConstructorUsedError;
  @JsonKey(name: "time_close")
  String get timeClose => throw _privateConstructorUsedError;
  @JsonKey(name: "is_closed")
  bool get isClosed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryScheduleDateEntityCopyWith<LotteryScheduleDateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryScheduleDateEntityCopyWith<$Res> {
  factory $LotteryScheduleDateEntityCopyWith(LotteryScheduleDateEntity value,
          $Res Function(LotteryScheduleDateEntity) then) =
      _$LotteryScheduleDateEntityCopyWithImpl<$Res, LotteryScheduleDateEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "lottery_id") String lotteryId,
      @JsonKey(name: "effective_date") DateTime effectiveDate,
      @JsonKey(name: "time_open") String timeOpen,
      @JsonKey(name: "time_close") String timeClose,
      @JsonKey(name: "is_closed") bool isClosed});
}

/// @nodoc
class _$LotteryScheduleDateEntityCopyWithImpl<$Res,
        $Val extends LotteryScheduleDateEntity>
    implements $LotteryScheduleDateEntityCopyWith<$Res> {
  _$LotteryScheduleDateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryId = null,
    Object? effectiveDate = null,
    Object? timeOpen = null,
    Object? timeClose = null,
    Object? isClosed = null,
  }) {
    return _then(_value.copyWith(
      lotteryId: null == lotteryId
          ? _value.lotteryId
          : lotteryId // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveDate: null == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$LotteryScheduleDateEntityImplCopyWith<$Res>
    implements $LotteryScheduleDateEntityCopyWith<$Res> {
  factory _$$LotteryScheduleDateEntityImplCopyWith(
          _$LotteryScheduleDateEntityImpl value,
          $Res Function(_$LotteryScheduleDateEntityImpl) then) =
      __$$LotteryScheduleDateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lottery_id") String lotteryId,
      @JsonKey(name: "effective_date") DateTime effectiveDate,
      @JsonKey(name: "time_open") String timeOpen,
      @JsonKey(name: "time_close") String timeClose,
      @JsonKey(name: "is_closed") bool isClosed});
}

/// @nodoc
class __$$LotteryScheduleDateEntityImplCopyWithImpl<$Res>
    extends _$LotteryScheduleDateEntityCopyWithImpl<$Res,
        _$LotteryScheduleDateEntityImpl>
    implements _$$LotteryScheduleDateEntityImplCopyWith<$Res> {
  __$$LotteryScheduleDateEntityImplCopyWithImpl(
      _$LotteryScheduleDateEntityImpl _value,
      $Res Function(_$LotteryScheduleDateEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryId = null,
    Object? effectiveDate = null,
    Object? timeOpen = null,
    Object? timeClose = null,
    Object? isClosed = null,
  }) {
    return _then(_$LotteryScheduleDateEntityImpl(
      lotteryId: null == lotteryId
          ? _value.lotteryId
          : lotteryId // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveDate: null == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$LotteryScheduleDateEntityImpl implements _LotteryScheduleDateEntity {
  const _$LotteryScheduleDateEntityImpl(
      {@JsonKey(name: "lottery_id") required this.lotteryId,
      @JsonKey(name: "effective_date") required this.effectiveDate,
      @JsonKey(name: "time_open") required this.timeOpen,
      @JsonKey(name: "time_close") required this.timeClose,
      @JsonKey(name: "is_closed") required this.isClosed});

  factory _$LotteryScheduleDateEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryScheduleDateEntityImplFromJson(json);

  @override
  @JsonKey(name: "lottery_id")
  final String lotteryId;
  @override
  @JsonKey(name: "effective_date")
  final DateTime effectiveDate;
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
    return 'LotteryScheduleDateEntity(lotteryId: $lotteryId, effectiveDate: $effectiveDate, timeOpen: $timeOpen, timeClose: $timeClose, isClosed: $isClosed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryScheduleDateEntityImpl &&
            (identical(other.lotteryId, lotteryId) ||
                other.lotteryId == lotteryId) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
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
      runtimeType, lotteryId, effectiveDate, timeOpen, timeClose, isClosed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryScheduleDateEntityImplCopyWith<_$LotteryScheduleDateEntityImpl>
      get copyWith => __$$LotteryScheduleDateEntityImplCopyWithImpl<
          _$LotteryScheduleDateEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryScheduleDateEntityImplToJson(
      this,
    );
  }
}

abstract class _LotteryScheduleDateEntity implements LotteryScheduleDateEntity {
  const factory _LotteryScheduleDateEntity(
      {@JsonKey(name: "lottery_id") required final String lotteryId,
      @JsonKey(name: "effective_date") required final DateTime effectiveDate,
      @JsonKey(name: "time_open") required final String timeOpen,
      @JsonKey(name: "time_close") required final String timeClose,
      @JsonKey(name: "is_closed")
      required final bool isClosed}) = _$LotteryScheduleDateEntityImpl;

  factory _LotteryScheduleDateEntity.fromJson(Map<String, dynamic> json) =
      _$LotteryScheduleDateEntityImpl.fromJson;

  @override
  @JsonKey(name: "lottery_id")
  String get lotteryId;
  @override
  @JsonKey(name: "effective_date")
  DateTime get effectiveDate;
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
  _$$LotteryScheduleDateEntityImplCopyWith<_$LotteryScheduleDateEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
