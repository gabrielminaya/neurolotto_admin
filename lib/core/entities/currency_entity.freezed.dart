// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyEntityCopyWith<CurrencyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyEntityCopyWith<$Res> {
  factory $CurrencyEntityCopyWith(
          CurrencyEntity value, $Res Function(CurrencyEntity) then) =
      _$CurrencyEntityCopyWithImpl<$Res, CurrencyEntity>;
  @useResult
  $Res call({String id, String name, String code});
}

/// @nodoc
class _$CurrencyEntityCopyWithImpl<$Res, $Val extends CurrencyEntity>
    implements $CurrencyEntityCopyWith<$Res> {
  _$CurrencyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyEntityImplCopyWith<$Res>
    implements $CurrencyEntityCopyWith<$Res> {
  factory _$$CurrencyEntityImplCopyWith(_$CurrencyEntityImpl value,
          $Res Function(_$CurrencyEntityImpl) then) =
      __$$CurrencyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String code});
}

/// @nodoc
class __$$CurrencyEntityImplCopyWithImpl<$Res>
    extends _$CurrencyEntityCopyWithImpl<$Res, _$CurrencyEntityImpl>
    implements _$$CurrencyEntityImplCopyWith<$Res> {
  __$$CurrencyEntityImplCopyWithImpl(
      _$CurrencyEntityImpl _value, $Res Function(_$CurrencyEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
  }) {
    return _then(_$CurrencyEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrencyEntityImpl implements _CurrencyEntity {
  const _$CurrencyEntityImpl(
      {required this.id, required this.name, required this.code});

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;

  @override
  String toString() {
    return 'CurrencyEntity(id: $id, name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyEntityImplCopyWith<_$CurrencyEntityImpl> get copyWith =>
      __$$CurrencyEntityImplCopyWithImpl<_$CurrencyEntityImpl>(
          this, _$identity);
}

abstract class _CurrencyEntity implements CurrencyEntity {
  const factory _CurrencyEntity(
      {required final String id,
      required final String name,
      required final String code}) = _$CurrencyEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyEntityImplCopyWith<_$CurrencyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
