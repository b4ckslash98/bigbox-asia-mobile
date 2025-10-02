// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsersState _$UsersStateFromJson(Map<String, dynamic> json) {
  return _UsersState.fromJson(json);
}

/// @nodoc
mixin _$UsersState {
  String? get fcmToken => throw _privateConstructorUsedError;
  GetAdminUser? get adminUser => throw _privateConstructorUsedError;
  GetTalentProfile? get talentProfile => throw _privateConstructorUsedError;

  /// Serializes this UsersState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
  @useResult
  $Res call(
      {String? fcmToken,
      GetAdminUser? adminUser,
      GetTalentProfile? talentProfile});

  $GetAdminUserCopyWith<$Res>? get adminUser;
  $GetTalentProfileCopyWith<$Res>? get talentProfile;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? adminUser = freezed,
    Object? talentProfile = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      adminUser: freezed == adminUser
          ? _value.adminUser
          : adminUser // ignore: cast_nullable_to_non_nullable
              as GetAdminUser?,
      talentProfile: freezed == talentProfile
          ? _value.talentProfile
          : talentProfile // ignore: cast_nullable_to_non_nullable
              as GetTalentProfile?,
    ) as $Val);
  }

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAdminUserCopyWith<$Res>? get adminUser {
    if (_value.adminUser == null) {
      return null;
    }

    return $GetAdminUserCopyWith<$Res>(_value.adminUser!, (value) {
      return _then(_value.copyWith(adminUser: value) as $Val);
    });
  }

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetTalentProfileCopyWith<$Res>? get talentProfile {
    if (_value.talentProfile == null) {
      return null;
    }

    return $GetTalentProfileCopyWith<$Res>(_value.talentProfile!, (value) {
      return _then(_value.copyWith(talentProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UsersStateImplCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$UsersStateImplCopyWith(
          _$UsersStateImpl value, $Res Function(_$UsersStateImpl) then) =
      __$$UsersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fcmToken,
      GetAdminUser? adminUser,
      GetTalentProfile? talentProfile});

  @override
  $GetAdminUserCopyWith<$Res>? get adminUser;
  @override
  $GetTalentProfileCopyWith<$Res>? get talentProfile;
}

/// @nodoc
class __$$UsersStateImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$UsersStateImpl>
    implements _$$UsersStateImplCopyWith<$Res> {
  __$$UsersStateImplCopyWithImpl(
      _$UsersStateImpl _value, $Res Function(_$UsersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? adminUser = freezed,
    Object? talentProfile = freezed,
  }) {
    return _then(_$UsersStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      adminUser: freezed == adminUser
          ? _value.adminUser
          : adminUser // ignore: cast_nullable_to_non_nullable
              as GetAdminUser?,
      talentProfile: freezed == talentProfile
          ? _value.talentProfile
          : talentProfile // ignore: cast_nullable_to_non_nullable
              as GetTalentProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersStateImpl extends _UsersState {
  _$UsersStateImpl({this.fcmToken, this.adminUser, this.talentProfile})
      : super._();

  factory _$UsersStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersStateImplFromJson(json);

  @override
  final String? fcmToken;
  @override
  final GetAdminUser? adminUser;
  @override
  final GetTalentProfile? talentProfile;

  @override
  String toString() {
    return 'UsersState(fcmToken: $fcmToken, adminUser: $adminUser, talentProfile: $talentProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.adminUser, adminUser) ||
                other.adminUser == adminUser) &&
            (identical(other.talentProfile, talentProfile) ||
                other.talentProfile == talentProfile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fcmToken, adminUser, talentProfile);

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersStateImplCopyWith<_$UsersStateImpl> get copyWith =>
      __$$UsersStateImplCopyWithImpl<_$UsersStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersStateImplToJson(
      this,
    );
  }
}

abstract class _UsersState extends UsersState {
  factory _UsersState(
      {final String? fcmToken,
      final GetAdminUser? adminUser,
      final GetTalentProfile? talentProfile}) = _$UsersStateImpl;
  _UsersState._() : super._();

  factory _UsersState.fromJson(Map<String, dynamic> json) =
      _$UsersStateImpl.fromJson;

  @override
  String? get fcmToken;
  @override
  GetAdminUser? get adminUser;
  @override
  GetTalentProfile? get talentProfile;

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersStateImplCopyWith<_$UsersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
