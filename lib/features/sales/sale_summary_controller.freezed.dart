// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_summary_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaleSummaryControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isActionLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<SaleEntity> get sales => throw _privateConstructorUsedError;
  List<GroupEntity> get groups => throw _privateConstructorUsedError;
  List<LotteryStandEntity> get lotteryStands =>
      throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaleSummaryControllerStateCopyWith<SaleSummaryControllerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleSummaryControllerStateCopyWith<$Res> {
  factory $SaleSummaryControllerStateCopyWith(SaleSummaryControllerState value,
          $Res Function(SaleSummaryControllerState) then) =
      _$SaleSummaryControllerStateCopyWithImpl<$Res,
          SaleSummaryControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<SaleEntity> sales,
      List<GroupEntity> groups,
      List<LotteryStandEntity> lotteryStands,
      DateTime selectedDate});
}

/// @nodoc
class _$SaleSummaryControllerStateCopyWithImpl<$Res,
        $Val extends SaleSummaryControllerState>
    implements $SaleSummaryControllerStateCopyWith<$Res> {
  _$SaleSummaryControllerStateCopyWithImpl(this._value, this._then);

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
    Object? sales = null,
    Object? groups = null,
    Object? lotteryStands = null,
    Object? selectedDate = null,
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
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as List<SaleEntity>,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      lotteryStands: null == lotteryStands
          ? _value.lotteryStands
          : lotteryStands // ignore: cast_nullable_to_non_nullable
              as List<LotteryStandEntity>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleSummaryControllerStateImplCopyWith<$Res>
    implements $SaleSummaryControllerStateCopyWith<$Res> {
  factory _$$SaleSummaryControllerStateImplCopyWith(
          _$SaleSummaryControllerStateImpl value,
          $Res Function(_$SaleSummaryControllerStateImpl) then) =
      __$$SaleSummaryControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<SaleEntity> sales,
      List<GroupEntity> groups,
      List<LotteryStandEntity> lotteryStands,
      DateTime selectedDate});
}

/// @nodoc
class __$$SaleSummaryControllerStateImplCopyWithImpl<$Res>
    extends _$SaleSummaryControllerStateCopyWithImpl<$Res,
        _$SaleSummaryControllerStateImpl>
    implements _$$SaleSummaryControllerStateImplCopyWith<$Res> {
  __$$SaleSummaryControllerStateImplCopyWithImpl(
      _$SaleSummaryControllerStateImpl _value,
      $Res Function(_$SaleSummaryControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? failureMessage = freezed,
    Object? sales = null,
    Object? groups = null,
    Object? lotteryStands = null,
    Object? selectedDate = null,
  }) {
    return _then(_$SaleSummaryControllerStateImpl(
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
      sales: null == sales
          ? _value._sales
          : sales // ignore: cast_nullable_to_non_nullable
              as List<SaleEntity>,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      lotteryStands: null == lotteryStands
          ? _value._lotteryStands
          : lotteryStands // ignore: cast_nullable_to_non_nullable
              as List<LotteryStandEntity>,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SaleSummaryControllerStateImpl
    with DiagnosticableTreeMixin
    implements _SaleSummaryControllerState {
  const _$SaleSummaryControllerStateImpl(
      {this.isLoading = false,
      this.isActionLoading = false,
      this.failureMessage = null,
      final List<SaleEntity> sales = const [],
      final List<GroupEntity> groups = const [],
      final List<LotteryStandEntity> lotteryStands = const [],
      required this.selectedDate})
      : _sales = sales,
        _groups = groups,
        _lotteryStands = lotteryStands;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isActionLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  final List<SaleEntity> _sales;
  @override
  @JsonKey()
  List<SaleEntity> get sales {
    if (_sales is EqualUnmodifiableListView) return _sales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sales);
  }

  final List<GroupEntity> _groups;
  @override
  @JsonKey()
  List<GroupEntity> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
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
  final DateTime selectedDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaleSummaryControllerState(isLoading: $isLoading, isActionLoading: $isActionLoading, failureMessage: $failureMessage, sales: $sales, groups: $groups, lotteryStands: $lotteryStands, selectedDate: $selectedDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SaleSummaryControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isActionLoading', isActionLoading))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('sales', sales))
      ..add(DiagnosticsProperty('groups', groups))
      ..add(DiagnosticsProperty('lotteryStands', lotteryStands))
      ..add(DiagnosticsProperty('selectedDate', selectedDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleSummaryControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isActionLoading, isActionLoading) ||
                other.isActionLoading == isActionLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality().equals(other._sales, _sales) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality()
                .equals(other._lotteryStands, _lotteryStands) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isActionLoading,
      failureMessage,
      const DeepCollectionEquality().hash(_sales),
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_lotteryStands),
      selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleSummaryControllerStateImplCopyWith<_$SaleSummaryControllerStateImpl>
      get copyWith => __$$SaleSummaryControllerStateImplCopyWithImpl<
          _$SaleSummaryControllerStateImpl>(this, _$identity);
}

abstract class _SaleSummaryControllerState
    implements SaleSummaryControllerState {
  const factory _SaleSummaryControllerState(
      {final bool isLoading,
      final bool isActionLoading,
      final String? failureMessage,
      final List<SaleEntity> sales,
      final List<GroupEntity> groups,
      final List<LotteryStandEntity> lotteryStands,
      required final DateTime selectedDate}) = _$SaleSummaryControllerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isActionLoading;
  @override
  String? get failureMessage;
  @override
  List<SaleEntity> get sales;
  @override
  List<GroupEntity> get groups;
  @override
  List<LotteryStandEntity> get lotteryStands;
  @override
  DateTime get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$SaleSummaryControllerStateImplCopyWith<_$SaleSummaryControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
