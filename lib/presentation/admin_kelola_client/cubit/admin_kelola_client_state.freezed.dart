// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_kelola_client_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminKelolaClientState _$AdminKelolaClientStateFromJson(
    Map<String, dynamic> json) {
  return _AdminKelolaClientState.fromJson(json);
}

/// @nodoc
mixin _$AdminKelolaClientState {
  String? get fcmToken => throw _privateConstructorUsedError;
  GetAdminClient? get adminClient => throw _privateConstructorUsedError;

  /// Serializes this AdminKelolaClientState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminKelolaClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminKelolaClientStateCopyWith<AdminKelolaClientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminKelolaClientStateCopyWith<$Res> {
  factory $AdminKelolaClientStateCopyWith(AdminKelolaClientState value,
          $Res Function(AdminKelolaClientState) then) =
      _$AdminKelolaClientStateCopyWithImpl<$Res, AdminKelolaClientState>;
  @useResult
  $Res call({String? fcmToken, GetAdminClient? adminClient});

  $GetAdminClientCopyWith<$Res>? get adminClient;
}

/// @nodoc
class _$AdminKelolaClientStateCopyWithImpl<$Res,
        $Val extends AdminKelolaClientState>
    implements $AdminKelolaClientStateCopyWith<$Res> {
  _$AdminKelolaClientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminKelolaClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? adminClient = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      adminClient: freezed == adminClient
          ? _value.adminClient
          : adminClient // ignore: cast_nullable_to_non_nullable
              as GetAdminClient?,
    ) as $Val);
  }

  /// Create a copy of AdminKelolaClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAdminClientCopyWith<$Res>? get adminClient {
    if (_value.adminClient == null) {
      return null;
    }

    return $GetAdminClientCopyWith<$Res>(_value.adminClient!, (value) {
      return _then(_value.copyWith(adminClient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminKelolaClientStateImplCopyWith<$Res>
    implements $AdminKelolaClientStateCopyWith<$Res> {
  factory _$$AdminKelolaClientStateImplCopyWith(
          _$AdminKelolaClientStateImpl value,
          $Res Function(_$AdminKelolaClientStateImpl) then) =
      __$$AdminKelolaClientStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fcmToken, GetAdminClient? adminClient});

  @override
  $GetAdminClientCopyWith<$Res>? get adminClient;
}

/// @nodoc
class __$$AdminKelolaClientStateImplCopyWithImpl<$Res>
    extends _$AdminKelolaClientStateCopyWithImpl<$Res,
        _$AdminKelolaClientStateImpl>
    implements _$$AdminKelolaClientStateImplCopyWith<$Res> {
  __$$AdminKelolaClientStateImplCopyWithImpl(
      _$AdminKelolaClientStateImpl _value,
      $Res Function(_$AdminKelolaClientStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminKelolaClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? adminClient = freezed,
  }) {
    return _then(_$AdminKelolaClientStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      adminClient: freezed == adminClient
          ? _value.adminClient
          : adminClient // ignore: cast_nullable_to_non_nullable
              as GetAdminClient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminKelolaClientStateImpl extends _AdminKelolaClientState {
  _$AdminKelolaClientStateImpl({this.fcmToken, this.adminClient}) : super._();

  factory _$AdminKelolaClientStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminKelolaClientStateImplFromJson(json);

  @override
  final String? fcmToken;
  @override
  final GetAdminClient? adminClient;

  @override
  String toString() {
    return 'AdminKelolaClientState(fcmToken: $fcmToken, adminClient: $adminClient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminKelolaClientStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.adminClient, adminClient) ||
                other.adminClient == adminClient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, adminClient);

  /// Create a copy of AdminKelolaClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminKelolaClientStateImplCopyWith<_$AdminKelolaClientStateImpl>
      get copyWith => __$$AdminKelolaClientStateImplCopyWithImpl<
          _$AdminKelolaClientStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminKelolaClientStateImplToJson(
      this,
    );
  }
}

abstract class _AdminKelolaClientState extends AdminKelolaClientState {
  factory _AdminKelolaClientState(
      {final String? fcmToken,
      final GetAdminClient? adminClient}) = _$AdminKelolaClientStateImpl;
  _AdminKelolaClientState._() : super._();

  factory _AdminKelolaClientState.fromJson(Map<String, dynamic> json) =
      _$AdminKelolaClientStateImpl.fromJson;

  @override
  String? get fcmToken;
  @override
  GetAdminClient? get adminClient;

  /// Create a copy of AdminKelolaClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminKelolaClientStateImplCopyWith<_$AdminKelolaClientStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
