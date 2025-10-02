// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_moderasi_budget_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminModerasiBudgetState _$AdminModerasiBudgetStateFromJson(
    Map<String, dynamic> json) {
  return _AdminModerasiBudgetState.fromJson(json);
}

/// @nodoc
mixin _$AdminModerasiBudgetState {
  String? get fcmToken => throw _privateConstructorUsedError;

  /// Serializes this AdminModerasiBudgetState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminModerasiBudgetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminModerasiBudgetStateCopyWith<AdminModerasiBudgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminModerasiBudgetStateCopyWith<$Res> {
  factory $AdminModerasiBudgetStateCopyWith(AdminModerasiBudgetState value,
          $Res Function(AdminModerasiBudgetState) then) =
      _$AdminModerasiBudgetStateCopyWithImpl<$Res, AdminModerasiBudgetState>;
  @useResult
  $Res call({String? fcmToken});
}

/// @nodoc
class _$AdminModerasiBudgetStateCopyWithImpl<$Res,
        $Val extends AdminModerasiBudgetState>
    implements $AdminModerasiBudgetStateCopyWith<$Res> {
  _$AdminModerasiBudgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminModerasiBudgetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminModerasiBudgetStateImplCopyWith<$Res>
    implements $AdminModerasiBudgetStateCopyWith<$Res> {
  factory _$$AdminModerasiBudgetStateImplCopyWith(
          _$AdminModerasiBudgetStateImpl value,
          $Res Function(_$AdminModerasiBudgetStateImpl) then) =
      __$$AdminModerasiBudgetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fcmToken});
}

/// @nodoc
class __$$AdminModerasiBudgetStateImplCopyWithImpl<$Res>
    extends _$AdminModerasiBudgetStateCopyWithImpl<$Res,
        _$AdminModerasiBudgetStateImpl>
    implements _$$AdminModerasiBudgetStateImplCopyWith<$Res> {
  __$$AdminModerasiBudgetStateImplCopyWithImpl(
      _$AdminModerasiBudgetStateImpl _value,
      $Res Function(_$AdminModerasiBudgetStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminModerasiBudgetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
  }) {
    return _then(_$AdminModerasiBudgetStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminModerasiBudgetStateImpl extends _AdminModerasiBudgetState {
  _$AdminModerasiBudgetStateImpl({this.fcmToken}) : super._();

  factory _$AdminModerasiBudgetStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminModerasiBudgetStateImplFromJson(json);

  @override
  final String? fcmToken;

  @override
  String toString() {
    return 'AdminModerasiBudgetState(fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminModerasiBudgetStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken);

  /// Create a copy of AdminModerasiBudgetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminModerasiBudgetStateImplCopyWith<_$AdminModerasiBudgetStateImpl>
      get copyWith => __$$AdminModerasiBudgetStateImplCopyWithImpl<
          _$AdminModerasiBudgetStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminModerasiBudgetStateImplToJson(
      this,
    );
  }
}

abstract class _AdminModerasiBudgetState extends AdminModerasiBudgetState {
  factory _AdminModerasiBudgetState({final String? fcmToken}) =
      _$AdminModerasiBudgetStateImpl;
  _AdminModerasiBudgetState._() : super._();

  factory _AdminModerasiBudgetState.fromJson(Map<String, dynamic> json) =
      _$AdminModerasiBudgetStateImpl.fromJson;

  @override
  String? get fcmToken;

  /// Create a copy of AdminModerasiBudgetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminModerasiBudgetStateImplCopyWith<_$AdminModerasiBudgetStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
