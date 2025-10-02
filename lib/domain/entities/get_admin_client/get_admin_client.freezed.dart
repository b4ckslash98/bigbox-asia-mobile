// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_admin_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAdminClient _$GetAdminClientFromJson(Map<String, dynamic> json) {
  return _GetAdminClient.fromJson(json);
}

/// @nodoc
mixin _$GetAdminClient {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DatumGetAdminClient>? get data => throw _privateConstructorUsedError;

  /// Serializes this GetAdminClient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAdminClient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAdminClientCopyWith<GetAdminClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAdminClientCopyWith<$Res> {
  factory $GetAdminClientCopyWith(
          GetAdminClient value, $Res Function(GetAdminClient) then) =
      _$GetAdminClientCopyWithImpl<$Res, GetAdminClient>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetAdminClient>? data});
}

/// @nodoc
class _$GetAdminClientCopyWithImpl<$Res, $Val extends GetAdminClient>
    implements $GetAdminClientCopyWith<$Res> {
  _$GetAdminClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAdminClient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DatumGetAdminClient>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAdminClientImplCopyWith<$Res>
    implements $GetAdminClientCopyWith<$Res> {
  factory _$$GetAdminClientImplCopyWith(_$GetAdminClientImpl value,
          $Res Function(_$GetAdminClientImpl) then) =
      __$$GetAdminClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetAdminClient>? data});
}

/// @nodoc
class __$$GetAdminClientImplCopyWithImpl<$Res>
    extends _$GetAdminClientCopyWithImpl<$Res, _$GetAdminClientImpl>
    implements _$$GetAdminClientImplCopyWith<$Res> {
  __$$GetAdminClientImplCopyWithImpl(
      _$GetAdminClientImpl _value, $Res Function(_$GetAdminClientImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAdminClient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAdminClientImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DatumGetAdminClient>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAdminClientImpl implements _GetAdminClient {
  const _$GetAdminClientImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<DatumGetAdminClient>? data})
      : _data = data;

  factory _$GetAdminClientImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAdminClientImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<DatumGetAdminClient>? _data;
  @override
  @JsonKey(name: 'data')
  List<DatumGetAdminClient>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAdminClient(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminClientImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetAdminClient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminClientImplCopyWith<_$GetAdminClientImpl> get copyWith =>
      __$$GetAdminClientImplCopyWithImpl<_$GetAdminClientImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAdminClientImplToJson(
      this,
    );
  }
}

abstract class _GetAdminClient implements GetAdminClient {
  const factory _GetAdminClient(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<DatumGetAdminClient>? data}) =
      _$GetAdminClientImpl;

  factory _GetAdminClient.fromJson(Map<String, dynamic> json) =
      _$GetAdminClientImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<DatumGetAdminClient>? get data;

  /// Create a copy of GetAdminClient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAdminClientImplCopyWith<_$GetAdminClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatumGetAdminClient _$DatumGetAdminClientFromJson(Map<String, dynamic> json) {
  return _DatumGetAdminClient.fromJson(json);
}

/// @nodoc
mixin _$DatumGetAdminClient {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification_status')
  String? get verificationStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification_note')
  dynamic get verificationNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_at')
  DateTime? get verifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile')
  dynamic get profile => throw _privateConstructorUsedError;

  /// Serializes this DatumGetAdminClient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatumGetAdminClient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumGetAdminClientCopyWith<DatumGetAdminClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumGetAdminClientCopyWith<$Res> {
  factory $DatumGetAdminClientCopyWith(
          DatumGetAdminClient value, $Res Function(DatumGetAdminClient) then) =
      _$DatumGetAdminClientCopyWithImpl<$Res, DatumGetAdminClient>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'verification_status') String? verificationStatus,
      @JsonKey(name: 'verification_note') dynamic verificationNote,
      @JsonKey(name: 'verified_at') DateTime? verifiedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'profile') dynamic profile});
}

/// @nodoc
class _$DatumGetAdminClientCopyWithImpl<$Res, $Val extends DatumGetAdminClient>
    implements $DatumGetAdminClientCopyWith<$Res> {
  _$DatumGetAdminClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatumGetAdminClient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? role = freezed,
    Object? id = freezed,
    Object? isActive = freezed,
    Object? verificationStatus = freezed,
    Object? verificationNote = freezed,
    Object? verifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationStatus: freezed == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationNote: freezed == verificationNote
          ? _value.verificationNote
          : verificationNote // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumGetAdminClientImplCopyWith<$Res>
    implements $DatumGetAdminClientCopyWith<$Res> {
  factory _$$DatumGetAdminClientImplCopyWith(_$DatumGetAdminClientImpl value,
          $Res Function(_$DatumGetAdminClientImpl) then) =
      __$$DatumGetAdminClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'verification_status') String? verificationStatus,
      @JsonKey(name: 'verification_note') dynamic verificationNote,
      @JsonKey(name: 'verified_at') DateTime? verifiedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'profile') dynamic profile});
}

/// @nodoc
class __$$DatumGetAdminClientImplCopyWithImpl<$Res>
    extends _$DatumGetAdminClientCopyWithImpl<$Res, _$DatumGetAdminClientImpl>
    implements _$$DatumGetAdminClientImplCopyWith<$Res> {
  __$$DatumGetAdminClientImplCopyWithImpl(_$DatumGetAdminClientImpl _value,
      $Res Function(_$DatumGetAdminClientImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatumGetAdminClient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? role = freezed,
    Object? id = freezed,
    Object? isActive = freezed,
    Object? verificationStatus = freezed,
    Object? verificationNote = freezed,
    Object? verifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$DatumGetAdminClientImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationStatus: freezed == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationNote: freezed == verificationNote
          ? _value.verificationNote
          : verificationNote // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumGetAdminClientImpl implements _DatumGetAdminClient {
  const _$DatumGetAdminClientImpl(
      {@JsonKey(name: 'email') this.email,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'verification_status') this.verificationStatus,
      @JsonKey(name: 'verification_note') this.verificationNote,
      @JsonKey(name: 'verified_at') this.verifiedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'profile') this.profile});

  factory _$DatumGetAdminClientImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumGetAdminClientImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'verification_status')
  final String? verificationStatus;
  @override
  @JsonKey(name: 'verification_note')
  final dynamic verificationNote;
  @override
  @JsonKey(name: 'verified_at')
  final DateTime? verifiedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'profile')
  final dynamic profile;

  @override
  String toString() {
    return 'DatumGetAdminClient(email: $email, role: $role, id: $id, isActive: $isActive, verificationStatus: $verificationStatus, verificationNote: $verificationNote, verifiedAt: $verifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumGetAdminClientImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            const DeepCollectionEquality()
                .equals(other.verificationNote, verificationNote) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      role,
      id,
      isActive,
      verificationStatus,
      const DeepCollectionEquality().hash(verificationNote),
      verifiedAt,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(profile));

  /// Create a copy of DatumGetAdminClient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumGetAdminClientImplCopyWith<_$DatumGetAdminClientImpl> get copyWith =>
      __$$DatumGetAdminClientImplCopyWithImpl<_$DatumGetAdminClientImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumGetAdminClientImplToJson(
      this,
    );
  }
}

abstract class _DatumGetAdminClient implements DatumGetAdminClient {
  const factory _DatumGetAdminClient(
      {@JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'verification_status') final String? verificationStatus,
      @JsonKey(name: 'verification_note') final dynamic verificationNote,
      @JsonKey(name: 'verified_at') final DateTime? verifiedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'profile')
      final dynamic profile}) = _$DatumGetAdminClientImpl;

  factory _DatumGetAdminClient.fromJson(Map<String, dynamic> json) =
      _$DatumGetAdminClientImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'verification_status')
  String? get verificationStatus;
  @override
  @JsonKey(name: 'verification_note')
  dynamic get verificationNote;
  @override
  @JsonKey(name: 'verified_at')
  DateTime? get verifiedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'profile')
  dynamic get profile;

  /// Create a copy of DatumGetAdminClient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumGetAdminClientImplCopyWith<_$DatumGetAdminClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
