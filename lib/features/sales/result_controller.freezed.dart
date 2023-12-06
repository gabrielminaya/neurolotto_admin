// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isResultLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<LotteryEntity> get lotteries => throw _privateConstructorUsedError;
  List<LotteryResultEntity> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultControllerStateCopyWith<ResultControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultControllerStateCopyWith<$Res> {
  factory $ResultControllerStateCopyWith(ResultControllerState value,
          $Res Function(ResultControllerState) then) =
      _$ResultControllerStateCopyWithImpl<$Res, ResultControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isResultLoading,
      String? failureMessage,
      List<LotteryEntity> lotteries,
      List<LotteryResultEntity> results});
}

/// @nodoc
class _$ResultControllerStateCopyWithImpl<$Res,
        $Val extends ResultControllerState>
    implements $ResultControllerStateCopyWith<$Res> {
  _$ResultControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isResultLoading = null,
    Object? failureMessage = freezed,
    Object? lotteries = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResultLoading: null == isResultLoading
          ? _value.isResultLoading
          : isResultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      lotteries: null == lotteries
          ? _value.lotteries
          : lotteries // ignore: cast_nullable_to_non_nullable
              as List<LotteryEntity>,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LotteryResultEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultControllerStateImplCopyWith<$Res>
    implements $ResultControllerStateCopyWith<$Res> {
  factory _$$ResultControllerStateImplCopyWith(
          _$ResultControllerStateImpl value,
          $Res Function(_$ResultControllerStateImpl) then) =
      __$$ResultControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isResultLoading,
      String? failureMessage,
      List<LotteryEntity> lotteries,
      List<LotteryResultEntity> results});
}

/// @nodoc
class __$$ResultControllerStateImplCopyWithImpl<$Res>
    extends _$ResultControllerStateCopyWithImpl<$Res,
        _$ResultControllerStateImpl>
    implements _$$ResultControllerStateImplCopyWith<$Res> {
  __$$ResultControllerStateImplCopyWithImpl(_$ResultControllerStateImpl _value,
      $Res Function(_$ResultControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isResultLoading = null,
    Object? failureMessage = freezed,
    Object? lotteries = null,
    Object? results = null,
  }) {
    return _then(_$ResultControllerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResultLoading: null == isResultLoading
          ? _value.isResultLoading
          : isResultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      lotteries: null == lotteries
          ? _value._lotteries
          : lotteries // ignore: cast_nullable_to_non_nullable
              as List<LotteryEntity>,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LotteryResultEntity>,
    ));
  }
}

/// @nodoc

class _$ResultControllerStateImpl
    with DiagnosticableTreeMixin
    implements _ResultControllerState {
  const _$ResultControllerStateImpl(
      {this.isLoading = false,
      this.isResultLoading = false,
      this.failureMessage = null,
      final List<LotteryEntity> lotteries = const [],
      final List<LotteryResultEntity> results = const []})
      : _lotteries = lotteries,
        _results = results;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isResultLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  final List<LotteryEntity> _lotteries;
  @override
  @JsonKey()
  List<LotteryEntity> get lotteries {
    if (_lotteries is EqualUnmodifiableListView) return _lotteries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lotteries);
  }

  final List<LotteryResultEntity> _results;
  @override
  @JsonKey()
  List<LotteryResultEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultControllerState(isLoading: $isLoading, isResultLoading: $isResultLoading, failureMessage: $failureMessage, lotteries: $lotteries, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isResultLoading', isResultLoading))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('lotteries', lotteries))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isResultLoading, isResultLoading) ||
                other.isResultLoading == isResultLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality()
                .equals(other._lotteries, _lotteries) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isResultLoading,
      failureMessage,
      const DeepCollectionEquality().hash(_lotteries),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultControllerStateImplCopyWith<_$ResultControllerStateImpl>
      get copyWith => __$$ResultControllerStateImplCopyWithImpl<
          _$ResultControllerStateImpl>(this, _$identity);
}

abstract class _ResultControllerState implements ResultControllerState {
  const factory _ResultControllerState(
      {final bool isLoading,
      final bool isResultLoading,
      final String? failureMessage,
      final List<LotteryEntity> lotteries,
      final List<LotteryResultEntity> results}) = _$ResultControllerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isResultLoading;
  @override
  String? get failureMessage;
  @override
  List<LotteryEntity> get lotteries;
  @override
  List<LotteryResultEntity> get results;
  @override
  @JsonKey(ignore: true)
  _$$ResultControllerStateImplCopyWith<_$ResultControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
