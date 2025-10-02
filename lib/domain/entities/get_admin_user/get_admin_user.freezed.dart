// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_admin_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAdminUser _$GetAdminUserFromJson(Map<String, dynamic> json) {
  return _GetAdminUser.fromJson(json);
}

/// @nodoc
mixin _$GetAdminUser {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DatumGetAdminUser>? get data => throw _privateConstructorUsedError;

  /// Serializes this GetAdminUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAdminUserCopyWith<GetAdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAdminUserCopyWith<$Res> {
  factory $GetAdminUserCopyWith(
          GetAdminUser value, $Res Function(GetAdminUser) then) =
      _$GetAdminUserCopyWithImpl<$Res, GetAdminUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetAdminUser>? data});
}

/// @nodoc
class _$GetAdminUserCopyWithImpl<$Res, $Val extends GetAdminUser>
    implements $GetAdminUserCopyWith<$Res> {
  _$GetAdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAdminUser
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
              as List<DatumGetAdminUser>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAdminUserImplCopyWith<$Res>
    implements $GetAdminUserCopyWith<$Res> {
  factory _$$GetAdminUserImplCopyWith(
          _$GetAdminUserImpl value, $Res Function(_$GetAdminUserImpl) then) =
      __$$GetAdminUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetAdminUser>? data});
}

/// @nodoc
class __$$GetAdminUserImplCopyWithImpl<$Res>
    extends _$GetAdminUserCopyWithImpl<$Res, _$GetAdminUserImpl>
    implements _$$GetAdminUserImplCopyWith<$Res> {
  __$$GetAdminUserImplCopyWithImpl(
      _$GetAdminUserImpl _value, $Res Function(_$GetAdminUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAdminUserImpl(
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
              as List<DatumGetAdminUser>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAdminUserImpl implements _GetAdminUser {
  const _$GetAdminUserImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<DatumGetAdminUser>? data})
      : _data = data;

  factory _$GetAdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAdminUserImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<DatumGetAdminUser>? _data;
  @override
  @JsonKey(name: 'data')
  List<DatumGetAdminUser>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAdminUser(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminUserImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminUserImplCopyWith<_$GetAdminUserImpl> get copyWith =>
      __$$GetAdminUserImplCopyWithImpl<_$GetAdminUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAdminUserImplToJson(
      this,
    );
  }
}

abstract class _GetAdminUser implements GetAdminUser {
  const factory _GetAdminUser(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<DatumGetAdminUser>? data}) =
      _$GetAdminUserImpl;

  factory _GetAdminUser.fromJson(Map<String, dynamic> json) =
      _$GetAdminUserImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<DatumGetAdminUser>? get data;

  /// Create a copy of GetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAdminUserImplCopyWith<_$GetAdminUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatumGetAdminUser _$DatumGetAdminUserFromJson(Map<String, dynamic> json) {
  return _DatumGetAdminUser.fromJson(json);
}

/// @nodoc
mixin _$DatumGetAdminUser {
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
  ProfileGetAdminUser? get profile => throw _privateConstructorUsedError;

  /// Serializes this DatumGetAdminUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatumGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumGetAdminUserCopyWith<DatumGetAdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumGetAdminUserCopyWith<$Res> {
  factory $DatumGetAdminUserCopyWith(
          DatumGetAdminUser value, $Res Function(DatumGetAdminUser) then) =
      _$DatumGetAdminUserCopyWithImpl<$Res, DatumGetAdminUser>;
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
      @JsonKey(name: 'profile') ProfileGetAdminUser? profile});

  $ProfileGetAdminUserCopyWith<$Res>? get profile;
}

/// @nodoc
class _$DatumGetAdminUserCopyWithImpl<$Res, $Val extends DatumGetAdminUser>
    implements $DatumGetAdminUserCopyWith<$Res> {
  _$DatumGetAdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatumGetAdminUser
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
              as ProfileGetAdminUser?,
    ) as $Val);
  }

  /// Create a copy of DatumGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileGetAdminUserCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileGetAdminUserCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumGetAdminUserImplCopyWith<$Res>
    implements $DatumGetAdminUserCopyWith<$Res> {
  factory _$$DatumGetAdminUserImplCopyWith(_$DatumGetAdminUserImpl value,
          $Res Function(_$DatumGetAdminUserImpl) then) =
      __$$DatumGetAdminUserImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'profile') ProfileGetAdminUser? profile});

  @override
  $ProfileGetAdminUserCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$DatumGetAdminUserImplCopyWithImpl<$Res>
    extends _$DatumGetAdminUserCopyWithImpl<$Res, _$DatumGetAdminUserImpl>
    implements _$$DatumGetAdminUserImplCopyWith<$Res> {
  __$$DatumGetAdminUserImplCopyWithImpl(_$DatumGetAdminUserImpl _value,
      $Res Function(_$DatumGetAdminUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatumGetAdminUser
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
    return _then(_$DatumGetAdminUserImpl(
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
              as ProfileGetAdminUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumGetAdminUserImpl implements _DatumGetAdminUser {
  const _$DatumGetAdminUserImpl(
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

  factory _$DatumGetAdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumGetAdminUserImplFromJson(json);

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
  final ProfileGetAdminUser? profile;

  @override
  String toString() {
    return 'DatumGetAdminUser(email: $email, role: $role, id: $id, isActive: $isActive, verificationStatus: $verificationStatus, verificationNote: $verificationNote, verifiedAt: $verifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumGetAdminUserImpl &&
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

  /// Create a copy of DatumGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumGetAdminUserImplCopyWith<_$DatumGetAdminUserImpl> get copyWith =>
      __$$DatumGetAdminUserImplCopyWithImpl<_$DatumGetAdminUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumGetAdminUserImplToJson(
      this,
    );
  }
}

abstract class _DatumGetAdminUser implements DatumGetAdminUser {
  const factory _DatumGetAdminUser(
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
      final ProfileGetAdminUser? profile}) = _$DatumGetAdminUserImpl;

  factory _DatumGetAdminUser.fromJson(Map<String, dynamic> json) =
      _$DatumGetAdminUserImpl.fromJson;

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
  ProfileGetAdminUser? get profile;

  /// Create a copy of DatumGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumGetAdminUserImplCopyWith<_$DatumGetAdminUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileGetAdminUser _$ProfileGetAdminUserFromJson(Map<String, dynamic> json) {
  return _ProfileGetAdminUser.fromJson(json);
}

/// @nodoc
mixin _$ProfileGetAdminUser {
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
  LocationGetAdminUser? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_language')
  List<UserLanguageGetAdminUser>? get userLanguage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'photos')
  List<PhotoGetAdminUser>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  List<VideoGetAdminUser>? get videos => throw _privateConstructorUsedError;
  @JsonKey(name: 'interest_categories')
  List<InterestCategoryGetAdminUser>? get interestCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'experiences')
  List<ExperienceGetAdminUser>? get experiences =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileGetAdminUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileGetAdminUserCopyWith<ProfileGetAdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileGetAdminUserCopyWith<$Res> {
  factory $ProfileGetAdminUserCopyWith(
          ProfileGetAdminUser value, $Res Function(ProfileGetAdminUser) then) =
      _$ProfileGetAdminUserCopyWithImpl<$Res, ProfileGetAdminUser>;
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
      @JsonKey(name: 'location') LocationGetAdminUser? location,
      @JsonKey(name: 'user_language')
      List<UserLanguageGetAdminUser>? userLanguage,
      @JsonKey(name: 'photos') List<PhotoGetAdminUser>? photos,
      @JsonKey(name: 'videos') List<VideoGetAdminUser>? videos,
      @JsonKey(name: 'interest_categories')
      List<InterestCategoryGetAdminUser>? interestCategories,
      @JsonKey(name: 'experiences') List<ExperienceGetAdminUser>? experiences});

  $LocationGetAdminUserCopyWith<$Res>? get location;
}

/// @nodoc
class _$ProfileGetAdminUserCopyWithImpl<$Res, $Val extends ProfileGetAdminUser>
    implements $ProfileGetAdminUserCopyWith<$Res> {
  _$ProfileGetAdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileGetAdminUser
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
              as LocationGetAdminUser?,
      userLanguage: freezed == userLanguage
          ? _value.userLanguage
          : userLanguage // ignore: cast_nullable_to_non_nullable
              as List<UserLanguageGetAdminUser>?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoGetAdminUser>?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoGetAdminUser>?,
      interestCategories: freezed == interestCategories
          ? _value.interestCategories
          : interestCategories // ignore: cast_nullable_to_non_nullable
              as List<InterestCategoryGetAdminUser>?,
      experiences: freezed == experiences
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceGetAdminUser>?,
    ) as $Val);
  }

  /// Create a copy of ProfileGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationGetAdminUserCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationGetAdminUserCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileGetAdminUserImplCopyWith<$Res>
    implements $ProfileGetAdminUserCopyWith<$Res> {
  factory _$$ProfileGetAdminUserImplCopyWith(_$ProfileGetAdminUserImpl value,
          $Res Function(_$ProfileGetAdminUserImpl) then) =
      __$$ProfileGetAdminUserImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'location') LocationGetAdminUser? location,
      @JsonKey(name: 'user_language')
      List<UserLanguageGetAdminUser>? userLanguage,
      @JsonKey(name: 'photos') List<PhotoGetAdminUser>? photos,
      @JsonKey(name: 'videos') List<VideoGetAdminUser>? videos,
      @JsonKey(name: 'interest_categories')
      List<InterestCategoryGetAdminUser>? interestCategories,
      @JsonKey(name: 'experiences') List<ExperienceGetAdminUser>? experiences});

  @override
  $LocationGetAdminUserCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ProfileGetAdminUserImplCopyWithImpl<$Res>
    extends _$ProfileGetAdminUserCopyWithImpl<$Res, _$ProfileGetAdminUserImpl>
    implements _$$ProfileGetAdminUserImplCopyWith<$Res> {
  __$$ProfileGetAdminUserImplCopyWithImpl(_$ProfileGetAdminUserImpl _value,
      $Res Function(_$ProfileGetAdminUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileGetAdminUser
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
    return _then(_$ProfileGetAdminUserImpl(
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
              as LocationGetAdminUser?,
      userLanguage: freezed == userLanguage
          ? _value._userLanguage
          : userLanguage // ignore: cast_nullable_to_non_nullable
              as List<UserLanguageGetAdminUser>?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoGetAdminUser>?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoGetAdminUser>?,
      interestCategories: freezed == interestCategories
          ? _value._interestCategories
          : interestCategories // ignore: cast_nullable_to_non_nullable
              as List<InterestCategoryGetAdminUser>?,
      experiences: freezed == experiences
          ? _value._experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceGetAdminUser>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileGetAdminUserImpl implements _ProfileGetAdminUser {
  const _$ProfileGetAdminUserImpl(
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
      final List<UserLanguageGetAdminUser>? userLanguage,
      @JsonKey(name: 'photos') final List<PhotoGetAdminUser>? photos,
      @JsonKey(name: 'videos') final List<VideoGetAdminUser>? videos,
      @JsonKey(name: 'interest_categories')
      final List<InterestCategoryGetAdminUser>? interestCategories,
      @JsonKey(name: 'experiences')
      final List<ExperienceGetAdminUser>? experiences})
      : _userLanguage = userLanguage,
        _photos = photos,
        _videos = videos,
        _interestCategories = interestCategories,
        _experiences = experiences;

  factory _$ProfileGetAdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileGetAdminUserImplFromJson(json);

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
  final LocationGetAdminUser? location;
  final List<UserLanguageGetAdminUser>? _userLanguage;
  @override
  @JsonKey(name: 'user_language')
  List<UserLanguageGetAdminUser>? get userLanguage {
    final value = _userLanguage;
    if (value == null) return null;
    if (_userLanguage is EqualUnmodifiableListView) return _userLanguage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PhotoGetAdminUser>? _photos;
  @override
  @JsonKey(name: 'photos')
  List<PhotoGetAdminUser>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VideoGetAdminUser>? _videos;
  @override
  @JsonKey(name: 'videos')
  List<VideoGetAdminUser>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<InterestCategoryGetAdminUser>? _interestCategories;
  @override
  @JsonKey(name: 'interest_categories')
  List<InterestCategoryGetAdminUser>? get interestCategories {
    final value = _interestCategories;
    if (value == null) return null;
    if (_interestCategories is EqualUnmodifiableListView)
      return _interestCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExperienceGetAdminUser>? _experiences;
  @override
  @JsonKey(name: 'experiences')
  List<ExperienceGetAdminUser>? get experiences {
    final value = _experiences;
    if (value == null) return null;
    if (_experiences is EqualUnmodifiableListView) return _experiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileGetAdminUser(name: $name, username: $username, birthDate: $birthDate, gender: $gender, phone: $phone, age: $age, ageCastingMin: $ageCastingMin, ageCastingMax: $ageCastingMax, height: $height, weight: $weight, ukuranBaju: $ukuranBaju, ukuranCelana: $ukuranCelana, ukuranSepatu: $ukuranSepatu, suku: $suku, warnaKulit: $warnaKulit, instagramUsername: $instagramUsername, instagramFollower: $instagramFollower, tiktokUsername: $tiktokUsername, tiktokFollower: $tiktokFollower, youtubeUsername: $youtubeUsername, youtubeFollower: $youtubeFollower, isPassport: $isPassport, isNpwp: $isNpwp, photoProfile: $photoProfile, locationId: $locationId, id: $id, userId: $userId, location: $location, userLanguage: $userLanguage, photos: $photos, videos: $videos, interestCategories: $interestCategories, experiences: $experiences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileGetAdminUserImpl &&
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

  /// Create a copy of ProfileGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileGetAdminUserImplCopyWith<_$ProfileGetAdminUserImpl> get copyWith =>
      __$$ProfileGetAdminUserImplCopyWithImpl<_$ProfileGetAdminUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileGetAdminUserImplToJson(
      this,
    );
  }
}

abstract class _ProfileGetAdminUser implements ProfileGetAdminUser {
  const factory _ProfileGetAdminUser(
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
          @JsonKey(name: 'location') final LocationGetAdminUser? location,
          @JsonKey(name: 'user_language')
          final List<UserLanguageGetAdminUser>? userLanguage,
          @JsonKey(name: 'photos') final List<PhotoGetAdminUser>? photos,
          @JsonKey(name: 'videos') final List<VideoGetAdminUser>? videos,
          @JsonKey(name: 'interest_categories')
          final List<InterestCategoryGetAdminUser>? interestCategories,
          @JsonKey(name: 'experiences')
          final List<ExperienceGetAdminUser>? experiences}) =
      _$ProfileGetAdminUserImpl;

  factory _ProfileGetAdminUser.fromJson(Map<String, dynamic> json) =
      _$ProfileGetAdminUserImpl.fromJson;

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
  LocationGetAdminUser? get location;
  @override
  @JsonKey(name: 'user_language')
  List<UserLanguageGetAdminUser>? get userLanguage;
  @override
  @JsonKey(name: 'photos')
  List<PhotoGetAdminUser>? get photos;
  @override
  @JsonKey(name: 'videos')
  List<VideoGetAdminUser>? get videos;
  @override
  @JsonKey(name: 'interest_categories')
  List<InterestCategoryGetAdminUser>? get interestCategories;
  @override
  @JsonKey(name: 'experiences')
  List<ExperienceGetAdminUser>? get experiences;

  /// Create a copy of ProfileGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileGetAdminUserImplCopyWith<_$ProfileGetAdminUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExperienceGetAdminUser _$ExperienceGetAdminUserFromJson(
    Map<String, dynamic> json) {
  return _ExperienceGetAdminUser.fromJson(json);
}

/// @nodoc
mixin _$ExperienceGetAdminUser {
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

  /// Serializes this ExperienceGetAdminUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExperienceGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExperienceGetAdminUserCopyWith<ExperienceGetAdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceGetAdminUserCopyWith<$Res> {
  factory $ExperienceGetAdminUserCopyWith(ExperienceGetAdminUser value,
          $Res Function(ExperienceGetAdminUser) then) =
      _$ExperienceGetAdminUserCopyWithImpl<$Res, ExperienceGetAdminUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'profile_id') String? profileId});
}

/// @nodoc
class _$ExperienceGetAdminUserCopyWithImpl<$Res,
        $Val extends ExperienceGetAdminUser>
    implements $ExperienceGetAdminUserCopyWith<$Res> {
  _$ExperienceGetAdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExperienceGetAdminUser
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
abstract class _$$ExperienceGetAdminUserImplCopyWith<$Res>
    implements $ExperienceGetAdminUserCopyWith<$Res> {
  factory _$$ExperienceGetAdminUserImplCopyWith(
          _$ExperienceGetAdminUserImpl value,
          $Res Function(_$ExperienceGetAdminUserImpl) then) =
      __$$ExperienceGetAdminUserImplCopyWithImpl<$Res>;
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
class __$$ExperienceGetAdminUserImplCopyWithImpl<$Res>
    extends _$ExperienceGetAdminUserCopyWithImpl<$Res,
        _$ExperienceGetAdminUserImpl>
    implements _$$ExperienceGetAdminUserImplCopyWith<$Res> {
  __$$ExperienceGetAdminUserImplCopyWithImpl(
      _$ExperienceGetAdminUserImpl _value,
      $Res Function(_$ExperienceGetAdminUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExperienceGetAdminUser
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
    return _then(_$ExperienceGetAdminUserImpl(
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
class _$ExperienceGetAdminUserImpl implements _ExperienceGetAdminUser {
  const _$ExperienceGetAdminUserImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'video_url') this.videoUrl,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'profile_id') this.profileId});

  factory _$ExperienceGetAdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceGetAdminUserImplFromJson(json);

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
    return 'ExperienceGetAdminUser(title: $title, description: $description, videoUrl: $videoUrl, id: $id, profileId: $profileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceGetAdminUserImpl &&
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

  /// Create a copy of ExperienceGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceGetAdminUserImplCopyWith<_$ExperienceGetAdminUserImpl>
      get copyWith => __$$ExperienceGetAdminUserImplCopyWithImpl<
          _$ExperienceGetAdminUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceGetAdminUserImplToJson(
      this,
    );
  }
}

abstract class _ExperienceGetAdminUser implements ExperienceGetAdminUser {
  const factory _ExperienceGetAdminUser(
          {@JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'video_url') final String? videoUrl,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'profile_id') final String? profileId}) =
      _$ExperienceGetAdminUserImpl;

  factory _ExperienceGetAdminUser.fromJson(Map<String, dynamic> json) =
      _$ExperienceGetAdminUserImpl.fromJson;

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

  /// Create a copy of ExperienceGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExperienceGetAdminUserImplCopyWith<_$ExperienceGetAdminUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InterestCategoryGetAdminUser _$InterestCategoryGetAdminUserFromJson(
    Map<String, dynamic> json) {
  return _InterestCategoryGetAdminUser.fromJson(json);
}

/// @nodoc
mixin _$InterestCategoryGetAdminUser {
  @JsonKey(name: 'job_categories_id')
  String? get jobCategoriesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_min')
  int? get budgetMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_max')
  int? get budgetMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  CategoriesGetAdminUser? get categories => throw _privateConstructorUsedError;

  /// Serializes this InterestCategoryGetAdminUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterestCategoryGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestCategoryGetAdminUserCopyWith<InterestCategoryGetAdminUser>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestCategoryGetAdminUserCopyWith<$Res> {
  factory $InterestCategoryGetAdminUserCopyWith(
          InterestCategoryGetAdminUser value,
          $Res Function(InterestCategoryGetAdminUser) then) =
      _$InterestCategoryGetAdminUserCopyWithImpl<$Res,
          InterestCategoryGetAdminUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'job_categories_id') String? jobCategoriesId,
      @JsonKey(name: 'budget_min') int? budgetMin,
      @JsonKey(name: 'budget_max') int? budgetMax,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'categories') CategoriesGetAdminUser? categories});

  $CategoriesGetAdminUserCopyWith<$Res>? get categories;
}

/// @nodoc
class _$InterestCategoryGetAdminUserCopyWithImpl<$Res,
        $Val extends InterestCategoryGetAdminUser>
    implements $InterestCategoryGetAdminUserCopyWith<$Res> {
  _$InterestCategoryGetAdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestCategoryGetAdminUser
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
              as CategoriesGetAdminUser?,
    ) as $Val);
  }

  /// Create a copy of InterestCategoryGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoriesGetAdminUserCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $CategoriesGetAdminUserCopyWith<$Res>(_value.categories!, (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InterestCategoryGetAdminUserImplCopyWith<$Res>
    implements $InterestCategoryGetAdminUserCopyWith<$Res> {
  factory _$$InterestCategoryGetAdminUserImplCopyWith(
          _$InterestCategoryGetAdminUserImpl value,
          $Res Function(_$InterestCategoryGetAdminUserImpl) then) =
      __$$InterestCategoryGetAdminUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'job_categories_id') String? jobCategoriesId,
      @JsonKey(name: 'budget_min') int? budgetMin,
      @JsonKey(name: 'budget_max') int? budgetMax,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'categories') CategoriesGetAdminUser? categories});

  @override
  $CategoriesGetAdminUserCopyWith<$Res>? get categories;
}

/// @nodoc
class __$$InterestCategoryGetAdminUserImplCopyWithImpl<$Res>
    extends _$InterestCategoryGetAdminUserCopyWithImpl<$Res,
        _$InterestCategoryGetAdminUserImpl>
    implements _$$InterestCategoryGetAdminUserImplCopyWith<$Res> {
  __$$InterestCategoryGetAdminUserImplCopyWithImpl(
      _$InterestCategoryGetAdminUserImpl _value,
      $Res Function(_$InterestCategoryGetAdminUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestCategoryGetAdminUser
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
    return _then(_$InterestCategoryGetAdminUserImpl(
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
              as CategoriesGetAdminUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestCategoryGetAdminUserImpl
    implements _InterestCategoryGetAdminUser {
  const _$InterestCategoryGetAdminUserImpl(
      {@JsonKey(name: 'job_categories_id') this.jobCategoriesId,
      @JsonKey(name: 'budget_min') this.budgetMin,
      @JsonKey(name: 'budget_max') this.budgetMax,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'categories') this.categories});

  factory _$InterestCategoryGetAdminUserImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InterestCategoryGetAdminUserImplFromJson(json);

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
  final CategoriesGetAdminUser? categories;

  @override
  String toString() {
    return 'InterestCategoryGetAdminUser(jobCategoriesId: $jobCategoriesId, budgetMin: $budgetMin, budgetMax: $budgetMax, id: $id, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestCategoryGetAdminUserImpl &&
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

  /// Create a copy of InterestCategoryGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestCategoryGetAdminUserImplCopyWith<
          _$InterestCategoryGetAdminUserImpl>
      get copyWith => __$$InterestCategoryGetAdminUserImplCopyWithImpl<
          _$InterestCategoryGetAdminUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestCategoryGetAdminUserImplToJson(
      this,
    );
  }
}

abstract class _InterestCategoryGetAdminUser
    implements InterestCategoryGetAdminUser {
  const factory _InterestCategoryGetAdminUser(
          {@JsonKey(name: 'job_categories_id') final String? jobCategoriesId,
          @JsonKey(name: 'budget_min') final int? budgetMin,
          @JsonKey(name: 'budget_max') final int? budgetMax,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'categories')
          final CategoriesGetAdminUser? categories}) =
      _$InterestCategoryGetAdminUserImpl;

  factory _InterestCategoryGetAdminUser.fromJson(Map<String, dynamic> json) =
      _$InterestCategoryGetAdminUserImpl.fromJson;

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
  CategoriesGetAdminUser? get categories;

  /// Create a copy of InterestCategoryGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestCategoryGetAdminUserImplCopyWith<
          _$InterestCategoryGetAdminUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoriesGetAdminUser _$CategoriesGetAdminUserFromJson(
    Map<String, dynamic> json) {
  return _CategoriesGetAdminUser.fromJson(json);
}

/// @nodoc
mixin _$CategoriesGetAdminUser {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this CategoriesGetAdminUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesGetAdminUserCopyWith<CategoriesGetAdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesGetAdminUserCopyWith<$Res> {
  factory $CategoriesGetAdminUserCopyWith(CategoriesGetAdminUser value,
          $Res Function(CategoriesGetAdminUser) then) =
      _$CategoriesGetAdminUserCopyWithImpl<$Res, CategoriesGetAdminUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$CategoriesGetAdminUserCopyWithImpl<$Res,
        $Val extends CategoriesGetAdminUser>
    implements $CategoriesGetAdminUserCopyWith<$Res> {
  _$CategoriesGetAdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesGetAdminUser
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
abstract class _$$CategoriesGetAdminUserImplCopyWith<$Res>
    implements $CategoriesGetAdminUserCopyWith<$Res> {
  factory _$$CategoriesGetAdminUserImplCopyWith(
          _$CategoriesGetAdminUserImpl value,
          $Res Function(_$CategoriesGetAdminUserImpl) then) =
      __$$CategoriesGetAdminUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$CategoriesGetAdminUserImplCopyWithImpl<$Res>
    extends _$CategoriesGetAdminUserCopyWithImpl<$Res,
        _$CategoriesGetAdminUserImpl>
    implements _$$CategoriesGetAdminUserImplCopyWith<$Res> {
  __$$CategoriesGetAdminUserImplCopyWithImpl(
      _$CategoriesGetAdminUserImpl _value,
      $Res Function(_$CategoriesGetAdminUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
  }) {
    return _then(_$CategoriesGetAdminUserImpl(
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
class _$CategoriesGetAdminUserImpl implements _CategoriesGetAdminUser {
  const _$CategoriesGetAdminUserImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'id') this.id});

  factory _$CategoriesGetAdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesGetAdminUserImplFromJson(json);

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
    return 'CategoriesGetAdminUser(name: $name, isActive: $isActive, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesGetAdminUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, isActive, id);

  /// Create a copy of CategoriesGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesGetAdminUserImplCopyWith<_$CategoriesGetAdminUserImpl>
      get copyWith => __$$CategoriesGetAdminUserImplCopyWithImpl<
          _$CategoriesGetAdminUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesGetAdminUserImplToJson(
      this,
    );
  }
}

abstract class _CategoriesGetAdminUser implements CategoriesGetAdminUser {
  const factory _CategoriesGetAdminUser(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'id') final String? id}) = _$CategoriesGetAdminUserImpl;

  factory _CategoriesGetAdminUser.fromJson(Map<String, dynamic> json) =
      _$CategoriesGetAdminUserImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of CategoriesGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesGetAdminUserImplCopyWith<_$CategoriesGetAdminUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationGetAdminUser _$LocationGetAdminUserFromJson(Map<String, dynamic> json) {
  return _LocationGetAdminUser.fromJson(json);
}

/// @nodoc
mixin _$LocationGetAdminUser {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this LocationGetAdminUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationGetAdminUserCopyWith<LocationGetAdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationGetAdminUserCopyWith<$Res> {
  factory $LocationGetAdminUserCopyWith(LocationGetAdminUser value,
          $Res Function(LocationGetAdminUser) then) =
      _$LocationGetAdminUserCopyWithImpl<$Res, LocationGetAdminUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$LocationGetAdminUserCopyWithImpl<$Res,
        $Val extends LocationGetAdminUser>
    implements $LocationGetAdminUserCopyWith<$Res> {
  _$LocationGetAdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationGetAdminUser
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
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationGetAdminUserImplCopyWith<$Res>
    implements $LocationGetAdminUserCopyWith<$Res> {
  factory _$$LocationGetAdminUserImplCopyWith(_$LocationGetAdminUserImpl value,
          $Res Function(_$LocationGetAdminUserImpl) then) =
      __$$LocationGetAdminUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$LocationGetAdminUserImplCopyWithImpl<$Res>
    extends _$LocationGetAdminUserCopyWithImpl<$Res, _$LocationGetAdminUserImpl>
    implements _$$LocationGetAdminUserImplCopyWith<$Res> {
  __$$LocationGetAdminUserImplCopyWithImpl(_$LocationGetAdminUserImpl _value,
      $Res Function(_$LocationGetAdminUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
  }) {
    return _then(_$LocationGetAdminUserImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
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
class _$LocationGetAdminUserImpl implements _LocationGetAdminUser {
  const _$LocationGetAdminUserImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'id') this.id});

  factory _$LocationGetAdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationGetAdminUserImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'LocationGetAdminUser(name: $name, parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationGetAdminUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, parentId, id);

  /// Create a copy of LocationGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationGetAdminUserImplCopyWith<_$LocationGetAdminUserImpl>
      get copyWith =>
          __$$LocationGetAdminUserImplCopyWithImpl<_$LocationGetAdminUserImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationGetAdminUserImplToJson(
      this,
    );
  }
}

abstract class _LocationGetAdminUser implements LocationGetAdminUser {
  const factory _LocationGetAdminUser(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'parent_id') final String? parentId,
      @JsonKey(name: 'id') final String? id}) = _$LocationGetAdminUserImpl;

  factory _LocationGetAdminUser.fromJson(Map<String, dynamic> json) =
      _$LocationGetAdminUserImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of LocationGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationGetAdminUserImplCopyWith<_$LocationGetAdminUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PhotoGetAdminUser _$PhotoGetAdminUserFromJson(Map<String, dynamic> json) {
  return _PhotoGetAdminUser.fromJson(json);
}

/// @nodoc
mixin _$PhotoGetAdminUser {
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this PhotoGetAdminUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoGetAdminUserCopyWith<PhotoGetAdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoGetAdminUserCopyWith<$Res> {
  factory $PhotoGetAdminUserCopyWith(
          PhotoGetAdminUser value, $Res Function(PhotoGetAdminUser) then) =
      _$PhotoGetAdminUserCopyWithImpl<$Res, PhotoGetAdminUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$PhotoGetAdminUserCopyWithImpl<$Res, $Val extends PhotoGetAdminUser>
    implements $PhotoGetAdminUserCopyWith<$Res> {
  _$PhotoGetAdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoGetAdminUser
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
abstract class _$$PhotoGetAdminUserImplCopyWith<$Res>
    implements $PhotoGetAdminUserCopyWith<$Res> {
  factory _$$PhotoGetAdminUserImplCopyWith(_$PhotoGetAdminUserImpl value,
          $Res Function(_$PhotoGetAdminUserImpl) then) =
      __$$PhotoGetAdminUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$PhotoGetAdminUserImplCopyWithImpl<$Res>
    extends _$PhotoGetAdminUserCopyWithImpl<$Res, _$PhotoGetAdminUserImpl>
    implements _$$PhotoGetAdminUserImplCopyWith<$Res> {
  __$$PhotoGetAdminUserImplCopyWithImpl(_$PhotoGetAdminUserImpl _value,
      $Res Function(_$PhotoGetAdminUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_$PhotoGetAdminUserImpl(
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
class _$PhotoGetAdminUserImpl implements _PhotoGetAdminUser {
  const _$PhotoGetAdminUserImpl(
      {@JsonKey(name: 'photo_url') this.photoUrl,
      @JsonKey(name: 'id') this.id});

  factory _$PhotoGetAdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoGetAdminUserImplFromJson(json);

  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'PhotoGetAdminUser(photoUrl: $photoUrl, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoGetAdminUserImpl &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, photoUrl, id);

  /// Create a copy of PhotoGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoGetAdminUserImplCopyWith<_$PhotoGetAdminUserImpl> get copyWith =>
      __$$PhotoGetAdminUserImplCopyWithImpl<_$PhotoGetAdminUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoGetAdminUserImplToJson(
      this,
    );
  }
}

abstract class _PhotoGetAdminUser implements PhotoGetAdminUser {
  const factory _PhotoGetAdminUser(
      {@JsonKey(name: 'photo_url') final String? photoUrl,
      @JsonKey(name: 'id') final String? id}) = _$PhotoGetAdminUserImpl;

  factory _PhotoGetAdminUser.fromJson(Map<String, dynamic> json) =
      _$PhotoGetAdminUserImpl.fromJson;

  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of PhotoGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoGetAdminUserImplCopyWith<_$PhotoGetAdminUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLanguageGetAdminUser _$UserLanguageGetAdminUserFromJson(
    Map<String, dynamic> json) {
  return _UserLanguageGetAdminUser.fromJson(json);
}

/// @nodoc
mixin _$UserLanguageGetAdminUser {
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  String? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this UserLanguageGetAdminUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLanguageGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLanguageGetAdminUserCopyWith<UserLanguageGetAdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLanguageGetAdminUserCopyWith<$Res> {
  factory $UserLanguageGetAdminUserCopyWith(UserLanguageGetAdminUser value,
          $Res Function(UserLanguageGetAdminUser) then) =
      _$UserLanguageGetAdminUserCopyWithImpl<$Res, UserLanguageGetAdminUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'level') String? level,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$UserLanguageGetAdminUserCopyWithImpl<$Res,
        $Val extends UserLanguageGetAdminUser>
    implements $UserLanguageGetAdminUserCopyWith<$Res> {
  _$UserLanguageGetAdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLanguageGetAdminUser
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
abstract class _$$UserLanguageGetAdminUserImplCopyWith<$Res>
    implements $UserLanguageGetAdminUserCopyWith<$Res> {
  factory _$$UserLanguageGetAdminUserImplCopyWith(
          _$UserLanguageGetAdminUserImpl value,
          $Res Function(_$UserLanguageGetAdminUserImpl) then) =
      __$$UserLanguageGetAdminUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'level') String? level,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$UserLanguageGetAdminUserImplCopyWithImpl<$Res>
    extends _$UserLanguageGetAdminUserCopyWithImpl<$Res,
        _$UserLanguageGetAdminUserImpl>
    implements _$$UserLanguageGetAdminUserImplCopyWith<$Res> {
  __$$UserLanguageGetAdminUserImplCopyWithImpl(
      _$UserLanguageGetAdminUserImpl _value,
      $Res Function(_$UserLanguageGetAdminUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLanguageGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? level = freezed,
    Object? id = freezed,
  }) {
    return _then(_$UserLanguageGetAdminUserImpl(
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
class _$UserLanguageGetAdminUserImpl implements _UserLanguageGetAdminUser {
  const _$UserLanguageGetAdminUserImpl(
      {@JsonKey(name: 'language') this.language,
      @JsonKey(name: 'level') this.level,
      @JsonKey(name: 'id') this.id});

  factory _$UserLanguageGetAdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLanguageGetAdminUserImplFromJson(json);

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
    return 'UserLanguageGetAdminUser(language: $language, level: $level, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLanguageGetAdminUserImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, language, level, id);

  /// Create a copy of UserLanguageGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLanguageGetAdminUserImplCopyWith<_$UserLanguageGetAdminUserImpl>
      get copyWith => __$$UserLanguageGetAdminUserImplCopyWithImpl<
          _$UserLanguageGetAdminUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLanguageGetAdminUserImplToJson(
      this,
    );
  }
}

abstract class _UserLanguageGetAdminUser implements UserLanguageGetAdminUser {
  const factory _UserLanguageGetAdminUser(
      {@JsonKey(name: 'language') final String? language,
      @JsonKey(name: 'level') final String? level,
      @JsonKey(name: 'id') final String? id}) = _$UserLanguageGetAdminUserImpl;

  factory _UserLanguageGetAdminUser.fromJson(Map<String, dynamic> json) =
      _$UserLanguageGetAdminUserImpl.fromJson;

  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'level')
  String? get level;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of UserLanguageGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLanguageGetAdminUserImplCopyWith<_$UserLanguageGetAdminUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VideoGetAdminUser _$VideoGetAdminUserFromJson(Map<String, dynamic> json) {
  return _VideoGetAdminUser.fromJson(json);
}

/// @nodoc
mixin _$VideoGetAdminUser {
  @JsonKey(name: 'video_url')
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this VideoGetAdminUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoGetAdminUserCopyWith<VideoGetAdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoGetAdminUserCopyWith<$Res> {
  factory $VideoGetAdminUserCopyWith(
          VideoGetAdminUser value, $Res Function(VideoGetAdminUser) then) =
      _$VideoGetAdminUserCopyWithImpl<$Res, VideoGetAdminUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$VideoGetAdminUserCopyWithImpl<$Res, $Val extends VideoGetAdminUser>
    implements $VideoGetAdminUserCopyWith<$Res> {
  _$VideoGetAdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoGetAdminUser
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
abstract class _$$VideoGetAdminUserImplCopyWith<$Res>
    implements $VideoGetAdminUserCopyWith<$Res> {
  factory _$$VideoGetAdminUserImplCopyWith(_$VideoGetAdminUserImpl value,
          $Res Function(_$VideoGetAdminUserImpl) then) =
      __$$VideoGetAdminUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$VideoGetAdminUserImplCopyWithImpl<$Res>
    extends _$VideoGetAdminUserCopyWithImpl<$Res, _$VideoGetAdminUserImpl>
    implements _$$VideoGetAdminUserImplCopyWith<$Res> {
  __$$VideoGetAdminUserImplCopyWithImpl(_$VideoGetAdminUserImpl _value,
      $Res Function(_$VideoGetAdminUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_$VideoGetAdminUserImpl(
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
class _$VideoGetAdminUserImpl implements _VideoGetAdminUser {
  const _$VideoGetAdminUserImpl(
      {@JsonKey(name: 'video_url') this.videoUrl,
      @JsonKey(name: 'id') this.id});

  factory _$VideoGetAdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoGetAdminUserImplFromJson(json);

  @override
  @JsonKey(name: 'video_url')
  final String? videoUrl;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'VideoGetAdminUser(videoUrl: $videoUrl, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoGetAdminUserImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, videoUrl, id);

  /// Create a copy of VideoGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoGetAdminUserImplCopyWith<_$VideoGetAdminUserImpl> get copyWith =>
      __$$VideoGetAdminUserImplCopyWithImpl<_$VideoGetAdminUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoGetAdminUserImplToJson(
      this,
    );
  }
}

abstract class _VideoGetAdminUser implements VideoGetAdminUser {
  const factory _VideoGetAdminUser(
      {@JsonKey(name: 'video_url') final String? videoUrl,
      @JsonKey(name: 'id') final String? id}) = _$VideoGetAdminUserImpl;

  factory _VideoGetAdminUser.fromJson(Map<String, dynamic> json) =
      _$VideoGetAdminUserImpl.fromJson;

  @override
  @JsonKey(name: 'video_url')
  String? get videoUrl;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of VideoGetAdminUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoGetAdminUserImplCopyWith<_$VideoGetAdminUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
