// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consortium_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConsortiumControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isUpdateLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  ConsortiumEntity? get consortium => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConsortiumControllerStateCopyWith<ConsortiumControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsortiumControllerStateCopyWith<$Res> {
  factory $ConsortiumControllerStateCopyWith(ConsortiumControllerState value,
          $Res Function(ConsortiumControllerState) then) =
      _$ConsortiumControllerStateCopyWithImpl<$Res, ConsortiumControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isUpdateLoading,
      String? failureMessage,
      ConsortiumEntity? consortium});

  $ConsortiumEntityCopyWith<$Res>? get consortium;
}

/// @nodoc
class _$ConsortiumControllerStateCopyWithImpl<$Res,
        $Val extends ConsortiumControllerState>
    implements $ConsortiumControllerStateCopyWith<$Res> {
  _$ConsortiumControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUpdateLoading = null,
    Object? failureMessage = freezed,
    Object? consortium = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      consortium: freezed == consortium
          ? _value.consortium
          : consortium // ignore: cast_nullable_to_non_nullable
              as ConsortiumEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsortiumEntityCopyWith<$Res>? get consortium {
    if (_value.consortium == null) {
      return null;
    }

    return $ConsortiumEntityCopyWith<$Res>(_value.consortium!, (value) {
      return _then(_value.copyWith(consortium: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsortiumControllerStateImplCopyWith<$Res>
    implements $ConsortiumControllerStateCopyWith<$Res> {
  factory _$$ConsortiumControllerStateImplCopyWith(
          _$ConsortiumControllerStateImpl value,
          $Res Function(_$ConsortiumControllerStateImpl) then) =
      __$$ConsortiumControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isUpdateLoading,
      String? failureMessage,
      ConsortiumEntity? consortium});

  @override
  $ConsortiumEntityCopyWith<$Res>? get consortium;
}

/// @nodoc
class __$$ConsortiumControllerStateImplCopyWithImpl<$Res>
    extends _$ConsortiumControllerStateCopyWithImpl<$Res,
        _$ConsortiumControllerStateImpl>
    implements _$$ConsortiumControllerStateImplCopyWith<$Res> {
  __$$ConsortiumControllerStateImplCopyWithImpl(
      _$ConsortiumControllerStateImpl _value,
      $Res Function(_$ConsortiumControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUpdateLoading = null,
    Object? failureMessage = freezed,
    Object? consortium = freezed,
  }) {
    return _then(_$ConsortiumControllerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      consortium: freezed == consortium
          ? _value.consortium
          : consortium // ignore: cast_nullable_to_non_nullable
              as ConsortiumEntity?,
    ));
  }
}

/// @nodoc

class _$ConsortiumControllerStateImpl
    with DiagnosticableTreeMixin
    implements _ConsortiumControllerState {
  const _$ConsortiumControllerStateImpl(
      {this.isLoading = false,
      this.isUpdateLoading = false,
      this.failureMessage = null,
      this.consortium = null});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isUpdateLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  @override
  @JsonKey()
  final ConsortiumEntity? consortium;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConsortiumControllerState(isLoading: $isLoading, isUpdateLoading: $isUpdateLoading, failureMessage: $failureMessage, consortium: $consortium)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConsortiumControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isUpdateLoading', isUpdateLoading))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('consortium', consortium));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsortiumControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isUpdateLoading, isUpdateLoading) ||
                other.isUpdateLoading == isUpdateLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            (identical(other.consortium, consortium) ||
                other.consortium == consortium));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isUpdateLoading, failureMessage, consortium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsortiumControllerStateImplCopyWith<_$ConsortiumControllerStateImpl>
      get copyWith => __$$ConsortiumControllerStateImplCopyWithImpl<
          _$ConsortiumControllerStateImpl>(this, _$identity);
}

abstract class _ConsortiumControllerState implements ConsortiumControllerState {
  const factory _ConsortiumControllerState(
      {final bool isLoading,
      final bool isUpdateLoading,
      final String? failureMessage,
      final ConsortiumEntity? consortium}) = _$ConsortiumControllerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isUpdateLoading;
  @override
  String? get failureMessage;
  @override
  ConsortiumEntity? get consortium;
  @override
  @JsonKey(ignore: true)
  _$$ConsortiumControllerStateImplCopyWith<_$ConsortiumControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
