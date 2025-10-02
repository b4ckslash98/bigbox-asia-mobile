// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalUser _$LocalUserFromJson(Map<String, dynamic> json) {
  return _LocalUser.fromJson(json);
}

/// @nodoc
mixin _$LocalUser {
  @JsonKey(name: 'user_id')
  String? get userId =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'name') String? name,
// @JsonKey(name: 'email') String? email,
// @JsonKey(name: 'seller_status') String? sellerStatus, // Buat nullable
// @JsonKey(name: 'username') String? username,
  @JsonKey(name: 'access_token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get roleStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_id')
  int? get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError; // Buat nullable
  @JsonKey(name: 'payment_status')
  bool? get paymentStatus => throw _privateConstructorUsedError;

  /// Serializes this LocalUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalUserCopyWith<LocalUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalUserCopyWith<$Res> {
  factory $LocalUserCopyWith(LocalUser value, $Res Function(LocalUser) then) =
      _$LocalUserCopyWithImpl<$Res, LocalUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'access_token') String? token,
      @JsonKey(name: 'role') String? roleStatus,
      @JsonKey(name: 'role_id') int? roleId,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'payment_status') bool? paymentStatus});
}

/// @nodoc
class _$LocalUserCopyWithImpl<$Res, $Val extends LocalUser>
    implements $LocalUserCopyWith<$Res> {
  _$LocalUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? token = freezed,
    Object? roleStatus = freezed,
    Object? roleId = freezed,
    Object? tokenType = freezed,
    Object? paymentStatus = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      roleStatus: freezed == roleStatus
          ? _value.roleStatus
          : roleStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalUserImplCopyWith<$Res>
    implements $LocalUserCopyWith<$Res> {
  factory _$$LocalUserImplCopyWith(
          _$LocalUserImpl value, $Res Function(_$LocalUserImpl) then) =
      __$$LocalUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'access_token') String? token,
      @JsonKey(name: 'role') String? roleStatus,
      @JsonKey(name: 'role_id') int? roleId,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'payment_status') bool? paymentStatus});
}

/// @nodoc
class __$$LocalUserImplCopyWithImpl<$Res>
    extends _$LocalUserCopyWithImpl<$Res, _$LocalUserImpl>
    implements _$$LocalUserImplCopyWith<$Res> {
  __$$LocalUserImplCopyWithImpl(
      _$LocalUserImpl _value, $Res Function(_$LocalUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? token = freezed,
    Object? roleStatus = freezed,
    Object? roleId = freezed,
    Object? tokenType = freezed,
    Object? paymentStatus = freezed,
  }) {
    return _then(_$LocalUserImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      roleStatus: freezed == roleStatus
          ? _value.roleStatus
          : roleStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalUserImpl extends _LocalUser {
  _$LocalUserImpl(
      {@JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'access_token') this.token,
      @JsonKey(name: 'role') this.roleStatus,
      @JsonKey(name: 'role_id') this.roleId,
      @JsonKey(name: 'token_type') this.tokenType,
      @JsonKey(name: 'payment_status') this.paymentStatus})
      : super._();

  factory _$LocalUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalUserImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
// @JsonKey(name: 'name') String? name,
// @JsonKey(name: 'email') String? email,
// @JsonKey(name: 'seller_status') String? sellerStatus, // Buat nullable
// @JsonKey(name: 'username') String? username,
  @override
  @JsonKey(name: 'access_token')
  final String? token;
  @override
  @JsonKey(name: 'role')
  final String? roleStatus;
  @override
  @JsonKey(name: 'role_id')
  final int? roleId;
  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;
// Buat nullable
  @override
  @JsonKey(name: 'payment_status')
  final bool? paymentStatus;

  @override
  String toString() {
    return 'LocalUser(userId: $userId, token: $token, roleStatus: $roleStatus, roleId: $roleId, tokenType: $tokenType, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.roleStatus, roleStatus) ||
                other.roleStatus == roleStatus) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, token, roleStatus, roleId, tokenType, paymentStatus);

  /// Create a copy of LocalUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalUserImplCopyWith<_$LocalUserImpl> get copyWith =>
      __$$LocalUserImplCopyWithImpl<_$LocalUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalUserImplToJson(
      this,
    );
  }
}

abstract class _LocalUser extends LocalUser {
  factory _LocalUser(
          {@JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'access_token') final String? token,
          @JsonKey(name: 'role') final String? roleStatus,
          @JsonKey(name: 'role_id') final int? roleId,
          @JsonKey(name: 'token_type') final String? tokenType,
          @JsonKey(name: 'payment_status') final bool? paymentStatus}) =
      _$LocalUserImpl;
  _LocalUser._() : super._();

  factory _LocalUser.fromJson(Map<String, dynamic> json) =
      _$LocalUserImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId; // @JsonKey(name: 'name') String? name,
// @JsonKey(name: 'email') String? email,
// @JsonKey(name: 'seller_status') String? sellerStatus, // Buat nullable
// @JsonKey(name: 'username') String? username,
  @override
  @JsonKey(name: 'access_token')
  String? get token;
  @override
  @JsonKey(name: 'role')
  String? get roleStatus;
  @override
  @JsonKey(name: 'role_id')
  int? get roleId;
  @override
  @JsonKey(name: 'token_type')
  String? get tokenType; // Buat nullable
  @override
  @JsonKey(name: 'payment_status')
  bool? get paymentStatus;

  /// Create a copy of LocalUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalUserImplCopyWith<_$LocalUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
