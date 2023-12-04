// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaleControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get searchOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaleControllerStateCopyWith<SaleControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleControllerStateCopyWith<$Res> {
  factory $SaleControllerStateCopyWith(
          SaleControllerState value, $Res Function(SaleControllerState) then) =
      _$SaleControllerStateCopyWithImpl<$Res, SaleControllerState>;
  @useResult
  $Res call({bool isLoading, int searchOption});
}

/// @nodoc
class _$SaleControllerStateCopyWithImpl<$Res, $Val extends SaleControllerState>
    implements $SaleControllerStateCopyWith<$Res> {
  _$SaleControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchOption: null == searchOption
          ? _value.searchOption
          : searchOption // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleControllerStateImplCopyWith<$Res>
    implements $SaleControllerStateCopyWith<$Res> {
  factory _$$SaleControllerStateImplCopyWith(_$SaleControllerStateImpl value,
          $Res Function(_$SaleControllerStateImpl) then) =
      __$$SaleControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, int searchOption});
}

/// @nodoc
class __$$SaleControllerStateImplCopyWithImpl<$Res>
    extends _$SaleControllerStateCopyWithImpl<$Res, _$SaleControllerStateImpl>
    implements _$$SaleControllerStateImplCopyWith<$Res> {
  __$$SaleControllerStateImplCopyWithImpl(_$SaleControllerStateImpl _value,
      $Res Function(_$SaleControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchOption = null,
  }) {
    return _then(_$SaleControllerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchOption: null == searchOption
          ? _value.searchOption
          : searchOption // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SaleControllerStateImpl
    with DiagnosticableTreeMixin
    implements _SaleControllerState {
  const _$SaleControllerStateImpl(
      {this.isLoading = false, this.searchOption = 1});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int searchOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaleControllerState(isLoading: $isLoading, searchOption: $searchOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SaleControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('searchOption', searchOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchOption, searchOption) ||
                other.searchOption == searchOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, searchOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleControllerStateImplCopyWith<_$SaleControllerStateImpl> get copyWith =>
      __$$SaleControllerStateImplCopyWithImpl<_$SaleControllerStateImpl>(
          this, _$identity);
}

abstract class _SaleControllerState implements SaleControllerState {
  const factory _SaleControllerState(
      {final bool isLoading,
      final int searchOption}) = _$SaleControllerStateImpl;

  @override
  bool get isLoading;
  @override
  int get searchOption;
  @override
  @JsonKey(ignore: true)
  _$$SaleControllerStateImplCopyWith<_$SaleControllerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
