// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LotteryEntity _$LotteryEntityFromJson(Map<String, dynamic> json) {
  return _LotteryEntity.fromJson(json);
}

/// @nodoc
mixin _$LotteryEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "is_closed")
  bool? get isClosed => throw _privateConstructorUsedError;
  @JsonKey(name: "time_open")
  String? get timeOpen => throw _privateConstructorUsedError;
  @JsonKey(name: "time_close")
  String? get timeClose => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryEntityCopyWith<LotteryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryEntityCopyWith<$Res> {
  factory $LotteryEntityCopyWith(
          LotteryEntity value, $Res Function(LotteryEntity) then) =
      _$LotteryEntityCopyWithImpl<$Res, LotteryEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      bool status,
      @JsonKey(name: "is_closed") bool? isClosed,
      @JsonKey(name: "time_open") String? timeOpen,
      @JsonKey(name: "time_close") String? timeClose});
}

/// @nodoc
class _$LotteryEntityCopyWithImpl<$Res, $Val extends LotteryEntity>
    implements $LotteryEntityCopyWith<$Res> {
  _$LotteryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? isClosed = freezed,
    Object? timeOpen = freezed,
    Object? timeClose = freezed,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      timeOpen: freezed == timeOpen
          ? _value.timeOpen
          : timeOpen // ignore: cast_nullable_to_non_nullable
              as String?,
      timeClose: freezed == timeClose
          ? _value.timeClose
          : timeClose // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryEntityImplCopyWith<$Res>
    implements $LotteryEntityCopyWith<$Res> {
  factory _$$LotteryEntityImplCopyWith(
          _$LotteryEntityImpl value, $Res Function(_$LotteryEntityImpl) then) =
      __$$LotteryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      bool status,
      @JsonKey(name: "is_closed") bool? isClosed,
      @JsonKey(name: "time_open") String? timeOpen,
      @JsonKey(name: "time_close") String? timeClose});
}

/// @nodoc
class __$$LotteryEntityImplCopyWithImpl<$Res>
    extends _$LotteryEntityCopyWithImpl<$Res, _$LotteryEntityImpl>
    implements _$$LotteryEntityImplCopyWith<$Res> {
  __$$LotteryEntityImplCopyWithImpl(
      _$LotteryEntityImpl _value, $Res Function(_$LotteryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? isClosed = freezed,
    Object? timeOpen = freezed,
    Object? timeClose = freezed,
  }) {
    return _then(_$LotteryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      timeOpen: freezed == timeOpen
          ? _value.timeOpen
          : timeOpen // ignore: cast_nullable_to_non_nullable
              as String?,
      timeClose: freezed == timeClose
          ? _value.timeClose
          : timeClose // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryEntityImpl implements _LotteryEntity {
  const _$LotteryEntityImpl(
      {required this.id,
      required this.name,
      required this.status,
      @JsonKey(name: "is_closed") this.isClosed = null,
      @JsonKey(name: "time_open") this.timeOpen = null,
      @JsonKey(name: "time_close") this.timeClose = null});

  factory _$LotteryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool status;
  @override
  @JsonKey(name: "is_closed")
  final bool? isClosed;
  @override
  @JsonKey(name: "time_open")
  final String? timeOpen;
  @override
  @JsonKey(name: "time_close")
  final String? timeClose;

  @override
  String toString() {
    return 'LotteryEntity(id: $id, name: $name, status: $status, isClosed: $isClosed, timeOpen: $timeOpen, timeClose: $timeClose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed) &&
            (identical(other.timeOpen, timeOpen) ||
                other.timeOpen == timeOpen) &&
            (identical(other.timeClose, timeClose) ||
                other.timeClose == timeClose));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, status, isClosed, timeOpen, timeClose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryEntityImplCopyWith<_$LotteryEntityImpl> get copyWith =>
      __$$LotteryEntityImplCopyWithImpl<_$LotteryEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryEntityImplToJson(
      this,
    );
  }
}

abstract class _LotteryEntity implements LotteryEntity {
  const factory _LotteryEntity(
          {required final String id,
          required final String name,
          required final bool status,
          @JsonKey(name: "is_closed") final bool? isClosed,
          @JsonKey(name: "time_open") final String? timeOpen,
          @JsonKey(name: "time_close") final String? timeClose}) =
      _$LotteryEntityImpl;

  factory _LotteryEntity.fromJson(Map<String, dynamic> json) =
      _$LotteryEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get status;
  @override
  @JsonKey(name: "is_closed")
  bool? get isClosed;
  @override
  @JsonKey(name: "time_open")
  String? get timeOpen;
  @override
  @JsonKey(name: "time_close")
  String? get timeClose;
  @override
  @JsonKey(ignore: true)
  _$$LotteryEntityImplCopyWith<_$LotteryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
