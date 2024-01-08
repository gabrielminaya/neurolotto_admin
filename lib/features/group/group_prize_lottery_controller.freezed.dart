// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_prize_lottery_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupPrizeLotteryControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isActionLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<GroupStandPrizeEntity> get prizes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupPrizeLotteryControllerStateCopyWith<GroupPrizeLotteryControllerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupPrizeLotteryControllerStateCopyWith<$Res> {
  factory $GroupPrizeLotteryControllerStateCopyWith(
          GroupPrizeLotteryControllerState value,
          $Res Function(GroupPrizeLotteryControllerState) then) =
      _$GroupPrizeLotteryControllerStateCopyWithImpl<$Res,
          GroupPrizeLotteryControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<GroupStandPrizeEntity> prizes});
}

/// @nodoc
class _$GroupPrizeLotteryControllerStateCopyWithImpl<$Res,
        $Val extends GroupPrizeLotteryControllerState>
    implements $GroupPrizeLotteryControllerStateCopyWith<$Res> {
  _$GroupPrizeLotteryControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? failureMessage = freezed,
    Object? prizes = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isActionLoading: null == isActionLoading
          ? _value.isActionLoading
          : isActionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      prizes: null == prizes
          ? _value.prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as List<GroupStandPrizeEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupPrizeLotteryControllerStateImplCopyWith<$Res>
    implements $GroupPrizeLotteryControllerStateCopyWith<$Res> {
  factory _$$GroupPrizeLotteryControllerStateImplCopyWith(
          _$GroupPrizeLotteryControllerStateImpl value,
          $Res Function(_$GroupPrizeLotteryControllerStateImpl) then) =
      __$$GroupPrizeLotteryControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<GroupStandPrizeEntity> prizes});
}

/// @nodoc
class __$$GroupPrizeLotteryControllerStateImplCopyWithImpl<$Res>
    extends _$GroupPrizeLotteryControllerStateCopyWithImpl<$Res,
        _$GroupPrizeLotteryControllerStateImpl>
    implements _$$GroupPrizeLotteryControllerStateImplCopyWith<$Res> {
  __$$GroupPrizeLotteryControllerStateImplCopyWithImpl(
      _$GroupPrizeLotteryControllerStateImpl _value,
      $Res Function(_$GroupPrizeLotteryControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? failureMessage = freezed,
    Object? prizes = null,
  }) {
    return _then(_$GroupPrizeLotteryControllerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isActionLoading: null == isActionLoading
          ? _value.isActionLoading
          : isActionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      prizes: null == prizes
          ? _value._prizes
          : prizes // ignore: cast_nullable_to_non_nullable
              as List<GroupStandPrizeEntity>,
    ));
  }
}

/// @nodoc

class _$GroupPrizeLotteryControllerStateImpl
    with DiagnosticableTreeMixin
    implements _GroupPrizeLotteryControllerState {
  const _$GroupPrizeLotteryControllerStateImpl(
      {this.isLoading = false,
      this.isActionLoading = false,
      this.failureMessage = null,
      final List<GroupStandPrizeEntity> prizes = const []})
      : _prizes = prizes;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isActionLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  final List<GroupStandPrizeEntity> _prizes;
  @override
  @JsonKey()
  List<GroupStandPrizeEntity> get prizes {
    if (_prizes is EqualUnmodifiableListView) return _prizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prizes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupPrizeLotteryControllerState(isLoading: $isLoading, isActionLoading: $isActionLoading, failureMessage: $failureMessage, prizes: $prizes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupPrizeLotteryControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isActionLoading', isActionLoading))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('prizes', prizes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupPrizeLotteryControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isActionLoading, isActionLoading) ||
                other.isActionLoading == isActionLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality().equals(other._prizes, _prizes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isActionLoading,
      failureMessage, const DeepCollectionEquality().hash(_prizes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupPrizeLotteryControllerStateImplCopyWith<
          _$GroupPrizeLotteryControllerStateImpl>
      get copyWith => __$$GroupPrizeLotteryControllerStateImplCopyWithImpl<
          _$GroupPrizeLotteryControllerStateImpl>(this, _$identity);
}

abstract class _GroupPrizeLotteryControllerState
    implements GroupPrizeLotteryControllerState {
  const factory _GroupPrizeLotteryControllerState(
          {final bool isLoading,
          final bool isActionLoading,
          final String? failureMessage,
          final List<GroupStandPrizeEntity> prizes}) =
      _$GroupPrizeLotteryControllerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isActionLoading;
  @override
  String? get failureMessage;
  @override
  List<GroupStandPrizeEntity> get prizes;
  @override
  @JsonKey(ignore: true)
  _$$GroupPrizeLotteryControllerStateImplCopyWith<
          _$GroupPrizeLotteryControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
