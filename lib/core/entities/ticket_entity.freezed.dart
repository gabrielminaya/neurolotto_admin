// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketEntity _$TicketEntityFromJson(Map<String, dynamic> json) {
  return _TicketEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sequence_number")
  int get sequenceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "state_id")
  String get stateId => throw _privateConstructorUsedError;
  @JsonKey(name: "lottery_stands")
  LotteryStandEntity get lotteryStand => throw _privateConstructorUsedError;
  @JsonKey(name: "ticket_states")
  TicketStateEntity get ticketState => throw _privateConstructorUsedError;
  @JsonKey(name: "canceled_by_name")
  String? get canceledByName => throw _privateConstructorUsedError;
  @JsonKey(name: "commission_rate")
  num? get commissionRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketEntityCopyWith<TicketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEntityCopyWith<$Res> {
  factory $TicketEntityCopyWith(
          TicketEntity value, $Res Function(TicketEntity) then) =
      _$TicketEntityCopyWithImpl<$Res, TicketEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "sequence_number") int sequenceNumber,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "state_id") String stateId,
      @JsonKey(name: "lottery_stands") LotteryStandEntity lotteryStand,
      @JsonKey(name: "ticket_states") TicketStateEntity ticketState,
      @JsonKey(name: "canceled_by_name") String? canceledByName,
      @JsonKey(name: "commission_rate") num? commissionRate});

  $LotteryStandEntityCopyWith<$Res> get lotteryStand;
  $TicketStateEntityCopyWith<$Res> get ticketState;
}

/// @nodoc
class _$TicketEntityCopyWithImpl<$Res, $Val extends TicketEntity>
    implements $TicketEntityCopyWith<$Res> {
  _$TicketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sequenceNumber = null,
    Object? createdAt = null,
    Object? stateId = null,
    Object? lotteryStand = null,
    Object? ticketState = null,
    Object? canceledByName = freezed,
    Object? commissionRate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sequenceNumber: null == sequenceNumber
          ? _value.sequenceNumber
          : sequenceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      lotteryStand: null == lotteryStand
          ? _value.lotteryStand
          : lotteryStand // ignore: cast_nullable_to_non_nullable
              as LotteryStandEntity,
      ticketState: null == ticketState
          ? _value.ticketState
          : ticketState // ignore: cast_nullable_to_non_nullable
              as TicketStateEntity,
      canceledByName: freezed == canceledByName
          ? _value.canceledByName
          : canceledByName // ignore: cast_nullable_to_non_nullable
              as String?,
      commissionRate: freezed == commissionRate
          ? _value.commissionRate
          : commissionRate // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotteryStandEntityCopyWith<$Res> get lotteryStand {
    return $LotteryStandEntityCopyWith<$Res>(_value.lotteryStand, (value) {
      return _then(_value.copyWith(lotteryStand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketStateEntityCopyWith<$Res> get ticketState {
    return $TicketStateEntityCopyWith<$Res>(_value.ticketState, (value) {
      return _then(_value.copyWith(ticketState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketEntityImplCopyWith<$Res>
    implements $TicketEntityCopyWith<$Res> {
  factory _$$TicketEntityImplCopyWith(
          _$TicketEntityImpl value, $Res Function(_$TicketEntityImpl) then) =
      __$$TicketEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "sequence_number") int sequenceNumber,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "state_id") String stateId,
      @JsonKey(name: "lottery_stands") LotteryStandEntity lotteryStand,
      @JsonKey(name: "ticket_states") TicketStateEntity ticketState,
      @JsonKey(name: "canceled_by_name") String? canceledByName,
      @JsonKey(name: "commission_rate") num? commissionRate});

  @override
  $LotteryStandEntityCopyWith<$Res> get lotteryStand;
  @override
  $TicketStateEntityCopyWith<$Res> get ticketState;
}

/// @nodoc
class __$$TicketEntityImplCopyWithImpl<$Res>
    extends _$TicketEntityCopyWithImpl<$Res, _$TicketEntityImpl>
    implements _$$TicketEntityImplCopyWith<$Res> {
  __$$TicketEntityImplCopyWithImpl(
      _$TicketEntityImpl _value, $Res Function(_$TicketEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sequenceNumber = null,
    Object? createdAt = null,
    Object? stateId = null,
    Object? lotteryStand = null,
    Object? ticketState = null,
    Object? canceledByName = freezed,
    Object? commissionRate = freezed,
  }) {
    return _then(_$TicketEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sequenceNumber: null == sequenceNumber
          ? _value.sequenceNumber
          : sequenceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      lotteryStand: null == lotteryStand
          ? _value.lotteryStand
          : lotteryStand // ignore: cast_nullable_to_non_nullable
              as LotteryStandEntity,
      ticketState: null == ticketState
          ? _value.ticketState
          : ticketState // ignore: cast_nullable_to_non_nullable
              as TicketStateEntity,
      canceledByName: freezed == canceledByName
          ? _value.canceledByName
          : canceledByName // ignore: cast_nullable_to_non_nullable
              as String?,
      commissionRate: freezed == commissionRate
          ? _value.commissionRate
          : commissionRate // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketEntityImpl implements _TicketEntity {
  const _$TicketEntityImpl(
      {required this.id,
      @JsonKey(name: "sequence_number") required this.sequenceNumber,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "state_id") required this.stateId,
      @JsonKey(name: "lottery_stands") required this.lotteryStand,
      @JsonKey(name: "ticket_states") required this.ticketState,
      @JsonKey(name: "canceled_by_name") required this.canceledByName,
      @JsonKey(name: "commission_rate") this.commissionRate = 0});

  factory _$TicketEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "sequence_number")
  final int sequenceNumber;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "state_id")
  final String stateId;
  @override
  @JsonKey(name: "lottery_stands")
  final LotteryStandEntity lotteryStand;
  @override
  @JsonKey(name: "ticket_states")
  final TicketStateEntity ticketState;
  @override
  @JsonKey(name: "canceled_by_name")
  final String? canceledByName;
  @override
  @JsonKey(name: "commission_rate")
  final num? commissionRate;

  @override
  String toString() {
    return 'TicketEntity(id: $id, sequenceNumber: $sequenceNumber, createdAt: $createdAt, stateId: $stateId, lotteryStand: $lotteryStand, ticketState: $ticketState, canceledByName: $canceledByName, commissionRate: $commissionRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sequenceNumber, sequenceNumber) ||
                other.sequenceNumber == sequenceNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.lotteryStand, lotteryStand) ||
                other.lotteryStand == lotteryStand) &&
            (identical(other.ticketState, ticketState) ||
                other.ticketState == ticketState) &&
            (identical(other.canceledByName, canceledByName) ||
                other.canceledByName == canceledByName) &&
            (identical(other.commissionRate, commissionRate) ||
                other.commissionRate == commissionRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sequenceNumber, createdAt,
      stateId, lotteryStand, ticketState, canceledByName, commissionRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketEntityImplCopyWith<_$TicketEntityImpl> get copyWith =>
      __$$TicketEntityImplCopyWithImpl<_$TicketEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketEntityImplToJson(
      this,
    );
  }
}

abstract class _TicketEntity implements TicketEntity {
  const factory _TicketEntity(
      {required final String id,
      @JsonKey(name: "sequence_number") required final int sequenceNumber,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      @JsonKey(name: "state_id") required final String stateId,
      @JsonKey(name: "lottery_stands")
      required final LotteryStandEntity lotteryStand,
      @JsonKey(name: "ticket_states")
      required final TicketStateEntity ticketState,
      @JsonKey(name: "canceled_by_name") required final String? canceledByName,
      @JsonKey(name: "commission_rate")
      final num? commissionRate}) = _$TicketEntityImpl;

  factory _TicketEntity.fromJson(Map<String, dynamic> json) =
      _$TicketEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "sequence_number")
  int get sequenceNumber;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "state_id")
  String get stateId;
  @override
  @JsonKey(name: "lottery_stands")
  LotteryStandEntity get lotteryStand;
  @override
  @JsonKey(name: "ticket_states")
  TicketStateEntity get ticketState;
  @override
  @JsonKey(name: "canceled_by_name")
  String? get canceledByName;
  @override
  @JsonKey(name: "commission_rate")
  num? get commissionRate;
  @override
  @JsonKey(ignore: true)
  _$$TicketEntityImplCopyWith<_$TicketEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
