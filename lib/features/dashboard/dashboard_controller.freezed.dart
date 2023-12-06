// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<HotNumberEntity> get hotNumbers => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  bool get orderByQuantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardControllerStateCopyWith<DashboardControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardControllerStateCopyWith<$Res> {
  factory $DashboardControllerStateCopyWith(DashboardControllerState value,
          $Res Function(DashboardControllerState) then) =
      _$DashboardControllerStateCopyWithImpl<$Res, DashboardControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? failureMessage,
      List<HotNumberEntity> hotNumbers,
      DateTime selectedDate,
      bool orderByQuantity});
}

/// @nodoc
class _$DashboardControllerStateCopyWithImpl<$Res,
        $Val extends DashboardControllerState>
    implements $DashboardControllerStateCopyWith<$Res> {
  _$DashboardControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureMessage = freezed,
    Object? hotNumbers = null,
    Object? selectedDate = null,
    Object? orderByQuantity = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hotNumbers: null == hotNumbers
          ? _value.hotNumbers
          : hotNumbers // ignore: cast_nullable_to_non_nullable
              as List<HotNumberEntity>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderByQuantity: null == orderByQuantity
          ? _value.orderByQuantity
          : orderByQuantity // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardControllerStateImplCopyWith<$Res>
    implements $DashboardControllerStateCopyWith<$Res> {
  factory _$$DashboardControllerStateImplCopyWith(
          _$DashboardControllerStateImpl value,
          $Res Function(_$DashboardControllerStateImpl) then) =
      __$$DashboardControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? failureMessage,
      List<HotNumberEntity> hotNumbers,
      DateTime selectedDate,
      bool orderByQuantity});
}

/// @nodoc
class __$$DashboardControllerStateImplCopyWithImpl<$Res>
    extends _$DashboardControllerStateCopyWithImpl<$Res,
        _$DashboardControllerStateImpl>
    implements _$$DashboardControllerStateImplCopyWith<$Res> {
  __$$DashboardControllerStateImplCopyWithImpl(
      _$DashboardControllerStateImpl _value,
      $Res Function(_$DashboardControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureMessage = freezed,
    Object? hotNumbers = null,
    Object? selectedDate = null,
    Object? orderByQuantity = null,
  }) {
    return _then(_$DashboardControllerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      hotNumbers: null == hotNumbers
          ? _value._hotNumbers
          : hotNumbers // ignore: cast_nullable_to_non_nullable
              as List<HotNumberEntity>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderByQuantity: null == orderByQuantity
          ? _value.orderByQuantity
          : orderByQuantity // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DashboardControllerStateImpl
    with DiagnosticableTreeMixin
    implements _DashboardControllerState {
  _$DashboardControllerStateImpl(
      {this.isLoading = false,
      this.failureMessage = null,
      final List<HotNumberEntity> hotNumbers = const [],
      required this.selectedDate,
      this.orderByQuantity = true})
      : _hotNumbers = hotNumbers;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  final List<HotNumberEntity> _hotNumbers;
  @override
  @JsonKey()
  List<HotNumberEntity> get hotNumbers {
    if (_hotNumbers is EqualUnmodifiableListView) return _hotNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotNumbers);
  }

  @override
  final DateTime selectedDate;
  @override
  @JsonKey()
  final bool orderByQuantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardControllerState(isLoading: $isLoading, failureMessage: $failureMessage, hotNumbers: $hotNumbers, selectedDate: $selectedDate, orderByQuantity: $orderByQuantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('hotNumbers', hotNumbers))
      ..add(DiagnosticsProperty('selectedDate', selectedDate))
      ..add(DiagnosticsProperty('orderByQuantity', orderByQuantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality()
                .equals(other._hotNumbers, _hotNumbers) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.orderByQuantity, orderByQuantity) ||
                other.orderByQuantity == orderByQuantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      failureMessage,
      const DeepCollectionEquality().hash(_hotNumbers),
      selectedDate,
      orderByQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardControllerStateImplCopyWith<_$DashboardControllerStateImpl>
      get copyWith => __$$DashboardControllerStateImplCopyWithImpl<
          _$DashboardControllerStateImpl>(this, _$identity);
}

abstract class _DashboardControllerState implements DashboardControllerState {
  factory _DashboardControllerState(
      {final bool isLoading,
      final String? failureMessage,
      final List<HotNumberEntity> hotNumbers,
      required final DateTime selectedDate,
      final bool orderByQuantity}) = _$DashboardControllerStateImpl;

  @override
  bool get isLoading;
  @override
  String? get failureMessage;
  @override
  List<HotNumberEntity> get hotNumbers;
  @override
  DateTime get selectedDate;
  @override
  bool get orderByQuantity;
  @override
  @JsonKey(ignore: true)
  _$$DashboardControllerStateImplCopyWith<_$DashboardControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
