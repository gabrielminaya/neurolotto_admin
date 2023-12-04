// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketControllerState {
  bool get isInitializedLoading => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isActionLoading => throw _privateConstructorUsedError;
  List<TicketEntity> get tickets => throw _privateConstructorUsedError;
  List<LotteryStandEntity> get lotteryStands =>
      throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketControllerStateCopyWith<TicketControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketControllerStateCopyWith<$Res> {
  factory $TicketControllerStateCopyWith(TicketControllerState value,
          $Res Function(TicketControllerState) then) =
      _$TicketControllerStateCopyWithImpl<$Res, TicketControllerState>;
  @useResult
  $Res call(
      {bool isInitializedLoading,
      bool isLoading,
      bool isActionLoading,
      List<TicketEntity> tickets,
      List<LotteryStandEntity> lotteryStands,
      String? failureMessage});
}

/// @nodoc
class _$TicketControllerStateCopyWithImpl<$Res,
        $Val extends TicketControllerState>
    implements $TicketControllerStateCopyWith<$Res> {
  _$TicketControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitializedLoading = null,
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? tickets = null,
    Object? lotteryStands = null,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isInitializedLoading: null == isInitializedLoading
          ? _value.isInitializedLoading
          : isInitializedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isActionLoading: null == isActionLoading
          ? _value.isActionLoading
          : isActionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketEntity>,
      lotteryStands: null == lotteryStands
          ? _value.lotteryStands
          : lotteryStands // ignore: cast_nullable_to_non_nullable
              as List<LotteryStandEntity>,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketControllerStateImplCopyWith<$Res>
    implements $TicketControllerStateCopyWith<$Res> {
  factory _$$TicketControllerStateImplCopyWith(
          _$TicketControllerStateImpl value,
          $Res Function(_$TicketControllerStateImpl) then) =
      __$$TicketControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInitializedLoading,
      bool isLoading,
      bool isActionLoading,
      List<TicketEntity> tickets,
      List<LotteryStandEntity> lotteryStands,
      String? failureMessage});
}

/// @nodoc
class __$$TicketControllerStateImplCopyWithImpl<$Res>
    extends _$TicketControllerStateCopyWithImpl<$Res,
        _$TicketControllerStateImpl>
    implements _$$TicketControllerStateImplCopyWith<$Res> {
  __$$TicketControllerStateImplCopyWithImpl(_$TicketControllerStateImpl _value,
      $Res Function(_$TicketControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitializedLoading = null,
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? tickets = null,
    Object? lotteryStands = null,
    Object? failureMessage = freezed,
  }) {
    return _then(_$TicketControllerStateImpl(
      isInitializedLoading: null == isInitializedLoading
          ? _value.isInitializedLoading
          : isInitializedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isActionLoading: null == isActionLoading
          ? _value.isActionLoading
          : isActionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketEntity>,
      lotteryStands: null == lotteryStands
          ? _value._lotteryStands
          : lotteryStands // ignore: cast_nullable_to_non_nullable
              as List<LotteryStandEntity>,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TicketControllerStateImpl
    with DiagnosticableTreeMixin
    implements _TicketControllerState {
  const _$TicketControllerStateImpl(
      {this.isInitializedLoading = false,
      this.isLoading = false,
      this.isActionLoading = false,
      final List<TicketEntity> tickets = const [],
      final List<LotteryStandEntity> lotteryStands = const [],
      this.failureMessage = null})
      : _tickets = tickets,
        _lotteryStands = lotteryStands;

  @override
  @JsonKey()
  final bool isInitializedLoading;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isActionLoading;
  final List<TicketEntity> _tickets;
  @override
  @JsonKey()
  List<TicketEntity> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  final List<LotteryStandEntity> _lotteryStands;
  @override
  @JsonKey()
  List<LotteryStandEntity> get lotteryStands {
    if (_lotteryStands is EqualUnmodifiableListView) return _lotteryStands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lotteryStands);
  }

  @override
  @JsonKey()
  final String? failureMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketControllerState(isInitializedLoading: $isInitializedLoading, isLoading: $isLoading, isActionLoading: $isActionLoading, tickets: $tickets, lotteryStands: $lotteryStands, failureMessage: $failureMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TicketControllerState'))
      ..add(DiagnosticsProperty('isInitializedLoading', isInitializedLoading))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isActionLoading', isActionLoading))
      ..add(DiagnosticsProperty('tickets', tickets))
      ..add(DiagnosticsProperty('lotteryStands', lotteryStands))
      ..add(DiagnosticsProperty('failureMessage', failureMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketControllerStateImpl &&
            (identical(other.isInitializedLoading, isInitializedLoading) ||
                other.isInitializedLoading == isInitializedLoading) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isActionLoading, isActionLoading) ||
                other.isActionLoading == isActionLoading) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            const DeepCollectionEquality()
                .equals(other._lotteryStands, _lotteryStands) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInitializedLoading,
      isLoading,
      isActionLoading,
      const DeepCollectionEquality().hash(_tickets),
      const DeepCollectionEquality().hash(_lotteryStands),
      failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketControllerStateImplCopyWith<_$TicketControllerStateImpl>
      get copyWith => __$$TicketControllerStateImplCopyWithImpl<
          _$TicketControllerStateImpl>(this, _$identity);
}

abstract class _TicketControllerState implements TicketControllerState {
  const factory _TicketControllerState(
      {final bool isInitializedLoading,
      final bool isLoading,
      final bool isActionLoading,
      final List<TicketEntity> tickets,
      final List<LotteryStandEntity> lotteryStands,
      final String? failureMessage}) = _$TicketControllerStateImpl;

  @override
  bool get isInitializedLoading;
  @override
  bool get isLoading;
  @override
  bool get isActionLoading;
  @override
  List<TicketEntity> get tickets;
  @override
  List<LotteryStandEntity> get lotteryStands;
  @override
  String? get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$TicketControllerStateImplCopyWith<_$TicketControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
