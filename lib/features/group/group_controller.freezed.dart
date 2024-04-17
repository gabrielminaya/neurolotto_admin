// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isActionLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<GroupEntity> get groups => throw _privateConstructorUsedError;
  GroupEntity? get selectedGroup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupControllerStateCopyWith<GroupControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupControllerStateCopyWith<$Res> {
  factory $GroupControllerStateCopyWith(GroupControllerState value,
          $Res Function(GroupControllerState) then) =
      _$GroupControllerStateCopyWithImpl<$Res, GroupControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<GroupEntity> groups,
      GroupEntity? selectedGroup});

  $GroupEntityCopyWith<$Res>? get selectedGroup;
}

/// @nodoc
class _$GroupControllerStateCopyWithImpl<$Res,
        $Val extends GroupControllerState>
    implements $GroupControllerStateCopyWith<$Res> {
  _$GroupControllerStateCopyWithImpl(this._value, this._then);

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
    Object? groups = null,
    Object? selectedGroup = freezed,
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
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      selectedGroup: freezed == selectedGroup
          ? _value.selectedGroup
          : selectedGroup // ignore: cast_nullable_to_non_nullable
              as GroupEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupEntityCopyWith<$Res>? get selectedGroup {
    if (_value.selectedGroup == null) {
      return null;
    }

    return $GroupEntityCopyWith<$Res>(_value.selectedGroup!, (value) {
      return _then(_value.copyWith(selectedGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupControllerStateImplCopyWith<$Res>
    implements $GroupControllerStateCopyWith<$Res> {
  factory _$$GroupControllerStateImplCopyWith(_$GroupControllerStateImpl value,
          $Res Function(_$GroupControllerStateImpl) then) =
      __$$GroupControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<GroupEntity> groups,
      GroupEntity? selectedGroup});

  @override
  $GroupEntityCopyWith<$Res>? get selectedGroup;
}

/// @nodoc
class __$$GroupControllerStateImplCopyWithImpl<$Res>
    extends _$GroupControllerStateCopyWithImpl<$Res, _$GroupControllerStateImpl>
    implements _$$GroupControllerStateImplCopyWith<$Res> {
  __$$GroupControllerStateImplCopyWithImpl(_$GroupControllerStateImpl _value,
      $Res Function(_$GroupControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? failureMessage = freezed,
    Object? groups = null,
    Object? selectedGroup = freezed,
  }) {
    return _then(_$GroupControllerStateImpl(
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
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      selectedGroup: freezed == selectedGroup
          ? _value.selectedGroup
          : selectedGroup // ignore: cast_nullable_to_non_nullable
              as GroupEntity?,
    ));
  }
}

/// @nodoc

class _$GroupControllerStateImpl
    with DiagnosticableTreeMixin
    implements _GroupControllerState {
  const _$GroupControllerStateImpl(
      {this.isLoading = false,
      this.isActionLoading = false,
      this.failureMessage = null,
      final List<GroupEntity> groups = const [],
      this.selectedGroup = null})
      : _groups = groups;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isActionLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  final List<GroupEntity> _groups;
  @override
  @JsonKey()
  List<GroupEntity> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  @JsonKey()
  final GroupEntity? selectedGroup;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GroupControllerState(isLoading: $isLoading, isActionLoading: $isActionLoading, failureMessage: $failureMessage, groups: $groups, selectedGroup: $selectedGroup)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GroupControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isActionLoading', isActionLoading))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('groups', groups))
      ..add(DiagnosticsProperty('selectedGroup', selectedGroup));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isActionLoading, isActionLoading) ||
                other.isActionLoading == isActionLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            (identical(other.selectedGroup, selectedGroup) ||
                other.selectedGroup == selectedGroup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isActionLoading,
      failureMessage,
      const DeepCollectionEquality().hash(_groups),
      selectedGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupControllerStateImplCopyWith<_$GroupControllerStateImpl>
      get copyWith =>
          __$$GroupControllerStateImplCopyWithImpl<_$GroupControllerStateImpl>(
              this, _$identity);
}

abstract class _GroupControllerState implements GroupControllerState {
  const factory _GroupControllerState(
      {final bool isLoading,
      final bool isActionLoading,
      final String? failureMessage,
      final List<GroupEntity> groups,
      final GroupEntity? selectedGroup}) = _$GroupControllerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isActionLoading;
  @override
  String? get failureMessage;
  @override
  List<GroupEntity> get groups;
  @override
  GroupEntity? get selectedGroup;
  @override
  @JsonKey(ignore: true)
  _$$GroupControllerStateImplCopyWith<_$GroupControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
