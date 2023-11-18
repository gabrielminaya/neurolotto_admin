// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedEntity<T> {
  T get data => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedEntityCopyWith<T, PaginatedEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedEntityCopyWith<T, $Res> {
  factory $PaginatedEntityCopyWith(
          PaginatedEntity<T> value, $Res Function(PaginatedEntity<T>) then) =
      _$PaginatedEntityCopyWithImpl<T, $Res, PaginatedEntity<T>>;
  @useResult
  $Res call({T data, int count, int page});
}

/// @nodoc
class _$PaginatedEntityCopyWithImpl<T, $Res, $Val extends PaginatedEntity<T>>
    implements $PaginatedEntityCopyWith<T, $Res> {
  _$PaginatedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? count = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedEntityImplCopyWith<T, $Res>
    implements $PaginatedEntityCopyWith<T, $Res> {
  factory _$$PaginatedEntityImplCopyWith(_$PaginatedEntityImpl<T> value,
          $Res Function(_$PaginatedEntityImpl<T>) then) =
      __$$PaginatedEntityImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data, int count, int page});
}

/// @nodoc
class __$$PaginatedEntityImplCopyWithImpl<T, $Res>
    extends _$PaginatedEntityCopyWithImpl<T, $Res, _$PaginatedEntityImpl<T>>
    implements _$$PaginatedEntityImplCopyWith<T, $Res> {
  __$$PaginatedEntityImplCopyWithImpl(_$PaginatedEntityImpl<T> _value,
      $Res Function(_$PaginatedEntityImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? count = null,
    Object? page = null,
  }) {
    return _then(_$PaginatedEntityImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PaginatedEntityImpl<T> implements _PaginatedEntity<T> {
  const _$PaginatedEntityImpl(
      {required this.data, required this.count, required this.page});

  @override
  final T data;
  @override
  final int count;
  @override
  final int page;

  @override
  String toString() {
    return 'PaginatedEntity<$T>(data: $data, count: $count, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedEntityImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), count, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedEntityImplCopyWith<T, _$PaginatedEntityImpl<T>> get copyWith =>
      __$$PaginatedEntityImplCopyWithImpl<T, _$PaginatedEntityImpl<T>>(
          this, _$identity);
}

abstract class _PaginatedEntity<T> implements PaginatedEntity<T> {
  const factory _PaginatedEntity(
      {required final T data,
      required final int count,
      required final int page}) = _$PaginatedEntityImpl<T>;

  @override
  T get data;
  @override
  int get count;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedEntityImplCopyWith<T, _$PaginatedEntityImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
