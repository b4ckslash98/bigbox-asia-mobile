// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_aplication_talent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAplicationTalent _$GetAplicationTalentFromJson(Map<String, dynamic> json) {
  return _GetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$GetAplicationTalent {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DatumGetAplicationTalent>? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAplicationTalentCopyWith<GetAplicationTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAplicationTalentCopyWith<$Res> {
  factory $GetAplicationTalentCopyWith(
          GetAplicationTalent value, $Res Function(GetAplicationTalent) then) =
      _$GetAplicationTalentCopyWithImpl<$Res, GetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetAplicationTalent>? data});
}

/// @nodoc
class _$GetAplicationTalentCopyWithImpl<$Res, $Val extends GetAplicationTalent>
    implements $GetAplicationTalentCopyWith<$Res> {
  _$GetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAplicationTalent
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
              as List<DatumGetAplicationTalent>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAplicationTalentImplCopyWith<$Res>
    implements $GetAplicationTalentCopyWith<$Res> {
  factory _$$GetAplicationTalentImplCopyWith(_$GetAplicationTalentImpl value,
          $Res Function(_$GetAplicationTalentImpl) then) =
      __$$GetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetAplicationTalent>? data});
}

/// @nodoc
class __$$GetAplicationTalentImplCopyWithImpl<$Res>
    extends _$GetAplicationTalentCopyWithImpl<$Res, _$GetAplicationTalentImpl>
    implements _$$GetAplicationTalentImplCopyWith<$Res> {
  __$$GetAplicationTalentImplCopyWithImpl(_$GetAplicationTalentImpl _value,
      $Res Function(_$GetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAplicationTalentImpl(
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
              as List<DatumGetAplicationTalent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAplicationTalentImpl implements _GetAplicationTalent {
  const _$GetAplicationTalentImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<DatumGetAplicationTalent>? data})
      : _data = data;

  factory _$GetAplicationTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAplicationTalentImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<DatumGetAplicationTalent>? _data;
  @override
  @JsonKey(name: 'data')
  List<DatumGetAplicationTalent>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAplicationTalent(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAplicationTalentImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAplicationTalentImplCopyWith<_$GetAplicationTalentImpl> get copyWith =>
      __$$GetAplicationTalentImplCopyWithImpl<_$GetAplicationTalentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _GetAplicationTalent implements GetAplicationTalent {
  const factory _GetAplicationTalent(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<DatumGetAplicationTalent>? data}) =
      _$GetAplicationTalentImpl;

  factory _GetAplicationTalent.fromJson(Map<String, dynamic> json) =
      _$GetAplicationTalentImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<DatumGetAplicationTalent>? get data;

  /// Create a copy of GetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAplicationTalentImplCopyWith<_$GetAplicationTalentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatumGetAplicationTalent _$DatumGetAplicationTalentFromJson(
    Map<String, dynamic> json) {
  return _DatumGetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$DatumGetAplicationTalent {
  @JsonKey(name: 'id')
  String? get applicationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_id')
  String? get jobId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_role_id')
  String? get jobRoleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get statusApplication => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserGetAplicationTalent? get user => throw _privateConstructorUsedError;

  /// Serializes this DatumGetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatumGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumGetAplicationTalentCopyWith<DatumGetAplicationTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumGetAplicationTalentCopyWith<$Res> {
  factory $DatumGetAplicationTalentCopyWith(DatumGetAplicationTalent value,
          $Res Function(DatumGetAplicationTalent) then) =
      _$DatumGetAplicationTalentCopyWithImpl<$Res, DatumGetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? applicationId,
      @JsonKey(name: 'job_id') String? jobId,
      @JsonKey(name: 'job_role_id') String? jobRoleId,
      @JsonKey(name: 'status') String? statusApplication,
      @JsonKey(name: 'user') UserGetAplicationTalent? user});

  $UserGetAplicationTalentCopyWith<$Res>? get user;
}

/// @nodoc
class _$DatumGetAplicationTalentCopyWithImpl<$Res,
        $Val extends DatumGetAplicationTalent>
    implements $DatumGetAplicationTalentCopyWith<$Res> {
  _$DatumGetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatumGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationId = freezed,
    Object? jobId = freezed,
    Object? jobRoleId = freezed,
    Object? statusApplication = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      applicationId: freezed == applicationId
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobRoleId: freezed == jobRoleId
          ? _value.jobRoleId
          : jobRoleId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusApplication: freezed == statusApplication
          ? _value.statusApplication
          : statusApplication // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserGetAplicationTalent?,
    ) as $Val);
  }

  /// Create a copy of DatumGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserGetAplicationTalentCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserGetAplicationTalentCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumGetAplicationTalentImplCopyWith<$Res>
    implements $DatumGetAplicationTalentCopyWith<$Res> {
  factory _$$DatumGetAplicationTalentImplCopyWith(
          _$DatumGetAplicationTalentImpl value,
          $Res Function(_$DatumGetAplicationTalentImpl) then) =
      __$$DatumGetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? applicationId,
      @JsonKey(name: 'job_id') String? jobId,
      @JsonKey(name: 'job_role_id') String? jobRoleId,
      @JsonKey(name: 'status') String? statusApplication,
      @JsonKey(name: 'user') UserGetAplicationTalent? user});

  @override
  $UserGetAplicationTalentCopyWith<$Res>? get user;
}

/// @nodoc
class __$$DatumGetAplicationTalentImplCopyWithImpl<$Res>
    extends _$DatumGetAplicationTalentCopyWithImpl<$Res,
        _$DatumGetAplicationTalentImpl>
    implements _$$DatumGetAplicationTalentImplCopyWith<$Res> {
  __$$DatumGetAplicationTalentImplCopyWithImpl(
      _$DatumGetAplicationTalentImpl _value,
      $Res Function(_$DatumGetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatumGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationId = freezed,
    Object? jobId = freezed,
    Object? jobRoleId = freezed,
    Object? statusApplication = freezed,
    Object? user = freezed,
  }) {
    return _then(_$DatumGetAplicationTalentImpl(
      applicationId: freezed == applicationId
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobRoleId: freezed == jobRoleId
          ? _value.jobRoleId
          : jobRoleId // ignore: cast_nullable_to_non_nullable
              as String?,
      statusApplication: freezed == statusApplication
          ? _value.statusApplication
          : statusApplication // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserGetAplicationTalent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumGetAplicationTalentImpl implements _DatumGetAplicationTalent {
  const _$DatumGetAplicationTalentImpl(
      {@JsonKey(name: 'id') this.applicationId,
      @JsonKey(name: 'job_id') this.jobId,
      @JsonKey(name: 'job_role_id') this.jobRoleId,
      @JsonKey(name: 'status') this.statusApplication,
      @JsonKey(name: 'user') this.user});

  factory _$DatumGetAplicationTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumGetAplicationTalentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? applicationId;
  @override
  @JsonKey(name: 'job_id')
  final String? jobId;
  @override
  @JsonKey(name: 'job_role_id')
  final String? jobRoleId;
  @override
  @JsonKey(name: 'status')
  final String? statusApplication;
  @override
  @JsonKey(name: 'user')
  final UserGetAplicationTalent? user;

  @override
  String toString() {
    return 'DatumGetAplicationTalent(applicationId: $applicationId, jobId: $jobId, jobRoleId: $jobRoleId, statusApplication: $statusApplication, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumGetAplicationTalentImpl &&
            (identical(other.applicationId, applicationId) ||
                other.applicationId == applicationId) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobRoleId, jobRoleId) ||
                other.jobRoleId == jobRoleId) &&
            (identical(other.statusApplication, statusApplication) ||
                other.statusApplication == statusApplication) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, applicationId, jobId, jobRoleId, statusApplication, user);

  /// Create a copy of DatumGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumGetAplicationTalentImplCopyWith<_$DatumGetAplicationTalentImpl>
      get copyWith => __$$DatumGetAplicationTalentImplCopyWithImpl<
          _$DatumGetAplicationTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumGetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _DatumGetAplicationTalent implements DatumGetAplicationTalent {
  const factory _DatumGetAplicationTalent(
          {@JsonKey(name: 'id') final String? applicationId,
          @JsonKey(name: 'job_id') final String? jobId,
          @JsonKey(name: 'job_role_id') final String? jobRoleId,
          @JsonKey(name: 'status') final String? statusApplication,
          @JsonKey(name: 'user') final UserGetAplicationTalent? user}) =
      _$DatumGetAplicationTalentImpl;

  factory _DatumGetAplicationTalent.fromJson(Map<String, dynamic> json) =
      _$DatumGetAplicationTalentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get applicationId;
  @override
  @JsonKey(name: 'job_id')
  String? get jobId;
  @override
  @JsonKey(name: 'job_role_id')
  String? get jobRoleId;
  @override
  @JsonKey(name: 'status')
  String? get statusApplication;
  @override
  @JsonKey(name: 'user')
  UserGetAplicationTalent? get user;

  /// Create a copy of DatumGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumGetAplicationTalentImplCopyWith<_$DatumGetAplicationTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserGetAplicationTalent _$UserGetAplicationTalentFromJson(
    Map<String, dynamic> json) {
  return _UserGetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$UserGetAplicationTalent {
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
  String? get verificationNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_at')
  DateTime? get verifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile')
  ProfileGetAplicationTalent? get profile => throw _privateConstructorUsedError;

  /// Serializes this UserGetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGetAplicationTalentCopyWith<UserGetAplicationTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGetAplicationTalentCopyWith<$Res> {
  factory $UserGetAplicationTalentCopyWith(UserGetAplicationTalent value,
          $Res Function(UserGetAplicationTalent) then) =
      _$UserGetAplicationTalentCopyWithImpl<$Res, UserGetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'verification_status') String? verificationStatus,
      @JsonKey(name: 'verification_note') String? verificationNote,
      @JsonKey(name: 'verified_at') DateTime? verifiedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'profile') ProfileGetAplicationTalent? profile});

  $ProfileGetAplicationTalentCopyWith<$Res>? get profile;
}

/// @nodoc
class _$UserGetAplicationTalentCopyWithImpl<$Res,
        $Val extends UserGetAplicationTalent>
    implements $UserGetAplicationTalentCopyWith<$Res> {
  _$UserGetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGetAplicationTalent
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
              as String?,
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
              as ProfileGetAplicationTalent?,
    ) as $Val);
  }

  /// Create a copy of UserGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileGetAplicationTalentCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileGetAplicationTalentCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserGetAplicationTalentImplCopyWith<$Res>
    implements $UserGetAplicationTalentCopyWith<$Res> {
  factory _$$UserGetAplicationTalentImplCopyWith(
          _$UserGetAplicationTalentImpl value,
          $Res Function(_$UserGetAplicationTalentImpl) then) =
      __$$UserGetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'verification_status') String? verificationStatus,
      @JsonKey(name: 'verification_note') String? verificationNote,
      @JsonKey(name: 'verified_at') DateTime? verifiedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'profile') ProfileGetAplicationTalent? profile});

  @override
  $ProfileGetAplicationTalentCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$UserGetAplicationTalentImplCopyWithImpl<$Res>
    extends _$UserGetAplicationTalentCopyWithImpl<$Res,
        _$UserGetAplicationTalentImpl>
    implements _$$UserGetAplicationTalentImplCopyWith<$Res> {
  __$$UserGetAplicationTalentImplCopyWithImpl(
      _$UserGetAplicationTalentImpl _value,
      $Res Function(_$UserGetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserGetAplicationTalent
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
    return _then(_$UserGetAplicationTalentImpl(
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
              as String?,
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
              as ProfileGetAplicationTalent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGetAplicationTalentImpl implements _UserGetAplicationTalent {
  const _$UserGetAplicationTalentImpl(
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

  factory _$UserGetAplicationTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGetAplicationTalentImplFromJson(json);

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
  final String? verificationNote;
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
  final ProfileGetAplicationTalent? profile;

  @override
  String toString() {
    return 'UserGetAplicationTalent(email: $email, role: $role, id: $id, isActive: $isActive, verificationStatus: $verificationStatus, verificationNote: $verificationNote, verifiedAt: $verifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGetAplicationTalentImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.verificationNote, verificationNote) ||
                other.verificationNote == verificationNote) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.profile, profile) || other.profile == profile));
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
      verificationNote,
      verifiedAt,
      createdAt,
      updatedAt,
      profile);

  /// Create a copy of UserGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGetAplicationTalentImplCopyWith<_$UserGetAplicationTalentImpl>
      get copyWith => __$$UserGetAplicationTalentImplCopyWithImpl<
          _$UserGetAplicationTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _UserGetAplicationTalent implements UserGetAplicationTalent {
  const factory _UserGetAplicationTalent(
      {@JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'verification_status') final String? verificationStatus,
      @JsonKey(name: 'verification_note') final String? verificationNote,
      @JsonKey(name: 'verified_at') final DateTime? verifiedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'profile')
      final ProfileGetAplicationTalent?
          profile}) = _$UserGetAplicationTalentImpl;

  factory _UserGetAplicationTalent.fromJson(Map<String, dynamic> json) =
      _$UserGetAplicationTalentImpl.fromJson;

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
  String? get verificationNote;
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
  ProfileGetAplicationTalent? get profile;

  /// Create a copy of UserGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserGetAplicationTalentImplCopyWith<_$UserGetAplicationTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileGetAplicationTalent _$ProfileGetAplicationTalentFromJson(
    Map<String, dynamic> json) {
  return _ProfileGetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$ProfileGetAplicationTalent {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  DateTime? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'age')
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_casting_min')
  int? get ageCastingMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_casting_max')
  int? get ageCastingMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  int? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'ukuran_baju')
  String? get ukuranBaju => throw _privateConstructorUsedError;
  @JsonKey(name: 'ukuran_celana')
  int? get ukuranCelana => throw _privateConstructorUsedError;
  @JsonKey(name: 'ukuran_sepatu')
  int? get ukuranSepatu => throw _privateConstructorUsedError;
  @JsonKey(name: 'suku')
  String? get suku => throw _privateConstructorUsedError;
  @JsonKey(name: 'warna_kulit')
  String? get warnaKulit => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_follower')
  String? get instagramFollower => throw _privateConstructorUsedError;
  @JsonKey(name: 'tiktok_username')
  String? get tiktokUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'tiktok_follower')
  String? get tiktokFollower => throw _privateConstructorUsedError;
  @JsonKey(name: 'youtube_username')
  String? get youtubeUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'youtube_follower')
  String? get youtubeFollower => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_passport')
  bool? get isPassport => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_npwp')
  bool? get isNpwp => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_profile')
  String? get photoProfile => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_id')
  String? get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationGetAplicationTalent? get location =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'user_language')
  List<UserLanguageGetAplicationTalent>? get userLanguage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'photos')
  List<PhotoGetAplicationTalent>? get photos =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  List<VideoGetAplicationTalent>? get videos =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'interest_categories')
  List<InterestCategoryGetAplicationTalent>? get interestCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'experiences')
  List<ExperienceGetAplicationTalent>? get experiences =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileGetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileGetAplicationTalentCopyWith<ProfileGetAplicationTalent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileGetAplicationTalentCopyWith<$Res> {
  factory $ProfileGetAplicationTalentCopyWith(ProfileGetAplicationTalent value,
          $Res Function(ProfileGetAplicationTalent) then) =
      _$ProfileGetAplicationTalentCopyWithImpl<$Res,
          ProfileGetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'birth_date') DateTime? birthDate,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'age_casting_min') int? ageCastingMin,
      @JsonKey(name: 'age_casting_max') int? ageCastingMax,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'weight') int? weight,
      @JsonKey(name: 'ukuran_baju') String? ukuranBaju,
      @JsonKey(name: 'ukuran_celana') int? ukuranCelana,
      @JsonKey(name: 'ukuran_sepatu') int? ukuranSepatu,
      @JsonKey(name: 'suku') String? suku,
      @JsonKey(name: 'warna_kulit') String? warnaKulit,
      @JsonKey(name: 'instagram_username') String? instagramUsername,
      @JsonKey(name: 'instagram_follower') String? instagramFollower,
      @JsonKey(name: 'tiktok_username') String? tiktokUsername,
      @JsonKey(name: 'tiktok_follower') String? tiktokFollower,
      @JsonKey(name: 'youtube_username') String? youtubeUsername,
      @JsonKey(name: 'youtube_follower') String? youtubeFollower,
      @JsonKey(name: 'is_passport') bool? isPassport,
      @JsonKey(name: 'is_npwp') bool? isNpwp,
      @JsonKey(name: 'photo_profile') String? photoProfile,
      @JsonKey(name: 'location_id') String? locationId,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'location') LocationGetAplicationTalent? location,
      @JsonKey(name: 'user_language')
      List<UserLanguageGetAplicationTalent>? userLanguage,
      @JsonKey(name: 'photos') List<PhotoGetAplicationTalent>? photos,
      @JsonKey(name: 'videos') List<VideoGetAplicationTalent>? videos,
      @JsonKey(name: 'interest_categories')
      List<InterestCategoryGetAplicationTalent>? interestCategories,
      @JsonKey(name: 'experiences')
      List<ExperienceGetAplicationTalent>? experiences});

  $LocationGetAplicationTalentCopyWith<$Res>? get location;
}

/// @nodoc
class _$ProfileGetAplicationTalentCopyWithImpl<$Res,
        $Val extends ProfileGetAplicationTalent>
    implements $ProfileGetAplicationTalentCopyWith<$Res> {
  _$ProfileGetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? phone = freezed,
    Object? age = freezed,
    Object? ageCastingMin = freezed,
    Object? ageCastingMax = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? ukuranBaju = freezed,
    Object? ukuranCelana = freezed,
    Object? ukuranSepatu = freezed,
    Object? suku = freezed,
    Object? warnaKulit = freezed,
    Object? instagramUsername = freezed,
    Object? instagramFollower = freezed,
    Object? tiktokUsername = freezed,
    Object? tiktokFollower = freezed,
    Object? youtubeUsername = freezed,
    Object? youtubeFollower = freezed,
    Object? isPassport = freezed,
    Object? isNpwp = freezed,
    Object? photoProfile = freezed,
    Object? locationId = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? location = freezed,
    Object? userLanguage = freezed,
    Object? photos = freezed,
    Object? videos = freezed,
    Object? interestCategories = freezed,
    Object? experiences = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      ageCastingMin: freezed == ageCastingMin
          ? _value.ageCastingMin
          : ageCastingMin // ignore: cast_nullable_to_non_nullable
              as int?,
      ageCastingMax: freezed == ageCastingMax
          ? _value.ageCastingMax
          : ageCastingMax // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      ukuranBaju: freezed == ukuranBaju
          ? _value.ukuranBaju
          : ukuranBaju // ignore: cast_nullable_to_non_nullable
              as String?,
      ukuranCelana: freezed == ukuranCelana
          ? _value.ukuranCelana
          : ukuranCelana // ignore: cast_nullable_to_non_nullable
              as int?,
      ukuranSepatu: freezed == ukuranSepatu
          ? _value.ukuranSepatu
          : ukuranSepatu // ignore: cast_nullable_to_non_nullable
              as int?,
      suku: freezed == suku
          ? _value.suku
          : suku // ignore: cast_nullable_to_non_nullable
              as String?,
      warnaKulit: freezed == warnaKulit
          ? _value.warnaKulit
          : warnaKulit // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramFollower: freezed == instagramFollower
          ? _value.instagramFollower
          : instagramFollower // ignore: cast_nullable_to_non_nullable
              as String?,
      tiktokUsername: freezed == tiktokUsername
          ? _value.tiktokUsername
          : tiktokUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      tiktokFollower: freezed == tiktokFollower
          ? _value.tiktokFollower
          : tiktokFollower // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeUsername: freezed == youtubeUsername
          ? _value.youtubeUsername
          : youtubeUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeFollower: freezed == youtubeFollower
          ? _value.youtubeFollower
          : youtubeFollower // ignore: cast_nullable_to_non_nullable
              as String?,
      isPassport: freezed == isPassport
          ? _value.isPassport
          : isPassport // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNpwp: freezed == isNpwp
          ? _value.isNpwp
          : isNpwp // ignore: cast_nullable_to_non_nullable
              as bool?,
      photoProfile: freezed == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationGetAplicationTalent?,
      userLanguage: freezed == userLanguage
          ? _value.userLanguage
          : userLanguage // ignore: cast_nullable_to_non_nullable
              as List<UserLanguageGetAplicationTalent>?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoGetAplicationTalent>?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoGetAplicationTalent>?,
      interestCategories: freezed == interestCategories
          ? _value.interestCategories
          : interestCategories // ignore: cast_nullable_to_non_nullable
              as List<InterestCategoryGetAplicationTalent>?,
      experiences: freezed == experiences
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceGetAplicationTalent>?,
    ) as $Val);
  }

  /// Create a copy of ProfileGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationGetAplicationTalentCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationGetAplicationTalentCopyWith<$Res>(_value.location!,
        (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileGetAplicationTalentImplCopyWith<$Res>
    implements $ProfileGetAplicationTalentCopyWith<$Res> {
  factory _$$ProfileGetAplicationTalentImplCopyWith(
          _$ProfileGetAplicationTalentImpl value,
          $Res Function(_$ProfileGetAplicationTalentImpl) then) =
      __$$ProfileGetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'birth_date') DateTime? birthDate,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'age_casting_min') int? ageCastingMin,
      @JsonKey(name: 'age_casting_max') int? ageCastingMax,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'weight') int? weight,
      @JsonKey(name: 'ukuran_baju') String? ukuranBaju,
      @JsonKey(name: 'ukuran_celana') int? ukuranCelana,
      @JsonKey(name: 'ukuran_sepatu') int? ukuranSepatu,
      @JsonKey(name: 'suku') String? suku,
      @JsonKey(name: 'warna_kulit') String? warnaKulit,
      @JsonKey(name: 'instagram_username') String? instagramUsername,
      @JsonKey(name: 'instagram_follower') String? instagramFollower,
      @JsonKey(name: 'tiktok_username') String? tiktokUsername,
      @JsonKey(name: 'tiktok_follower') String? tiktokFollower,
      @JsonKey(name: 'youtube_username') String? youtubeUsername,
      @JsonKey(name: 'youtube_follower') String? youtubeFollower,
      @JsonKey(name: 'is_passport') bool? isPassport,
      @JsonKey(name: 'is_npwp') bool? isNpwp,
      @JsonKey(name: 'photo_profile') String? photoProfile,
      @JsonKey(name: 'location_id') String? locationId,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'location') LocationGetAplicationTalent? location,
      @JsonKey(name: 'user_language')
      List<UserLanguageGetAplicationTalent>? userLanguage,
      @JsonKey(name: 'photos') List<PhotoGetAplicationTalent>? photos,
      @JsonKey(name: 'videos') List<VideoGetAplicationTalent>? videos,
      @JsonKey(name: 'interest_categories')
      List<InterestCategoryGetAplicationTalent>? interestCategories,
      @JsonKey(name: 'experiences')
      List<ExperienceGetAplicationTalent>? experiences});

  @override
  $LocationGetAplicationTalentCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ProfileGetAplicationTalentImplCopyWithImpl<$Res>
    extends _$ProfileGetAplicationTalentCopyWithImpl<$Res,
        _$ProfileGetAplicationTalentImpl>
    implements _$$ProfileGetAplicationTalentImplCopyWith<$Res> {
  __$$ProfileGetAplicationTalentImplCopyWithImpl(
      _$ProfileGetAplicationTalentImpl _value,
      $Res Function(_$ProfileGetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? phone = freezed,
    Object? age = freezed,
    Object? ageCastingMin = freezed,
    Object? ageCastingMax = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? ukuranBaju = freezed,
    Object? ukuranCelana = freezed,
    Object? ukuranSepatu = freezed,
    Object? suku = freezed,
    Object? warnaKulit = freezed,
    Object? instagramUsername = freezed,
    Object? instagramFollower = freezed,
    Object? tiktokUsername = freezed,
    Object? tiktokFollower = freezed,
    Object? youtubeUsername = freezed,
    Object? youtubeFollower = freezed,
    Object? isPassport = freezed,
    Object? isNpwp = freezed,
    Object? photoProfile = freezed,
    Object? locationId = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? location = freezed,
    Object? userLanguage = freezed,
    Object? photos = freezed,
    Object? videos = freezed,
    Object? interestCategories = freezed,
    Object? experiences = freezed,
  }) {
    return _then(_$ProfileGetAplicationTalentImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      ageCastingMin: freezed == ageCastingMin
          ? _value.ageCastingMin
          : ageCastingMin // ignore: cast_nullable_to_non_nullable
              as int?,
      ageCastingMax: freezed == ageCastingMax
          ? _value.ageCastingMax
          : ageCastingMax // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      ukuranBaju: freezed == ukuranBaju
          ? _value.ukuranBaju
          : ukuranBaju // ignore: cast_nullable_to_non_nullable
              as String?,
      ukuranCelana: freezed == ukuranCelana
          ? _value.ukuranCelana
          : ukuranCelana // ignore: cast_nullable_to_non_nullable
              as int?,
      ukuranSepatu: freezed == ukuranSepatu
          ? _value.ukuranSepatu
          : ukuranSepatu // ignore: cast_nullable_to_non_nullable
              as int?,
      suku: freezed == suku
          ? _value.suku
          : suku // ignore: cast_nullable_to_non_nullable
              as String?,
      warnaKulit: freezed == warnaKulit
          ? _value.warnaKulit
          : warnaKulit // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramFollower: freezed == instagramFollower
          ? _value.instagramFollower
          : instagramFollower // ignore: cast_nullable_to_non_nullable
              as String?,
      tiktokUsername: freezed == tiktokUsername
          ? _value.tiktokUsername
          : tiktokUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      tiktokFollower: freezed == tiktokFollower
          ? _value.tiktokFollower
          : tiktokFollower // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeUsername: freezed == youtubeUsername
          ? _value.youtubeUsername
          : youtubeUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeFollower: freezed == youtubeFollower
          ? _value.youtubeFollower
          : youtubeFollower // ignore: cast_nullable_to_non_nullable
              as String?,
      isPassport: freezed == isPassport
          ? _value.isPassport
          : isPassport // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNpwp: freezed == isNpwp
          ? _value.isNpwp
          : isNpwp // ignore: cast_nullable_to_non_nullable
              as bool?,
      photoProfile: freezed == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationGetAplicationTalent?,
      userLanguage: freezed == userLanguage
          ? _value._userLanguage
          : userLanguage // ignore: cast_nullable_to_non_nullable
              as List<UserLanguageGetAplicationTalent>?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoGetAplicationTalent>?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoGetAplicationTalent>?,
      interestCategories: freezed == interestCategories
          ? _value._interestCategories
          : interestCategories // ignore: cast_nullable_to_non_nullable
              as List<InterestCategoryGetAplicationTalent>?,
      experiences: freezed == experiences
          ? _value._experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceGetAplicationTalent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileGetAplicationTalentImpl implements _ProfileGetAplicationTalent {
  const _$ProfileGetAplicationTalentImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'birth_date') this.birthDate,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'age') this.age,
      @JsonKey(name: 'age_casting_min') this.ageCastingMin,
      @JsonKey(name: 'age_casting_max') this.ageCastingMax,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'weight') this.weight,
      @JsonKey(name: 'ukuran_baju') this.ukuranBaju,
      @JsonKey(name: 'ukuran_celana') this.ukuranCelana,
      @JsonKey(name: 'ukuran_sepatu') this.ukuranSepatu,
      @JsonKey(name: 'suku') this.suku,
      @JsonKey(name: 'warna_kulit') this.warnaKulit,
      @JsonKey(name: 'instagram_username') this.instagramUsername,
      @JsonKey(name: 'instagram_follower') this.instagramFollower,
      @JsonKey(name: 'tiktok_username') this.tiktokUsername,
      @JsonKey(name: 'tiktok_follower') this.tiktokFollower,
      @JsonKey(name: 'youtube_username') this.youtubeUsername,
      @JsonKey(name: 'youtube_follower') this.youtubeFollower,
      @JsonKey(name: 'is_passport') this.isPassport,
      @JsonKey(name: 'is_npwp') this.isNpwp,
      @JsonKey(name: 'photo_profile') this.photoProfile,
      @JsonKey(name: 'location_id') this.locationId,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'user_language')
      final List<UserLanguageGetAplicationTalent>? userLanguage,
      @JsonKey(name: 'photos') final List<PhotoGetAplicationTalent>? photos,
      @JsonKey(name: 'videos') final List<VideoGetAplicationTalent>? videos,
      @JsonKey(name: 'interest_categories')
      final List<InterestCategoryGetAplicationTalent>? interestCategories,
      @JsonKey(name: 'experiences')
      final List<ExperienceGetAplicationTalent>? experiences})
      : _userLanguage = userLanguage,
        _photos = photos,
        _videos = videos,
        _interestCategories = interestCategories,
        _experiences = experiences;

  factory _$ProfileGetAplicationTalentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileGetAplicationTalentImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'birth_date')
  final DateTime? birthDate;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'age')
  final int? age;
  @override
  @JsonKey(name: 'age_casting_min')
  final int? ageCastingMin;
  @override
  @JsonKey(name: 'age_casting_max')
  final int? ageCastingMax;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'weight')
  final int? weight;
  @override
  @JsonKey(name: 'ukuran_baju')
  final String? ukuranBaju;
  @override
  @JsonKey(name: 'ukuran_celana')
  final int? ukuranCelana;
  @override
  @JsonKey(name: 'ukuran_sepatu')
  final int? ukuranSepatu;
  @override
  @JsonKey(name: 'suku')
  final String? suku;
  @override
  @JsonKey(name: 'warna_kulit')
  final String? warnaKulit;
  @override
  @JsonKey(name: 'instagram_username')
  final String? instagramUsername;
  @override
  @JsonKey(name: 'instagram_follower')
  final String? instagramFollower;
  @override
  @JsonKey(name: 'tiktok_username')
  final String? tiktokUsername;
  @override
  @JsonKey(name: 'tiktok_follower')
  final String? tiktokFollower;
  @override
  @JsonKey(name: 'youtube_username')
  final String? youtubeUsername;
  @override
  @JsonKey(name: 'youtube_follower')
  final String? youtubeFollower;
  @override
  @JsonKey(name: 'is_passport')
  final bool? isPassport;
  @override
  @JsonKey(name: 'is_npwp')
  final bool? isNpwp;
  @override
  @JsonKey(name: 'photo_profile')
  final String? photoProfile;
  @override
  @JsonKey(name: 'location_id')
  final String? locationId;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'location')
  final LocationGetAplicationTalent? location;
  final List<UserLanguageGetAplicationTalent>? _userLanguage;
  @override
  @JsonKey(name: 'user_language')
  List<UserLanguageGetAplicationTalent>? get userLanguage {
    final value = _userLanguage;
    if (value == null) return null;
    if (_userLanguage is EqualUnmodifiableListView) return _userLanguage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PhotoGetAplicationTalent>? _photos;
  @override
  @JsonKey(name: 'photos')
  List<PhotoGetAplicationTalent>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VideoGetAplicationTalent>? _videos;
  @override
  @JsonKey(name: 'videos')
  List<VideoGetAplicationTalent>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<InterestCategoryGetAplicationTalent>? _interestCategories;
  @override
  @JsonKey(name: 'interest_categories')
  List<InterestCategoryGetAplicationTalent>? get interestCategories {
    final value = _interestCategories;
    if (value == null) return null;
    if (_interestCategories is EqualUnmodifiableListView)
      return _interestCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExperienceGetAplicationTalent>? _experiences;
  @override
  @JsonKey(name: 'experiences')
  List<ExperienceGetAplicationTalent>? get experiences {
    final value = _experiences;
    if (value == null) return null;
    if (_experiences is EqualUnmodifiableListView) return _experiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileGetAplicationTalent(name: $name, username: $username, birthDate: $birthDate, gender: $gender, phone: $phone, age: $age, ageCastingMin: $ageCastingMin, ageCastingMax: $ageCastingMax, height: $height, weight: $weight, ukuranBaju: $ukuranBaju, ukuranCelana: $ukuranCelana, ukuranSepatu: $ukuranSepatu, suku: $suku, warnaKulit: $warnaKulit, instagramUsername: $instagramUsername, instagramFollower: $instagramFollower, tiktokUsername: $tiktokUsername, tiktokFollower: $tiktokFollower, youtubeUsername: $youtubeUsername, youtubeFollower: $youtubeFollower, isPassport: $isPassport, isNpwp: $isNpwp, photoProfile: $photoProfile, locationId: $locationId, id: $id, userId: $userId, location: $location, userLanguage: $userLanguage, photos: $photos, videos: $videos, interestCategories: $interestCategories, experiences: $experiences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileGetAplicationTalentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.ageCastingMin, ageCastingMin) ||
                other.ageCastingMin == ageCastingMin) &&
            (identical(other.ageCastingMax, ageCastingMax) ||
                other.ageCastingMax == ageCastingMax) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.ukuranBaju, ukuranBaju) ||
                other.ukuranBaju == ukuranBaju) &&
            (identical(other.ukuranCelana, ukuranCelana) ||
                other.ukuranCelana == ukuranCelana) &&
            (identical(other.ukuranSepatu, ukuranSepatu) ||
                other.ukuranSepatu == ukuranSepatu) &&
            (identical(other.suku, suku) || other.suku == suku) &&
            (identical(other.warnaKulit, warnaKulit) ||
                other.warnaKulit == warnaKulit) &&
            (identical(other.instagramUsername, instagramUsername) ||
                other.instagramUsername == instagramUsername) &&
            (identical(other.instagramFollower, instagramFollower) ||
                other.instagramFollower == instagramFollower) &&
            (identical(other.tiktokUsername, tiktokUsername) ||
                other.tiktokUsername == tiktokUsername) &&
            (identical(other.tiktokFollower, tiktokFollower) ||
                other.tiktokFollower == tiktokFollower) &&
            (identical(other.youtubeUsername, youtubeUsername) ||
                other.youtubeUsername == youtubeUsername) &&
            (identical(other.youtubeFollower, youtubeFollower) ||
                other.youtubeFollower == youtubeFollower) &&
            (identical(other.isPassport, isPassport) ||
                other.isPassport == isPassport) &&
            (identical(other.isNpwp, isNpwp) || other.isNpwp == isNpwp) &&
            (identical(other.photoProfile, photoProfile) ||
                other.photoProfile == photoProfile) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._userLanguage, _userLanguage) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            const DeepCollectionEquality()
                .equals(other._interestCategories, _interestCategories) &&
            const DeepCollectionEquality()
                .equals(other._experiences, _experiences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        username,
        birthDate,
        gender,
        phone,
        age,
        ageCastingMin,
        ageCastingMax,
        height,
        weight,
        ukuranBaju,
        ukuranCelana,
        ukuranSepatu,
        suku,
        warnaKulit,
        instagramUsername,
        instagramFollower,
        tiktokUsername,
        tiktokFollower,
        youtubeUsername,
        youtubeFollower,
        isPassport,
        isNpwp,
        photoProfile,
        locationId,
        id,
        userId,
        location,
        const DeepCollectionEquality().hash(_userLanguage),
        const DeepCollectionEquality().hash(_photos),
        const DeepCollectionEquality().hash(_videos),
        const DeepCollectionEquality().hash(_interestCategories),
        const DeepCollectionEquality().hash(_experiences)
      ]);

  /// Create a copy of ProfileGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileGetAplicationTalentImplCopyWith<_$ProfileGetAplicationTalentImpl>
      get copyWith => __$$ProfileGetAplicationTalentImplCopyWithImpl<
          _$ProfileGetAplicationTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileGetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _ProfileGetAplicationTalent
    implements ProfileGetAplicationTalent {
  const factory _ProfileGetAplicationTalent(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'birth_date') final DateTime? birthDate,
      @JsonKey(name: 'gender') final String? gender,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'age') final int? age,
      @JsonKey(name: 'age_casting_min') final int? ageCastingMin,
      @JsonKey(name: 'age_casting_max') final int? ageCastingMax,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'weight') final int? weight,
      @JsonKey(name: 'ukuran_baju') final String? ukuranBaju,
      @JsonKey(name: 'ukuran_celana') final int? ukuranCelana,
      @JsonKey(name: 'ukuran_sepatu') final int? ukuranSepatu,
      @JsonKey(name: 'suku') final String? suku,
      @JsonKey(name: 'warna_kulit') final String? warnaKulit,
      @JsonKey(name: 'instagram_username') final String? instagramUsername,
      @JsonKey(name: 'instagram_follower') final String? instagramFollower,
      @JsonKey(name: 'tiktok_username') final String? tiktokUsername,
      @JsonKey(name: 'tiktok_follower') final String? tiktokFollower,
      @JsonKey(name: 'youtube_username') final String? youtubeUsername,
      @JsonKey(name: 'youtube_follower') final String? youtubeFollower,
      @JsonKey(name: 'is_passport') final bool? isPassport,
      @JsonKey(name: 'is_npwp') final bool? isNpwp,
      @JsonKey(name: 'photo_profile') final String? photoProfile,
      @JsonKey(name: 'location_id') final String? locationId,
      @JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'location') final LocationGetAplicationTalent? location,
      @JsonKey(name: 'user_language')
      final List<UserLanguageGetAplicationTalent>? userLanguage,
      @JsonKey(name: 'photos') final List<PhotoGetAplicationTalent>? photos,
      @JsonKey(name: 'videos') final List<VideoGetAplicationTalent>? videos,
      @JsonKey(name: 'interest_categories')
      final List<InterestCategoryGetAplicationTalent>? interestCategories,
      @JsonKey(name: 'experiences')
      final List<ExperienceGetAplicationTalent>?
          experiences}) = _$ProfileGetAplicationTalentImpl;

  factory _ProfileGetAplicationTalent.fromJson(Map<String, dynamic> json) =
      _$ProfileGetAplicationTalentImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'birth_date')
  DateTime? get birthDate;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'age')
  int? get age;
  @override
  @JsonKey(name: 'age_casting_min')
  int? get ageCastingMin;
  @override
  @JsonKey(name: 'age_casting_max')
  int? get ageCastingMax;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'weight')
  int? get weight;
  @override
  @JsonKey(name: 'ukuran_baju')
  String? get ukuranBaju;
  @override
  @JsonKey(name: 'ukuran_celana')
  int? get ukuranCelana;
  @override
  @JsonKey(name: 'ukuran_sepatu')
  int? get ukuranSepatu;
  @override
  @JsonKey(name: 'suku')
  String? get suku;
  @override
  @JsonKey(name: 'warna_kulit')
  String? get warnaKulit;
  @override
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername;
  @override
  @JsonKey(name: 'instagram_follower')
  String? get instagramFollower;
  @override
  @JsonKey(name: 'tiktok_username')
  String? get tiktokUsername;
  @override
  @JsonKey(name: 'tiktok_follower')
  String? get tiktokFollower;
  @override
  @JsonKey(name: 'youtube_username')
  String? get youtubeUsername;
  @override
  @JsonKey(name: 'youtube_follower')
  String? get youtubeFollower;
  @override
  @JsonKey(name: 'is_passport')
  bool? get isPassport;
  @override
  @JsonKey(name: 'is_npwp')
  bool? get isNpwp;
  @override
  @JsonKey(name: 'photo_profile')
  String? get photoProfile;
  @override
  @JsonKey(name: 'location_id')
  String? get locationId;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'location')
  LocationGetAplicationTalent? get location;
  @override
  @JsonKey(name: 'user_language')
  List<UserLanguageGetAplicationTalent>? get userLanguage;
  @override
  @JsonKey(name: 'photos')
  List<PhotoGetAplicationTalent>? get photos;
  @override
  @JsonKey(name: 'videos')
  List<VideoGetAplicationTalent>? get videos;
  @override
  @JsonKey(name: 'interest_categories')
  List<InterestCategoryGetAplicationTalent>? get interestCategories;
  @override
  @JsonKey(name: 'experiences')
  List<ExperienceGetAplicationTalent>? get experiences;

  /// Create a copy of ProfileGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileGetAplicationTalentImplCopyWith<_$ProfileGetAplicationTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExperienceGetAplicationTalent _$ExperienceGetAplicationTalentFromJson(
    Map<String, dynamic> json) {
  return _ExperienceGetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$ExperienceGetAplicationTalent {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_id')
  String? get profileId => throw _privateConstructorUsedError;

  /// Serializes this ExperienceGetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExperienceGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExperienceGetAplicationTalentCopyWith<ExperienceGetAplicationTalent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceGetAplicationTalentCopyWith<$Res> {
  factory $ExperienceGetAplicationTalentCopyWith(
          ExperienceGetAplicationTalent value,
          $Res Function(ExperienceGetAplicationTalent) then) =
      _$ExperienceGetAplicationTalentCopyWithImpl<$Res,
          ExperienceGetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'profile_id') String? profileId});
}

/// @nodoc
class _$ExperienceGetAplicationTalentCopyWithImpl<$Res,
        $Val extends ExperienceGetAplicationTalent>
    implements $ExperienceGetAplicationTalentCopyWith<$Res> {
  _$ExperienceGetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExperienceGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
    Object? id = freezed,
    Object? profileId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceGetAplicationTalentImplCopyWith<$Res>
    implements $ExperienceGetAplicationTalentCopyWith<$Res> {
  factory _$$ExperienceGetAplicationTalentImplCopyWith(
          _$ExperienceGetAplicationTalentImpl value,
          $Res Function(_$ExperienceGetAplicationTalentImpl) then) =
      __$$ExperienceGetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'profile_id') String? profileId});
}

/// @nodoc
class __$$ExperienceGetAplicationTalentImplCopyWithImpl<$Res>
    extends _$ExperienceGetAplicationTalentCopyWithImpl<$Res,
        _$ExperienceGetAplicationTalentImpl>
    implements _$$ExperienceGetAplicationTalentImplCopyWith<$Res> {
  __$$ExperienceGetAplicationTalentImplCopyWithImpl(
      _$ExperienceGetAplicationTalentImpl _value,
      $Res Function(_$ExperienceGetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExperienceGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? videoUrl = freezed,
    Object? id = freezed,
    Object? profileId = freezed,
  }) {
    return _then(_$ExperienceGetAplicationTalentImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceGetAplicationTalentImpl
    implements _ExperienceGetAplicationTalent {
  const _$ExperienceGetAplicationTalentImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'video_url') this.videoUrl,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'profile_id') this.profileId});

  factory _$ExperienceGetAplicationTalentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExperienceGetAplicationTalentImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'video_url')
  final String? videoUrl;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'profile_id')
  final String? profileId;

  @override
  String toString() {
    return 'ExperienceGetAplicationTalent(title: $title, description: $description, videoUrl: $videoUrl, id: $id, profileId: $profileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceGetAplicationTalentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, videoUrl, id, profileId);

  /// Create a copy of ExperienceGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceGetAplicationTalentImplCopyWith<
          _$ExperienceGetAplicationTalentImpl>
      get copyWith => __$$ExperienceGetAplicationTalentImplCopyWithImpl<
          _$ExperienceGetAplicationTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceGetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _ExperienceGetAplicationTalent
    implements ExperienceGetAplicationTalent {
  const factory _ExperienceGetAplicationTalent(
          {@JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'video_url') final String? videoUrl,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'profile_id') final String? profileId}) =
      _$ExperienceGetAplicationTalentImpl;

  factory _ExperienceGetAplicationTalent.fromJson(Map<String, dynamic> json) =
      _$ExperienceGetAplicationTalentImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'video_url')
  String? get videoUrl;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'profile_id')
  String? get profileId;

  /// Create a copy of ExperienceGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExperienceGetAplicationTalentImplCopyWith<
          _$ExperienceGetAplicationTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InterestCategoryGetAplicationTalent
    _$InterestCategoryGetAplicationTalentFromJson(Map<String, dynamic> json) {
  return _InterestCategoryGetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$InterestCategoryGetAplicationTalent {
  @JsonKey(name: 'job_categories_id')
  String? get jobCategoriesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_min')
  int? get budgetMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_max')
  int? get budgetMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  CategoriesGetAplicationTalent? get categories =>
      throw _privateConstructorUsedError;

  /// Serializes this InterestCategoryGetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterestCategoryGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestCategoryGetAplicationTalentCopyWith<
          InterestCategoryGetAplicationTalent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestCategoryGetAplicationTalentCopyWith<$Res> {
  factory $InterestCategoryGetAplicationTalentCopyWith(
          InterestCategoryGetAplicationTalent value,
          $Res Function(InterestCategoryGetAplicationTalent) then) =
      _$InterestCategoryGetAplicationTalentCopyWithImpl<$Res,
          InterestCategoryGetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'job_categories_id') String? jobCategoriesId,
      @JsonKey(name: 'budget_min') int? budgetMin,
      @JsonKey(name: 'budget_max') int? budgetMax,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'categories') CategoriesGetAplicationTalent? categories});

  $CategoriesGetAplicationTalentCopyWith<$Res>? get categories;
}

/// @nodoc
class _$InterestCategoryGetAplicationTalentCopyWithImpl<$Res,
        $Val extends InterestCategoryGetAplicationTalent>
    implements $InterestCategoryGetAplicationTalentCopyWith<$Res> {
  _$InterestCategoryGetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestCategoryGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobCategoriesId = freezed,
    Object? budgetMin = freezed,
    Object? budgetMax = freezed,
    Object? id = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      jobCategoriesId: freezed == jobCategoriesId
          ? _value.jobCategoriesId
          : jobCategoriesId // ignore: cast_nullable_to_non_nullable
              as String?,
      budgetMin: freezed == budgetMin
          ? _value.budgetMin
          : budgetMin // ignore: cast_nullable_to_non_nullable
              as int?,
      budgetMax: freezed == budgetMax
          ? _value.budgetMax
          : budgetMax // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoriesGetAplicationTalent?,
    ) as $Val);
  }

  /// Create a copy of InterestCategoryGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoriesGetAplicationTalentCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $CategoriesGetAplicationTalentCopyWith<$Res>(_value.categories!,
        (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InterestCategoryGetAplicationTalentImplCopyWith<$Res>
    implements $InterestCategoryGetAplicationTalentCopyWith<$Res> {
  factory _$$InterestCategoryGetAplicationTalentImplCopyWith(
          _$InterestCategoryGetAplicationTalentImpl value,
          $Res Function(_$InterestCategoryGetAplicationTalentImpl) then) =
      __$$InterestCategoryGetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'job_categories_id') String? jobCategoriesId,
      @JsonKey(name: 'budget_min') int? budgetMin,
      @JsonKey(name: 'budget_max') int? budgetMax,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'categories') CategoriesGetAplicationTalent? categories});

  @override
  $CategoriesGetAplicationTalentCopyWith<$Res>? get categories;
}

/// @nodoc
class __$$InterestCategoryGetAplicationTalentImplCopyWithImpl<$Res>
    extends _$InterestCategoryGetAplicationTalentCopyWithImpl<$Res,
        _$InterestCategoryGetAplicationTalentImpl>
    implements _$$InterestCategoryGetAplicationTalentImplCopyWith<$Res> {
  __$$InterestCategoryGetAplicationTalentImplCopyWithImpl(
      _$InterestCategoryGetAplicationTalentImpl _value,
      $Res Function(_$InterestCategoryGetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestCategoryGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobCategoriesId = freezed,
    Object? budgetMin = freezed,
    Object? budgetMax = freezed,
    Object? id = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$InterestCategoryGetAplicationTalentImpl(
      jobCategoriesId: freezed == jobCategoriesId
          ? _value.jobCategoriesId
          : jobCategoriesId // ignore: cast_nullable_to_non_nullable
              as String?,
      budgetMin: freezed == budgetMin
          ? _value.budgetMin
          : budgetMin // ignore: cast_nullable_to_non_nullable
              as int?,
      budgetMax: freezed == budgetMax
          ? _value.budgetMax
          : budgetMax // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoriesGetAplicationTalent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestCategoryGetAplicationTalentImpl
    implements _InterestCategoryGetAplicationTalent {
  const _$InterestCategoryGetAplicationTalentImpl(
      {@JsonKey(name: 'job_categories_id') this.jobCategoriesId,
      @JsonKey(name: 'budget_min') this.budgetMin,
      @JsonKey(name: 'budget_max') this.budgetMax,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'categories') this.categories});

  factory _$InterestCategoryGetAplicationTalentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InterestCategoryGetAplicationTalentImplFromJson(json);

  @override
  @JsonKey(name: 'job_categories_id')
  final String? jobCategoriesId;
  @override
  @JsonKey(name: 'budget_min')
  final int? budgetMin;
  @override
  @JsonKey(name: 'budget_max')
  final int? budgetMax;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'categories')
  final CategoriesGetAplicationTalent? categories;

  @override
  String toString() {
    return 'InterestCategoryGetAplicationTalent(jobCategoriesId: $jobCategoriesId, budgetMin: $budgetMin, budgetMax: $budgetMax, id: $id, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestCategoryGetAplicationTalentImpl &&
            (identical(other.jobCategoriesId, jobCategoriesId) ||
                other.jobCategoriesId == jobCategoriesId) &&
            (identical(other.budgetMin, budgetMin) ||
                other.budgetMin == budgetMin) &&
            (identical(other.budgetMax, budgetMax) ||
                other.budgetMax == budgetMax) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, jobCategoriesId, budgetMin, budgetMax, id, categories);

  /// Create a copy of InterestCategoryGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestCategoryGetAplicationTalentImplCopyWith<
          _$InterestCategoryGetAplicationTalentImpl>
      get copyWith => __$$InterestCategoryGetAplicationTalentImplCopyWithImpl<
          _$InterestCategoryGetAplicationTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestCategoryGetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _InterestCategoryGetAplicationTalent
    implements InterestCategoryGetAplicationTalent {
  const factory _InterestCategoryGetAplicationTalent(
          {@JsonKey(name: 'job_categories_id') final String? jobCategoriesId,
          @JsonKey(name: 'budget_min') final int? budgetMin,
          @JsonKey(name: 'budget_max') final int? budgetMax,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'categories')
          final CategoriesGetAplicationTalent? categories}) =
      _$InterestCategoryGetAplicationTalentImpl;

  factory _InterestCategoryGetAplicationTalent.fromJson(
          Map<String, dynamic> json) =
      _$InterestCategoryGetAplicationTalentImpl.fromJson;

  @override
  @JsonKey(name: 'job_categories_id')
  String? get jobCategoriesId;
  @override
  @JsonKey(name: 'budget_min')
  int? get budgetMin;
  @override
  @JsonKey(name: 'budget_max')
  int? get budgetMax;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'categories')
  CategoriesGetAplicationTalent? get categories;

  /// Create a copy of InterestCategoryGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestCategoryGetAplicationTalentImplCopyWith<
          _$InterestCategoryGetAplicationTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoriesGetAplicationTalent _$CategoriesGetAplicationTalentFromJson(
    Map<String, dynamic> json) {
  return _CategoriesGetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$CategoriesGetAplicationTalent {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this CategoriesGetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesGetAplicationTalentCopyWith<CategoriesGetAplicationTalent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesGetAplicationTalentCopyWith<$Res> {
  factory $CategoriesGetAplicationTalentCopyWith(
          CategoriesGetAplicationTalent value,
          $Res Function(CategoriesGetAplicationTalent) then) =
      _$CategoriesGetAplicationTalentCopyWithImpl<$Res,
          CategoriesGetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$CategoriesGetAplicationTalentCopyWithImpl<$Res,
        $Val extends CategoriesGetAplicationTalent>
    implements $CategoriesGetAplicationTalentCopyWith<$Res> {
  _$CategoriesGetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesGetAplicationTalentImplCopyWith<$Res>
    implements $CategoriesGetAplicationTalentCopyWith<$Res> {
  factory _$$CategoriesGetAplicationTalentImplCopyWith(
          _$CategoriesGetAplicationTalentImpl value,
          $Res Function(_$CategoriesGetAplicationTalentImpl) then) =
      __$$CategoriesGetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$CategoriesGetAplicationTalentImplCopyWithImpl<$Res>
    extends _$CategoriesGetAplicationTalentCopyWithImpl<$Res,
        _$CategoriesGetAplicationTalentImpl>
    implements _$$CategoriesGetAplicationTalentImplCopyWith<$Res> {
  __$$CategoriesGetAplicationTalentImplCopyWithImpl(
      _$CategoriesGetAplicationTalentImpl _value,
      $Res Function(_$CategoriesGetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
  }) {
    return _then(_$CategoriesGetAplicationTalentImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesGetAplicationTalentImpl
    implements _CategoriesGetAplicationTalent {
  const _$CategoriesGetAplicationTalentImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'id') this.id});

  factory _$CategoriesGetAplicationTalentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CategoriesGetAplicationTalentImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'CategoriesGetAplicationTalent(name: $name, isActive: $isActive, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesGetAplicationTalentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, isActive, id);

  /// Create a copy of CategoriesGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesGetAplicationTalentImplCopyWith<
          _$CategoriesGetAplicationTalentImpl>
      get copyWith => __$$CategoriesGetAplicationTalentImplCopyWithImpl<
          _$CategoriesGetAplicationTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesGetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _CategoriesGetAplicationTalent
    implements CategoriesGetAplicationTalent {
  const factory _CategoriesGetAplicationTalent(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'is_active') final bool? isActive,
          @JsonKey(name: 'id') final String? id}) =
      _$CategoriesGetAplicationTalentImpl;

  factory _CategoriesGetAplicationTalent.fromJson(Map<String, dynamic> json) =
      _$CategoriesGetAplicationTalentImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of CategoriesGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesGetAplicationTalentImplCopyWith<
          _$CategoriesGetAplicationTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationGetAplicationTalent _$LocationGetAplicationTalentFromJson(
    Map<String, dynamic> json) {
  return _LocationGetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$LocationGetAplicationTalent {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  dynamic get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this LocationGetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationGetAplicationTalentCopyWith<LocationGetAplicationTalent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationGetAplicationTalentCopyWith<$Res> {
  factory $LocationGetAplicationTalentCopyWith(
          LocationGetAplicationTalent value,
          $Res Function(LocationGetAplicationTalent) then) =
      _$LocationGetAplicationTalentCopyWithImpl<$Res,
          LocationGetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') dynamic parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$LocationGetAplicationTalentCopyWithImpl<$Res,
        $Val extends LocationGetAplicationTalent>
    implements $LocationGetAplicationTalentCopyWith<$Res> {
  _$LocationGetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationGetAplicationTalentImplCopyWith<$Res>
    implements $LocationGetAplicationTalentCopyWith<$Res> {
  factory _$$LocationGetAplicationTalentImplCopyWith(
          _$LocationGetAplicationTalentImpl value,
          $Res Function(_$LocationGetAplicationTalentImpl) then) =
      __$$LocationGetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') dynamic parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$LocationGetAplicationTalentImplCopyWithImpl<$Res>
    extends _$LocationGetAplicationTalentCopyWithImpl<$Res,
        _$LocationGetAplicationTalentImpl>
    implements _$$LocationGetAplicationTalentImplCopyWith<$Res> {
  __$$LocationGetAplicationTalentImplCopyWithImpl(
      _$LocationGetAplicationTalentImpl _value,
      $Res Function(_$LocationGetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
  }) {
    return _then(_$LocationGetAplicationTalentImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationGetAplicationTalentImpl
    implements _LocationGetAplicationTalent {
  const _$LocationGetAplicationTalentImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'id') this.id});

  factory _$LocationGetAplicationTalentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LocationGetAplicationTalentImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'parent_id')
  final dynamic parentId;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'LocationGetAplicationTalent(name: $name, parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationGetAplicationTalentImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(parentId), id);

  /// Create a copy of LocationGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationGetAplicationTalentImplCopyWith<_$LocationGetAplicationTalentImpl>
      get copyWith => __$$LocationGetAplicationTalentImplCopyWithImpl<
          _$LocationGetAplicationTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationGetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _LocationGetAplicationTalent
    implements LocationGetAplicationTalent {
  const factory _LocationGetAplicationTalent(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'parent_id') final dynamic parentId,
          @JsonKey(name: 'id') final String? id}) =
      _$LocationGetAplicationTalentImpl;

  factory _LocationGetAplicationTalent.fromJson(Map<String, dynamic> json) =
      _$LocationGetAplicationTalentImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'parent_id')
  dynamic get parentId;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of LocationGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationGetAplicationTalentImplCopyWith<_$LocationGetAplicationTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PhotoGetAplicationTalent _$PhotoGetAplicationTalentFromJson(
    Map<String, dynamic> json) {
  return _PhotoGetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$PhotoGetAplicationTalent {
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this PhotoGetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoGetAplicationTalentCopyWith<PhotoGetAplicationTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoGetAplicationTalentCopyWith<$Res> {
  factory $PhotoGetAplicationTalentCopyWith(PhotoGetAplicationTalent value,
          $Res Function(PhotoGetAplicationTalent) then) =
      _$PhotoGetAplicationTalentCopyWithImpl<$Res, PhotoGetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$PhotoGetAplicationTalentCopyWithImpl<$Res,
        $Val extends PhotoGetAplicationTalent>
    implements $PhotoGetAplicationTalentCopyWith<$Res> {
  _$PhotoGetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoGetAplicationTalentImplCopyWith<$Res>
    implements $PhotoGetAplicationTalentCopyWith<$Res> {
  factory _$$PhotoGetAplicationTalentImplCopyWith(
          _$PhotoGetAplicationTalentImpl value,
          $Res Function(_$PhotoGetAplicationTalentImpl) then) =
      __$$PhotoGetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$PhotoGetAplicationTalentImplCopyWithImpl<$Res>
    extends _$PhotoGetAplicationTalentCopyWithImpl<$Res,
        _$PhotoGetAplicationTalentImpl>
    implements _$$PhotoGetAplicationTalentImplCopyWith<$Res> {
  __$$PhotoGetAplicationTalentImplCopyWithImpl(
      _$PhotoGetAplicationTalentImpl _value,
      $Res Function(_$PhotoGetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_$PhotoGetAplicationTalentImpl(
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoGetAplicationTalentImpl implements _PhotoGetAplicationTalent {
  const _$PhotoGetAplicationTalentImpl(
      {@JsonKey(name: 'photo_url') this.photoUrl,
      @JsonKey(name: 'id') this.id});

  factory _$PhotoGetAplicationTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoGetAplicationTalentImplFromJson(json);

  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'PhotoGetAplicationTalent(photoUrl: $photoUrl, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoGetAplicationTalentImpl &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, photoUrl, id);

  /// Create a copy of PhotoGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoGetAplicationTalentImplCopyWith<_$PhotoGetAplicationTalentImpl>
      get copyWith => __$$PhotoGetAplicationTalentImplCopyWithImpl<
          _$PhotoGetAplicationTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoGetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _PhotoGetAplicationTalent implements PhotoGetAplicationTalent {
  const factory _PhotoGetAplicationTalent(
      {@JsonKey(name: 'photo_url') final String? photoUrl,
      @JsonKey(name: 'id') final String? id}) = _$PhotoGetAplicationTalentImpl;

  factory _PhotoGetAplicationTalent.fromJson(Map<String, dynamic> json) =
      _$PhotoGetAplicationTalentImpl.fromJson;

  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of PhotoGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoGetAplicationTalentImplCopyWith<_$PhotoGetAplicationTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserLanguageGetAplicationTalent _$UserLanguageGetAplicationTalentFromJson(
    Map<String, dynamic> json) {
  return _UserLanguageGetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$UserLanguageGetAplicationTalent {
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  String? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this UserLanguageGetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLanguageGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLanguageGetAplicationTalentCopyWith<UserLanguageGetAplicationTalent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLanguageGetAplicationTalentCopyWith<$Res> {
  factory $UserLanguageGetAplicationTalentCopyWith(
          UserLanguageGetAplicationTalent value,
          $Res Function(UserLanguageGetAplicationTalent) then) =
      _$UserLanguageGetAplicationTalentCopyWithImpl<$Res,
          UserLanguageGetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'level') String? level,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$UserLanguageGetAplicationTalentCopyWithImpl<$Res,
        $Val extends UserLanguageGetAplicationTalent>
    implements $UserLanguageGetAplicationTalentCopyWith<$Res> {
  _$UserLanguageGetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLanguageGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? level = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLanguageGetAplicationTalentImplCopyWith<$Res>
    implements $UserLanguageGetAplicationTalentCopyWith<$Res> {
  factory _$$UserLanguageGetAplicationTalentImplCopyWith(
          _$UserLanguageGetAplicationTalentImpl value,
          $Res Function(_$UserLanguageGetAplicationTalentImpl) then) =
      __$$UserLanguageGetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'level') String? level,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$UserLanguageGetAplicationTalentImplCopyWithImpl<$Res>
    extends _$UserLanguageGetAplicationTalentCopyWithImpl<$Res,
        _$UserLanguageGetAplicationTalentImpl>
    implements _$$UserLanguageGetAplicationTalentImplCopyWith<$Res> {
  __$$UserLanguageGetAplicationTalentImplCopyWithImpl(
      _$UserLanguageGetAplicationTalentImpl _value,
      $Res Function(_$UserLanguageGetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLanguageGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? level = freezed,
    Object? id = freezed,
  }) {
    return _then(_$UserLanguageGetAplicationTalentImpl(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLanguageGetAplicationTalentImpl
    implements _UserLanguageGetAplicationTalent {
  const _$UserLanguageGetAplicationTalentImpl(
      {@JsonKey(name: 'language') this.language,
      @JsonKey(name: 'level') this.level,
      @JsonKey(name: 'id') this.id});

  factory _$UserLanguageGetAplicationTalentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserLanguageGetAplicationTalentImplFromJson(json);

  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'level')
  final String? level;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'UserLanguageGetAplicationTalent(language: $language, level: $level, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLanguageGetAplicationTalentImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, language, level, id);

  /// Create a copy of UserLanguageGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLanguageGetAplicationTalentImplCopyWith<
          _$UserLanguageGetAplicationTalentImpl>
      get copyWith => __$$UserLanguageGetAplicationTalentImplCopyWithImpl<
          _$UserLanguageGetAplicationTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLanguageGetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _UserLanguageGetAplicationTalent
    implements UserLanguageGetAplicationTalent {
  const factory _UserLanguageGetAplicationTalent(
          {@JsonKey(name: 'language') final String? language,
          @JsonKey(name: 'level') final String? level,
          @JsonKey(name: 'id') final String? id}) =
      _$UserLanguageGetAplicationTalentImpl;

  factory _UserLanguageGetAplicationTalent.fromJson(Map<String, dynamic> json) =
      _$UserLanguageGetAplicationTalentImpl.fromJson;

  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'level')
  String? get level;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of UserLanguageGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLanguageGetAplicationTalentImplCopyWith<
          _$UserLanguageGetAplicationTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VideoGetAplicationTalent _$VideoGetAplicationTalentFromJson(
    Map<String, dynamic> json) {
  return _VideoGetAplicationTalent.fromJson(json);
}

/// @nodoc
mixin _$VideoGetAplicationTalent {
  @JsonKey(name: 'video_url')
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this VideoGetAplicationTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoGetAplicationTalentCopyWith<VideoGetAplicationTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoGetAplicationTalentCopyWith<$Res> {
  factory $VideoGetAplicationTalentCopyWith(VideoGetAplicationTalent value,
          $Res Function(VideoGetAplicationTalent) then) =
      _$VideoGetAplicationTalentCopyWithImpl<$Res, VideoGetAplicationTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$VideoGetAplicationTalentCopyWithImpl<$Res,
        $Val extends VideoGetAplicationTalent>
    implements $VideoGetAplicationTalentCopyWith<$Res> {
  _$VideoGetAplicationTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoGetAplicationTalentImplCopyWith<$Res>
    implements $VideoGetAplicationTalentCopyWith<$Res> {
  factory _$$VideoGetAplicationTalentImplCopyWith(
          _$VideoGetAplicationTalentImpl value,
          $Res Function(_$VideoGetAplicationTalentImpl) then) =
      __$$VideoGetAplicationTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$VideoGetAplicationTalentImplCopyWithImpl<$Res>
    extends _$VideoGetAplicationTalentCopyWithImpl<$Res,
        _$VideoGetAplicationTalentImpl>
    implements _$$VideoGetAplicationTalentImplCopyWith<$Res> {
  __$$VideoGetAplicationTalentImplCopyWithImpl(
      _$VideoGetAplicationTalentImpl _value,
      $Res Function(_$VideoGetAplicationTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_$VideoGetAplicationTalentImpl(
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoGetAplicationTalentImpl implements _VideoGetAplicationTalent {
  const _$VideoGetAplicationTalentImpl(
      {@JsonKey(name: 'video_url') this.videoUrl,
      @JsonKey(name: 'id') this.id});

  factory _$VideoGetAplicationTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoGetAplicationTalentImplFromJson(json);

  @override
  @JsonKey(name: 'video_url')
  final String? videoUrl;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'VideoGetAplicationTalent(videoUrl: $videoUrl, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoGetAplicationTalentImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, videoUrl, id);

  /// Create a copy of VideoGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoGetAplicationTalentImplCopyWith<_$VideoGetAplicationTalentImpl>
      get copyWith => __$$VideoGetAplicationTalentImplCopyWithImpl<
          _$VideoGetAplicationTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoGetAplicationTalentImplToJson(
      this,
    );
  }
}

abstract class _VideoGetAplicationTalent implements VideoGetAplicationTalent {
  const factory _VideoGetAplicationTalent(
      {@JsonKey(name: 'video_url') final String? videoUrl,
      @JsonKey(name: 'id') final String? id}) = _$VideoGetAplicationTalentImpl;

  factory _VideoGetAplicationTalent.fromJson(Map<String, dynamic> json) =
      _$VideoGetAplicationTalentImpl.fromJson;

  @override
  @JsonKey(name: 'video_url')
  String? get videoUrl;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of VideoGetAplicationTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoGetAplicationTalentImplCopyWith<_$VideoGetAplicationTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
