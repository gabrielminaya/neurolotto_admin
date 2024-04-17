// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_plays_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResultPlayControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<ResultPlayEntity> get resultPlays => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultPlayControllerStateCopyWith<ResultPlayControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultPlayControllerStateCopyWith<$Res> {
  factory $ResultPlayControllerStateCopyWith(ResultPlayControllerState value,
          $Res Function(ResultPlayControllerState) then) =
      _$ResultPlayControllerStateCopyWithImpl<$Res, ResultPlayControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? failureMessage,
      List<ResultPlayEntity> resultPlays,
      DateTime? selectedDate});
}

/// @nodoc
class _$ResultPlayControllerStateCopyWithImpl<$Res,
        $Val extends ResultPlayControllerState>
    implements $ResultPlayControllerStateCopyWith<$Res> {
  _$ResultPlayControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureMessage = freezed,
    Object? resultPlays = null,
    Object? selectedDate = freezed,
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
      resultPlays: null == resultPlays
          ? _value.resultPlays
          : resultPlays // ignore: cast_nullable_to_non_nullable
              as List<ResultPlayEntity>,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultPlayControllerStateImplCopyWith<$Res>
    implements $ResultPlayControllerStateCopyWith<$Res> {
  factory _$$ResultPlayControllerStateImplCopyWith(
          _$ResultPlayControllerStateImpl value,
          $Res Function(_$ResultPlayControllerStateImpl) then) =
      __$$ResultPlayControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? failureMessage,
      List<ResultPlayEntity> resultPlays,
      DateTime? selectedDate});
}

/// @nodoc
class __$$ResultPlayControllerStateImplCopyWithImpl<$Res>
    extends _$ResultPlayControllerStateCopyWithImpl<$Res,
        _$ResultPlayControllerStateImpl>
    implements _$$ResultPlayControllerStateImplCopyWith<$Res> {
  __$$ResultPlayControllerStateImplCopyWithImpl(
      _$ResultPlayControllerStateImpl _value,
      $Res Function(_$ResultPlayControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureMessage = freezed,
    Object? resultPlays = null,
    Object? selectedDate = freezed,
  }) {
    return _then(_$ResultPlayControllerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      resultPlays: null == resultPlays
          ? _value._resultPlays
          : resultPlays // ignore: cast_nullable_to_non_nullable
              as List<ResultPlayEntity>,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ResultPlayControllerStateImpl
    with DiagnosticableTreeMixin
    implements _ResultPlayControllerState {
  const _$ResultPlayControllerStateImpl(
      {this.isLoading = false,
      this.failureMessage = null,
      final List<ResultPlayEntity> resultPlays = const [],
      this.selectedDate = null})
      : _resultPlays = resultPlays;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  final List<ResultPlayEntity> _resultPlays;
  @override
  @JsonKey()
  List<ResultPlayEntity> get resultPlays {
    if (_resultPlays is EqualUnmodifiableListView) return _resultPlays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultPlays);
  }

  @override
  @JsonKey()
  final DateTime? selectedDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultPlayControllerState(isLoading: $isLoading, failureMessage: $failureMessage, resultPlays: $resultPlays, selectedDate: $selectedDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultPlayControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('resultPlays', resultPlays))
      ..add(DiagnosticsProperty('selectedDate', selectedDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultPlayControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality()
                .equals(other._resultPlays, _resultPlays) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failureMessage,
      const DeepCollectionEquality().hash(_resultPlays), selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultPlayControllerStateImplCopyWith<_$ResultPlayControllerStateImpl>
      get copyWith => __$$ResultPlayControllerStateImplCopyWithImpl<
          _$ResultPlayControllerStateImpl>(this, _$identity);
}

abstract class _ResultPlayControllerState implements ResultPlayControllerState {
  const factory _ResultPlayControllerState(
      {final bool isLoading,
      final String? failureMessage,
      final List<ResultPlayEntity> resultPlays,
      final DateTime? selectedDate}) = _$ResultPlayControllerStateImpl;

  @override
  bool get isLoading;
  @override
  String? get failureMessage;
  @override
  List<ResultPlayEntity> get resultPlays;
  @override
  DateTime? get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$ResultPlayControllerStateImplCopyWith<_$ResultPlayControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
