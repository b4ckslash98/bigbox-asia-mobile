// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_talent_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTalentProfile _$GetTalentProfileFromJson(Map<String, dynamic> json) {
  return _GetTalentProfile.fromJson(json);
}

/// @nodoc
mixin _$GetTalentProfile {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  TalentData? get data => throw _privateConstructorUsedError;

  /// Serializes this GetTalentProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetTalentProfileCopyWith<GetTalentProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTalentProfileCopyWith<$Res> {
  factory $GetTalentProfileCopyWith(
          GetTalentProfile value, $Res Function(GetTalentProfile) then) =
      _$GetTalentProfileCopyWithImpl<$Res, GetTalentProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') TalentData? data});

  $TalentDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetTalentProfileCopyWithImpl<$Res, $Val extends GetTalentProfile>
    implements $GetTalentProfileCopyWith<$Res> {
  _$GetTalentProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetTalentProfile
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
              as TalentData?,
    ) as $Val);
  }

  /// Create a copy of GetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TalentDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TalentDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetTalentProfileImplCopyWith<$Res>
    implements $GetTalentProfileCopyWith<$Res> {
  factory _$$GetTalentProfileImplCopyWith(_$GetTalentProfileImpl value,
          $Res Function(_$GetTalentProfileImpl) then) =
      __$$GetTalentProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') TalentData? data});

  @override
  $TalentDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetTalentProfileImplCopyWithImpl<$Res>
    extends _$GetTalentProfileCopyWithImpl<$Res, _$GetTalentProfileImpl>
    implements _$$GetTalentProfileImplCopyWith<$Res> {
  __$$GetTalentProfileImplCopyWithImpl(_$GetTalentProfileImpl _value,
      $Res Function(_$GetTalentProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetTalentProfileImpl(
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
              as TalentData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTalentProfileImpl implements _GetTalentProfile {
  const _$GetTalentProfileImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$GetTalentProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTalentProfileImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final TalentData? data;

  @override
  String toString() {
    return 'GetTalentProfile(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTalentProfileImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTalentProfileImplCopyWith<_$GetTalentProfileImpl> get copyWith =>
      __$$GetTalentProfileImplCopyWithImpl<_$GetTalentProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTalentProfileImplToJson(
      this,
    );
  }
}

abstract class _GetTalentProfile implements GetTalentProfile {
  const factory _GetTalentProfile(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final TalentData? data}) = _$GetTalentProfileImpl;

  factory _GetTalentProfile.fromJson(Map<String, dynamic> json) =
      _$GetTalentProfileImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  TalentData? get data;

  /// Create a copy of GetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTalentProfileImplCopyWith<_$GetTalentProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TalentData _$TalentDataFromJson(Map<String, dynamic> json) {
  return _TalentData.fromJson(json);
}

/// @nodoc
mixin _$TalentData {
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
  @JsonKey(name: 'payment_status')
  bool? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile')
  DataGetTalentProfile? get profile => throw _privateConstructorUsedError;

  /// Serializes this TalentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TalentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TalentDataCopyWith<TalentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalentDataCopyWith<$Res> {
  factory $TalentDataCopyWith(
          TalentData value, $Res Function(TalentData) then) =
      _$TalentDataCopyWithImpl<$Res, TalentData>;
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
      @JsonKey(name: 'payment_status') bool? paymentStatus,
      @JsonKey(name: 'profile') DataGetTalentProfile? profile});

  $DataGetTalentProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$TalentDataCopyWithImpl<$Res, $Val extends TalentData>
    implements $TalentDataCopyWith<$Res> {
  _$TalentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TalentData
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
    Object? paymentStatus = freezed,
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
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as DataGetTalentProfile?,
    ) as $Val);
  }

  /// Create a copy of TalentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataGetTalentProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $DataGetTalentProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TalentDataImplCopyWith<$Res>
    implements $TalentDataCopyWith<$Res> {
  factory _$$TalentDataImplCopyWith(
          _$TalentDataImpl value, $Res Function(_$TalentDataImpl) then) =
      __$$TalentDataImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'payment_status') bool? paymentStatus,
      @JsonKey(name: 'profile') DataGetTalentProfile? profile});

  @override
  $DataGetTalentProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$TalentDataImplCopyWithImpl<$Res>
    extends _$TalentDataCopyWithImpl<$Res, _$TalentDataImpl>
    implements _$$TalentDataImplCopyWith<$Res> {
  __$$TalentDataImplCopyWithImpl(
      _$TalentDataImpl _value, $Res Function(_$TalentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TalentData
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
    Object? paymentStatus = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$TalentDataImpl(
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
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as DataGetTalentProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TalentDataImpl implements _TalentData {
  const _$TalentDataImpl(
      {@JsonKey(name: 'email') this.email,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'verification_status') this.verificationStatus,
      @JsonKey(name: 'verification_note') this.verificationNote,
      @JsonKey(name: 'verified_at') this.verifiedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'payment_status') this.paymentStatus,
      @JsonKey(name: 'profile') this.profile});

  factory _$TalentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TalentDataImplFromJson(json);

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
  @JsonKey(name: 'payment_status')
  final bool? paymentStatus;
  @override
  @JsonKey(name: 'profile')
  final DataGetTalentProfile? profile;

  @override
  String toString() {
    return 'TalentData(email: $email, role: $role, id: $id, isActive: $isActive, verificationStatus: $verificationStatus, verificationNote: $verificationNote, verifiedAt: $verifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, paymentStatus: $paymentStatus, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TalentDataImpl &&
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
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
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
      paymentStatus,
      profile);

  /// Create a copy of TalentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TalentDataImplCopyWith<_$TalentDataImpl> get copyWith =>
      __$$TalentDataImplCopyWithImpl<_$TalentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TalentDataImplToJson(
      this,
    );
  }
}

abstract class _TalentData implements TalentData {
  const factory _TalentData(
      {@JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'verification_status') final String? verificationStatus,
      @JsonKey(name: 'verification_note') final String? verificationNote,
      @JsonKey(name: 'verified_at') final DateTime? verifiedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'payment_status') final bool? paymentStatus,
      @JsonKey(name: 'profile')
      final DataGetTalentProfile? profile}) = _$TalentDataImpl;

  factory _TalentData.fromJson(Map<String, dynamic> json) =
      _$TalentDataImpl.fromJson;

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
  @JsonKey(name: 'payment_status')
  bool? get paymentStatus;
  @override
  @JsonKey(name: 'profile')
  DataGetTalentProfile? get profile;

  /// Create a copy of TalentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TalentDataImplCopyWith<_$TalentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataGetTalentProfile _$DataGetTalentProfileFromJson(Map<String, dynamic> json) {
  return _DataGetTalentProfile.fromJson(json);
}

/// @nodoc
mixin _$DataGetTalentProfile {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date', fromJson: _fromJsonDate, toJson: _toJsonDate)
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
  String? get profileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationGetTalentProfile? get location =>
      throw _privateConstructorUsedError; // Properti baru
  @JsonKey(name: 'user_language')
  List<UserLanguageGetTalentProfile>? get userLanguage =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'photos')
  List<PhotoGetTalentProfile>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  List<VideoGetTalentProfile>? get videos => throw _privateConstructorUsedError;
  @JsonKey(name: 'interest_categories')
  List<InterestCategoryGetTalentProfile>? get interestCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'experiences')
  List<ExperienceGetTalentProfile>? get experiences =>
      throw _privateConstructorUsedError;

  /// Serializes this DataGetTalentProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataGetTalentProfileCopyWith<DataGetTalentProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGetTalentProfileCopyWith<$Res> {
  factory $DataGetTalentProfileCopyWith(DataGetTalentProfile value,
          $Res Function(DataGetTalentProfile) then) =
      _$DataGetTalentProfileCopyWithImpl<$Res, DataGetTalentProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'birth_date', fromJson: _fromJsonDate, toJson: _toJsonDate)
      DateTime? birthDate,
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
      @JsonKey(name: 'id') String? profileId,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'location') LocationGetTalentProfile? location,
      @JsonKey(name: 'user_language')
      List<UserLanguageGetTalentProfile>? userLanguage,
      @JsonKey(name: 'photos') List<PhotoGetTalentProfile>? photos,
      @JsonKey(name: 'videos') List<VideoGetTalentProfile>? videos,
      @JsonKey(name: 'interest_categories')
      List<InterestCategoryGetTalentProfile>? interestCategories,
      @JsonKey(name: 'experiences')
      List<ExperienceGetTalentProfile>? experiences});

  $LocationGetTalentProfileCopyWith<$Res>? get location;
}

/// @nodoc
class _$DataGetTalentProfileCopyWithImpl<$Res,
        $Val extends DataGetTalentProfile>
    implements $DataGetTalentProfileCopyWith<$Res> {
  _$DataGetTalentProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataGetTalentProfile
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
    Object? profileId = freezed,
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
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationGetTalentProfile?,
      userLanguage: freezed == userLanguage
          ? _value.userLanguage
          : userLanguage // ignore: cast_nullable_to_non_nullable
              as List<UserLanguageGetTalentProfile>?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoGetTalentProfile>?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoGetTalentProfile>?,
      interestCategories: freezed == interestCategories
          ? _value.interestCategories
          : interestCategories // ignore: cast_nullable_to_non_nullable
              as List<InterestCategoryGetTalentProfile>?,
      experiences: freezed == experiences
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceGetTalentProfile>?,
    ) as $Val);
  }

  /// Create a copy of DataGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationGetTalentProfileCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationGetTalentProfileCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataGetTalentProfileImplCopyWith<$Res>
    implements $DataGetTalentProfileCopyWith<$Res> {
  factory _$$DataGetTalentProfileImplCopyWith(_$DataGetTalentProfileImpl value,
          $Res Function(_$DataGetTalentProfileImpl) then) =
      __$$DataGetTalentProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'birth_date', fromJson: _fromJsonDate, toJson: _toJsonDate)
      DateTime? birthDate,
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
      @JsonKey(name: 'id') String? profileId,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'location') LocationGetTalentProfile? location,
      @JsonKey(name: 'user_language')
      List<UserLanguageGetTalentProfile>? userLanguage,
      @JsonKey(name: 'photos') List<PhotoGetTalentProfile>? photos,
      @JsonKey(name: 'videos') List<VideoGetTalentProfile>? videos,
      @JsonKey(name: 'interest_categories')
      List<InterestCategoryGetTalentProfile>? interestCategories,
      @JsonKey(name: 'experiences')
      List<ExperienceGetTalentProfile>? experiences});

  @override
  $LocationGetTalentProfileCopyWith<$Res>? get location;
}

/// @nodoc
class __$$DataGetTalentProfileImplCopyWithImpl<$Res>
    extends _$DataGetTalentProfileCopyWithImpl<$Res, _$DataGetTalentProfileImpl>
    implements _$$DataGetTalentProfileImplCopyWith<$Res> {
  __$$DataGetTalentProfileImplCopyWithImpl(_$DataGetTalentProfileImpl _value,
      $Res Function(_$DataGetTalentProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataGetTalentProfile
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
    Object? profileId = freezed,
    Object? userId = freezed,
    Object? location = freezed,
    Object? userLanguage = freezed,
    Object? photos = freezed,
    Object? videos = freezed,
    Object? interestCategories = freezed,
    Object? experiences = freezed,
  }) {
    return _then(_$DataGetTalentProfileImpl(
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
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationGetTalentProfile?,
      userLanguage: freezed == userLanguage
          ? _value._userLanguage
          : userLanguage // ignore: cast_nullable_to_non_nullable
              as List<UserLanguageGetTalentProfile>?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoGetTalentProfile>?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoGetTalentProfile>?,
      interestCategories: freezed == interestCategories
          ? _value._interestCategories
          : interestCategories // ignore: cast_nullable_to_non_nullable
              as List<InterestCategoryGetTalentProfile>?,
      experiences: freezed == experiences
          ? _value._experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<ExperienceGetTalentProfile>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataGetTalentProfileImpl implements _DataGetTalentProfile {
  const _$DataGetTalentProfileImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'birth_date', fromJson: _fromJsonDate, toJson: _toJsonDate)
      this.birthDate,
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
      @JsonKey(name: 'id') this.profileId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'user_language')
      final List<UserLanguageGetTalentProfile>? userLanguage,
      @JsonKey(name: 'photos') final List<PhotoGetTalentProfile>? photos,
      @JsonKey(name: 'videos') final List<VideoGetTalentProfile>? videos,
      @JsonKey(name: 'interest_categories')
      final List<InterestCategoryGetTalentProfile>? interestCategories,
      @JsonKey(name: 'experiences')
      final List<ExperienceGetTalentProfile>? experiences})
      : _userLanguage = userLanguage,
        _photos = photos,
        _videos = videos,
        _interestCategories = interestCategories,
        _experiences = experiences;

  factory _$DataGetTalentProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataGetTalentProfileImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'birth_date', fromJson: _fromJsonDate, toJson: _toJsonDate)
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
  final String? profileId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'location')
  final LocationGetTalentProfile? location;
// Properti baru
  final List<UserLanguageGetTalentProfile>? _userLanguage;
// Properti baru
  @override
  @JsonKey(name: 'user_language')
  List<UserLanguageGetTalentProfile>? get userLanguage {
    final value = _userLanguage;
    if (value == null) return null;
    if (_userLanguage is EqualUnmodifiableListView) return _userLanguage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PhotoGetTalentProfile>? _photos;
  @override
  @JsonKey(name: 'photos')
  List<PhotoGetTalentProfile>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VideoGetTalentProfile>? _videos;
  @override
  @JsonKey(name: 'videos')
  List<VideoGetTalentProfile>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<InterestCategoryGetTalentProfile>? _interestCategories;
  @override
  @JsonKey(name: 'interest_categories')
  List<InterestCategoryGetTalentProfile>? get interestCategories {
    final value = _interestCategories;
    if (value == null) return null;
    if (_interestCategories is EqualUnmodifiableListView)
      return _interestCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExperienceGetTalentProfile>? _experiences;
  @override
  @JsonKey(name: 'experiences')
  List<ExperienceGetTalentProfile>? get experiences {
    final value = _experiences;
    if (value == null) return null;
    if (_experiences is EqualUnmodifiableListView) return _experiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataGetTalentProfile(name: $name, username: $username, birthDate: $birthDate, gender: $gender, phone: $phone, age: $age, ageCastingMin: $ageCastingMin, ageCastingMax: $ageCastingMax, height: $height, weight: $weight, ukuranBaju: $ukuranBaju, ukuranCelana: $ukuranCelana, ukuranSepatu: $ukuranSepatu, suku: $suku, warnaKulit: $warnaKulit, instagramUsername: $instagramUsername, instagramFollower: $instagramFollower, tiktokUsername: $tiktokUsername, tiktokFollower: $tiktokFollower, youtubeUsername: $youtubeUsername, youtubeFollower: $youtubeFollower, isPassport: $isPassport, isNpwp: $isNpwp, photoProfile: $photoProfile, locationId: $locationId, profileId: $profileId, userId: $userId, location: $location, userLanguage: $userLanguage, photos: $photos, videos: $videos, interestCategories: $interestCategories, experiences: $experiences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataGetTalentProfileImpl &&
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
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
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
        profileId,
        userId,
        location,
        const DeepCollectionEquality().hash(_userLanguage),
        const DeepCollectionEquality().hash(_photos),
        const DeepCollectionEquality().hash(_videos),
        const DeepCollectionEquality().hash(_interestCategories),
        const DeepCollectionEquality().hash(_experiences)
      ]);

  /// Create a copy of DataGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataGetTalentProfileImplCopyWith<_$DataGetTalentProfileImpl>
      get copyWith =>
          __$$DataGetTalentProfileImplCopyWithImpl<_$DataGetTalentProfileImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataGetTalentProfileImplToJson(
      this,
    );
  }
}

abstract class _DataGetTalentProfile implements DataGetTalentProfile {
  const factory _DataGetTalentProfile(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'birth_date', fromJson: _fromJsonDate, toJson: _toJsonDate)
      final DateTime? birthDate,
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
      @JsonKey(name: 'id') final String? profileId,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'location') final LocationGetTalentProfile? location,
      @JsonKey(name: 'user_language')
      final List<UserLanguageGetTalentProfile>? userLanguage,
      @JsonKey(name: 'photos') final List<PhotoGetTalentProfile>? photos,
      @JsonKey(name: 'videos') final List<VideoGetTalentProfile>? videos,
      @JsonKey(name: 'interest_categories')
      final List<InterestCategoryGetTalentProfile>? interestCategories,
      @JsonKey(name: 'experiences')
      final List<ExperienceGetTalentProfile>?
          experiences}) = _$DataGetTalentProfileImpl;

  factory _DataGetTalentProfile.fromJson(Map<String, dynamic> json) =
      _$DataGetTalentProfileImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'birth_date', fromJson: _fromJsonDate, toJson: _toJsonDate)
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
  String? get profileId;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'location')
  LocationGetTalentProfile? get location; // Properti baru
  @override
  @JsonKey(name: 'user_language')
  List<UserLanguageGetTalentProfile>? get userLanguage;
  @override
  @JsonKey(name: 'photos')
  List<PhotoGetTalentProfile>? get photos;
  @override
  @JsonKey(name: 'videos')
  List<VideoGetTalentProfile>? get videos;
  @override
  @JsonKey(name: 'interest_categories')
  List<InterestCategoryGetTalentProfile>? get interestCategories;
  @override
  @JsonKey(name: 'experiences')
  List<ExperienceGetTalentProfile>? get experiences;

  /// Create a copy of DataGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataGetTalentProfileImplCopyWith<_$DataGetTalentProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationGetTalentProfile _$LocationGetTalentProfileFromJson(
    Map<String, dynamic> json) {
  return _LocationGetTalentProfile.fromJson(json);
}

/// @nodoc
mixin _$LocationGetTalentProfile {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this LocationGetTalentProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationGetTalentProfileCopyWith<LocationGetTalentProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationGetTalentProfileCopyWith<$Res> {
  factory $LocationGetTalentProfileCopyWith(LocationGetTalentProfile value,
          $Res Function(LocationGetTalentProfile) then) =
      _$LocationGetTalentProfileCopyWithImpl<$Res, LocationGetTalentProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$LocationGetTalentProfileCopyWithImpl<$Res,
        $Val extends LocationGetTalentProfile>
    implements $LocationGetTalentProfileCopyWith<$Res> {
  _$LocationGetTalentProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationGetTalentProfile
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
abstract class _$$LocationGetTalentProfileImplCopyWith<$Res>
    implements $LocationGetTalentProfileCopyWith<$Res> {
  factory _$$LocationGetTalentProfileImplCopyWith(
          _$LocationGetTalentProfileImpl value,
          $Res Function(_$LocationGetTalentProfileImpl) then) =
      __$$LocationGetTalentProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$LocationGetTalentProfileImplCopyWithImpl<$Res>
    extends _$LocationGetTalentProfileCopyWithImpl<$Res,
        _$LocationGetTalentProfileImpl>
    implements _$$LocationGetTalentProfileImplCopyWith<$Res> {
  __$$LocationGetTalentProfileImplCopyWithImpl(
      _$LocationGetTalentProfileImpl _value,
      $Res Function(_$LocationGetTalentProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
  }) {
    return _then(_$LocationGetTalentProfileImpl(
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
class _$LocationGetTalentProfileImpl implements _LocationGetTalentProfile {
  const _$LocationGetTalentProfileImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'id') this.id});

  factory _$LocationGetTalentProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationGetTalentProfileImplFromJson(json);

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
    return 'LocationGetTalentProfile(name: $name, parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationGetTalentProfileImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, parentId, id);

  /// Create a copy of LocationGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationGetTalentProfileImplCopyWith<_$LocationGetTalentProfileImpl>
      get copyWith => __$$LocationGetTalentProfileImplCopyWithImpl<
          _$LocationGetTalentProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationGetTalentProfileImplToJson(
      this,
    );
  }
}

abstract class _LocationGetTalentProfile implements LocationGetTalentProfile {
  const factory _LocationGetTalentProfile(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'parent_id') final String? parentId,
      @JsonKey(name: 'id') final String? id}) = _$LocationGetTalentProfileImpl;

  factory _LocationGetTalentProfile.fromJson(Map<String, dynamic> json) =
      _$LocationGetTalentProfileImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of LocationGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationGetTalentProfileImplCopyWith<_$LocationGetTalentProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PhotoGetTalentProfile _$PhotoGetTalentProfileFromJson(
    Map<String, dynamic> json) {
  return _PhotoGetTalentProfile.fromJson(json);
}

/// @nodoc
mixin _$PhotoGetTalentProfile {
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this PhotoGetTalentProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoGetTalentProfileCopyWith<PhotoGetTalentProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoGetTalentProfileCopyWith<$Res> {
  factory $PhotoGetTalentProfileCopyWith(PhotoGetTalentProfile value,
          $Res Function(PhotoGetTalentProfile) then) =
      _$PhotoGetTalentProfileCopyWithImpl<$Res, PhotoGetTalentProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$PhotoGetTalentProfileCopyWithImpl<$Res,
        $Val extends PhotoGetTalentProfile>
    implements $PhotoGetTalentProfileCopyWith<$Res> {
  _$PhotoGetTalentProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoGetTalentProfile
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
abstract class _$$PhotoGetTalentProfileImplCopyWith<$Res>
    implements $PhotoGetTalentProfileCopyWith<$Res> {
  factory _$$PhotoGetTalentProfileImplCopyWith(
          _$PhotoGetTalentProfileImpl value,
          $Res Function(_$PhotoGetTalentProfileImpl) then) =
      __$$PhotoGetTalentProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$PhotoGetTalentProfileImplCopyWithImpl<$Res>
    extends _$PhotoGetTalentProfileCopyWithImpl<$Res,
        _$PhotoGetTalentProfileImpl>
    implements _$$PhotoGetTalentProfileImplCopyWith<$Res> {
  __$$PhotoGetTalentProfileImplCopyWithImpl(_$PhotoGetTalentProfileImpl _value,
      $Res Function(_$PhotoGetTalentProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_$PhotoGetTalentProfileImpl(
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
class _$PhotoGetTalentProfileImpl implements _PhotoGetTalentProfile {
  const _$PhotoGetTalentProfileImpl(
      {@JsonKey(name: 'photo_url') this.photoUrl,
      @JsonKey(name: 'id') this.id});

  factory _$PhotoGetTalentProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoGetTalentProfileImplFromJson(json);

  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'PhotoGetTalentProfile(photoUrl: $photoUrl, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoGetTalentProfileImpl &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, photoUrl, id);

  /// Create a copy of PhotoGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoGetTalentProfileImplCopyWith<_$PhotoGetTalentProfileImpl>
      get copyWith => __$$PhotoGetTalentProfileImplCopyWithImpl<
          _$PhotoGetTalentProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoGetTalentProfileImplToJson(
      this,
    );
  }
}

abstract class _PhotoGetTalentProfile implements PhotoGetTalentProfile {
  const factory _PhotoGetTalentProfile(
      {@JsonKey(name: 'photo_url') final String? photoUrl,
      @JsonKey(name: 'id') final String? id}) = _$PhotoGetTalentProfileImpl;

  factory _PhotoGetTalentProfile.fromJson(Map<String, dynamic> json) =
      _$PhotoGetTalentProfileImpl.fromJson;

  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of PhotoGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoGetTalentProfileImplCopyWith<_$PhotoGetTalentProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VideoGetTalentProfile _$VideoGetTalentProfileFromJson(
    Map<String, dynamic> json) {
  return _VideoGetTalentProfile.fromJson(json);
}

/// @nodoc
mixin _$VideoGetTalentProfile {
  @JsonKey(name: 'video_url')
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this VideoGetTalentProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoGetTalentProfileCopyWith<VideoGetTalentProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoGetTalentProfileCopyWith<$Res> {
  factory $VideoGetTalentProfileCopyWith(VideoGetTalentProfile value,
          $Res Function(VideoGetTalentProfile) then) =
      _$VideoGetTalentProfileCopyWithImpl<$Res, VideoGetTalentProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$VideoGetTalentProfileCopyWithImpl<$Res,
        $Val extends VideoGetTalentProfile>
    implements $VideoGetTalentProfileCopyWith<$Res> {
  _$VideoGetTalentProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoGetTalentProfile
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
abstract class _$$VideoGetTalentProfileImplCopyWith<$Res>
    implements $VideoGetTalentProfileCopyWith<$Res> {
  factory _$$VideoGetTalentProfileImplCopyWith(
          _$VideoGetTalentProfileImpl value,
          $Res Function(_$VideoGetTalentProfileImpl) then) =
      __$$VideoGetTalentProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$VideoGetTalentProfileImplCopyWithImpl<$Res>
    extends _$VideoGetTalentProfileCopyWithImpl<$Res,
        _$VideoGetTalentProfileImpl>
    implements _$$VideoGetTalentProfileImplCopyWith<$Res> {
  __$$VideoGetTalentProfileImplCopyWithImpl(_$VideoGetTalentProfileImpl _value,
      $Res Function(_$VideoGetTalentProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_$VideoGetTalentProfileImpl(
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
class _$VideoGetTalentProfileImpl implements _VideoGetTalentProfile {
  const _$VideoGetTalentProfileImpl(
      {@JsonKey(name: 'video_url') this.videoUrl,
      @JsonKey(name: 'id') this.id});

  factory _$VideoGetTalentProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoGetTalentProfileImplFromJson(json);

  @override
  @JsonKey(name: 'video_url')
  final String? videoUrl;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'VideoGetTalentProfile(videoUrl: $videoUrl, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoGetTalentProfileImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, videoUrl, id);

  /// Create a copy of VideoGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoGetTalentProfileImplCopyWith<_$VideoGetTalentProfileImpl>
      get copyWith => __$$VideoGetTalentProfileImplCopyWithImpl<
          _$VideoGetTalentProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoGetTalentProfileImplToJson(
      this,
    );
  }
}

abstract class _VideoGetTalentProfile implements VideoGetTalentProfile {
  const factory _VideoGetTalentProfile(
      {@JsonKey(name: 'video_url') final String? videoUrl,
      @JsonKey(name: 'id') final String? id}) = _$VideoGetTalentProfileImpl;

  factory _VideoGetTalentProfile.fromJson(Map<String, dynamic> json) =
      _$VideoGetTalentProfileImpl.fromJson;

  @override
  @JsonKey(name: 'video_url')
  String? get videoUrl;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of VideoGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoGetTalentProfileImplCopyWith<_$VideoGetTalentProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserLanguageGetTalentProfile _$UserLanguageGetTalentProfileFromJson(
    Map<String, dynamic> json) {
  return _UserLanguageGetTalentProfile.fromJson(json);
}

/// @nodoc
mixin _$UserLanguageGetTalentProfile {
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  String? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this UserLanguageGetTalentProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLanguageGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLanguageGetTalentProfileCopyWith<UserLanguageGetTalentProfile>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLanguageGetTalentProfileCopyWith<$Res> {
  factory $UserLanguageGetTalentProfileCopyWith(
          UserLanguageGetTalentProfile value,
          $Res Function(UserLanguageGetTalentProfile) then) =
      _$UserLanguageGetTalentProfileCopyWithImpl<$Res,
          UserLanguageGetTalentProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'level') String? level,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$UserLanguageGetTalentProfileCopyWithImpl<$Res,
        $Val extends UserLanguageGetTalentProfile>
    implements $UserLanguageGetTalentProfileCopyWith<$Res> {
  _$UserLanguageGetTalentProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLanguageGetTalentProfile
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
abstract class _$$UserLanguageGetTalentProfileImplCopyWith<$Res>
    implements $UserLanguageGetTalentProfileCopyWith<$Res> {
  factory _$$UserLanguageGetTalentProfileImplCopyWith(
          _$UserLanguageGetTalentProfileImpl value,
          $Res Function(_$UserLanguageGetTalentProfileImpl) then) =
      __$$UserLanguageGetTalentProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'level') String? level,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$UserLanguageGetTalentProfileImplCopyWithImpl<$Res>
    extends _$UserLanguageGetTalentProfileCopyWithImpl<$Res,
        _$UserLanguageGetTalentProfileImpl>
    implements _$$UserLanguageGetTalentProfileImplCopyWith<$Res> {
  __$$UserLanguageGetTalentProfileImplCopyWithImpl(
      _$UserLanguageGetTalentProfileImpl _value,
      $Res Function(_$UserLanguageGetTalentProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLanguageGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? level = freezed,
    Object? id = freezed,
  }) {
    return _then(_$UserLanguageGetTalentProfileImpl(
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
class _$UserLanguageGetTalentProfileImpl
    implements _UserLanguageGetTalentProfile {
  const _$UserLanguageGetTalentProfileImpl(
      {@JsonKey(name: 'language') this.language,
      @JsonKey(name: 'level') this.level,
      @JsonKey(name: 'id') this.id});

  factory _$UserLanguageGetTalentProfileImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserLanguageGetTalentProfileImplFromJson(json);

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
    return 'UserLanguageGetTalentProfile(language: $language, level: $level, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLanguageGetTalentProfileImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, language, level, id);

  /// Create a copy of UserLanguageGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLanguageGetTalentProfileImplCopyWith<
          _$UserLanguageGetTalentProfileImpl>
      get copyWith => __$$UserLanguageGetTalentProfileImplCopyWithImpl<
          _$UserLanguageGetTalentProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLanguageGetTalentProfileImplToJson(
      this,
    );
  }
}

abstract class _UserLanguageGetTalentProfile
    implements UserLanguageGetTalentProfile {
  const factory _UserLanguageGetTalentProfile(
          {@JsonKey(name: 'language') final String? language,
          @JsonKey(name: 'level') final String? level,
          @JsonKey(name: 'id') final String? id}) =
      _$UserLanguageGetTalentProfileImpl;

  factory _UserLanguageGetTalentProfile.fromJson(Map<String, dynamic> json) =
      _$UserLanguageGetTalentProfileImpl.fromJson;

  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'level')
  String? get level;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of UserLanguageGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLanguageGetTalentProfileImplCopyWith<
          _$UserLanguageGetTalentProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InterestCategoryGetTalentProfile _$InterestCategoryGetTalentProfileFromJson(
    Map<String, dynamic> json) {
  return _InterestCategoryGetTalentProfile.fromJson(json);
}

/// @nodoc
mixin _$InterestCategoryGetTalentProfile {
  @JsonKey(name: 'job_categories_id')
  String? get jobCategoriesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_min')
  int? get budgetMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_max')
  int? get budgetMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  CategoriesGetTalentProfile? get categories =>
      throw _privateConstructorUsedError;

  /// Serializes this InterestCategoryGetTalentProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterestCategoryGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestCategoryGetTalentProfileCopyWith<InterestCategoryGetTalentProfile>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestCategoryGetTalentProfileCopyWith<$Res> {
  factory $InterestCategoryGetTalentProfileCopyWith(
          InterestCategoryGetTalentProfile value,
          $Res Function(InterestCategoryGetTalentProfile) then) =
      _$InterestCategoryGetTalentProfileCopyWithImpl<$Res,
          InterestCategoryGetTalentProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'job_categories_id') String? jobCategoriesId,
      @JsonKey(name: 'budget_min') int? budgetMin,
      @JsonKey(name: 'budget_max') int? budgetMax,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'categories') CategoriesGetTalentProfile? categories});

  $CategoriesGetTalentProfileCopyWith<$Res>? get categories;
}

/// @nodoc
class _$InterestCategoryGetTalentProfileCopyWithImpl<$Res,
        $Val extends InterestCategoryGetTalentProfile>
    implements $InterestCategoryGetTalentProfileCopyWith<$Res> {
  _$InterestCategoryGetTalentProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestCategoryGetTalentProfile
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
              as CategoriesGetTalentProfile?,
    ) as $Val);
  }

  /// Create a copy of InterestCategoryGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoriesGetTalentProfileCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $CategoriesGetTalentProfileCopyWith<$Res>(_value.categories!,
        (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InterestCategoryGetTalentProfileImplCopyWith<$Res>
    implements $InterestCategoryGetTalentProfileCopyWith<$Res> {
  factory _$$InterestCategoryGetTalentProfileImplCopyWith(
          _$InterestCategoryGetTalentProfileImpl value,
          $Res Function(_$InterestCategoryGetTalentProfileImpl) then) =
      __$$InterestCategoryGetTalentProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'job_categories_id') String? jobCategoriesId,
      @JsonKey(name: 'budget_min') int? budgetMin,
      @JsonKey(name: 'budget_max') int? budgetMax,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'categories') CategoriesGetTalentProfile? categories});

  @override
  $CategoriesGetTalentProfileCopyWith<$Res>? get categories;
}

/// @nodoc
class __$$InterestCategoryGetTalentProfileImplCopyWithImpl<$Res>
    extends _$InterestCategoryGetTalentProfileCopyWithImpl<$Res,
        _$InterestCategoryGetTalentProfileImpl>
    implements _$$InterestCategoryGetTalentProfileImplCopyWith<$Res> {
  __$$InterestCategoryGetTalentProfileImplCopyWithImpl(
      _$InterestCategoryGetTalentProfileImpl _value,
      $Res Function(_$InterestCategoryGetTalentProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestCategoryGetTalentProfile
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
    return _then(_$InterestCategoryGetTalentProfileImpl(
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
              as CategoriesGetTalentProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestCategoryGetTalentProfileImpl
    implements _InterestCategoryGetTalentProfile {
  const _$InterestCategoryGetTalentProfileImpl(
      {@JsonKey(name: 'job_categories_id') this.jobCategoriesId,
      @JsonKey(name: 'budget_min') this.budgetMin,
      @JsonKey(name: 'budget_max') this.budgetMax,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'categories') this.categories});

  factory _$InterestCategoryGetTalentProfileImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InterestCategoryGetTalentProfileImplFromJson(json);

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
  final CategoriesGetTalentProfile? categories;

  @override
  String toString() {
    return 'InterestCategoryGetTalentProfile(jobCategoriesId: $jobCategoriesId, budgetMin: $budgetMin, budgetMax: $budgetMax, id: $id, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestCategoryGetTalentProfileImpl &&
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

  /// Create a copy of InterestCategoryGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestCategoryGetTalentProfileImplCopyWith<
          _$InterestCategoryGetTalentProfileImpl>
      get copyWith => __$$InterestCategoryGetTalentProfileImplCopyWithImpl<
          _$InterestCategoryGetTalentProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestCategoryGetTalentProfileImplToJson(
      this,
    );
  }
}

abstract class _InterestCategoryGetTalentProfile
    implements InterestCategoryGetTalentProfile {
  const factory _InterestCategoryGetTalentProfile(
          {@JsonKey(name: 'job_categories_id') final String? jobCategoriesId,
          @JsonKey(name: 'budget_min') final int? budgetMin,
          @JsonKey(name: 'budget_max') final int? budgetMax,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'categories')
          final CategoriesGetTalentProfile? categories}) =
      _$InterestCategoryGetTalentProfileImpl;

  factory _InterestCategoryGetTalentProfile.fromJson(
          Map<String, dynamic> json) =
      _$InterestCategoryGetTalentProfileImpl.fromJson;

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
  CategoriesGetTalentProfile? get categories;

  /// Create a copy of InterestCategoryGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestCategoryGetTalentProfileImplCopyWith<
          _$InterestCategoryGetTalentProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoriesGetTalentProfile _$CategoriesGetTalentProfileFromJson(
    Map<String, dynamic> json) {
  return _CategoriesGetTalentProfile.fromJson(json);
}

/// @nodoc
mixin _$CategoriesGetTalentProfile {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this CategoriesGetTalentProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesGetTalentProfileCopyWith<CategoriesGetTalentProfile>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesGetTalentProfileCopyWith<$Res> {
  factory $CategoriesGetTalentProfileCopyWith(CategoriesGetTalentProfile value,
          $Res Function(CategoriesGetTalentProfile) then) =
      _$CategoriesGetTalentProfileCopyWithImpl<$Res,
          CategoriesGetTalentProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$CategoriesGetTalentProfileCopyWithImpl<$Res,
        $Val extends CategoriesGetTalentProfile>
    implements $CategoriesGetTalentProfileCopyWith<$Res> {
  _$CategoriesGetTalentProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesGetTalentProfile
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
abstract class _$$CategoriesGetTalentProfileImplCopyWith<$Res>
    implements $CategoriesGetTalentProfileCopyWith<$Res> {
  factory _$$CategoriesGetTalentProfileImplCopyWith(
          _$CategoriesGetTalentProfileImpl value,
          $Res Function(_$CategoriesGetTalentProfileImpl) then) =
      __$$CategoriesGetTalentProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$CategoriesGetTalentProfileImplCopyWithImpl<$Res>
    extends _$CategoriesGetTalentProfileCopyWithImpl<$Res,
        _$CategoriesGetTalentProfileImpl>
    implements _$$CategoriesGetTalentProfileImplCopyWith<$Res> {
  __$$CategoriesGetTalentProfileImplCopyWithImpl(
      _$CategoriesGetTalentProfileImpl _value,
      $Res Function(_$CategoriesGetTalentProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
  }) {
    return _then(_$CategoriesGetTalentProfileImpl(
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
class _$CategoriesGetTalentProfileImpl implements _CategoriesGetTalentProfile {
  const _$CategoriesGetTalentProfileImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'id') this.id});

  factory _$CategoriesGetTalentProfileImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CategoriesGetTalentProfileImplFromJson(json);

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
    return 'CategoriesGetTalentProfile(name: $name, isActive: $isActive, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesGetTalentProfileImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, isActive, id);

  /// Create a copy of CategoriesGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesGetTalentProfileImplCopyWith<_$CategoriesGetTalentProfileImpl>
      get copyWith => __$$CategoriesGetTalentProfileImplCopyWithImpl<
          _$CategoriesGetTalentProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesGetTalentProfileImplToJson(
      this,
    );
  }
}

abstract class _CategoriesGetTalentProfile
    implements CategoriesGetTalentProfile {
  const factory _CategoriesGetTalentProfile(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'is_active') final bool? isActive,
          @JsonKey(name: 'id') final String? id}) =
      _$CategoriesGetTalentProfileImpl;

  factory _CategoriesGetTalentProfile.fromJson(Map<String, dynamic> json) =
      _$CategoriesGetTalentProfileImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of CategoriesGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesGetTalentProfileImplCopyWith<_$CategoriesGetTalentProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExperienceGetTalentProfile _$ExperienceGetTalentProfileFromJson(
    Map<String, dynamic> json) {
  return _ExperienceGetTalentProfile.fromJson(json);
}

/// @nodoc
mixin _$ExperienceGetTalentProfile {
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

  /// Serializes this ExperienceGetTalentProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExperienceGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExperienceGetTalentProfileCopyWith<ExperienceGetTalentProfile>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceGetTalentProfileCopyWith<$Res> {
  factory $ExperienceGetTalentProfileCopyWith(ExperienceGetTalentProfile value,
          $Res Function(ExperienceGetTalentProfile) then) =
      _$ExperienceGetTalentProfileCopyWithImpl<$Res,
          ExperienceGetTalentProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'video_url') String? videoUrl,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'profile_id') String? profileId});
}

/// @nodoc
class _$ExperienceGetTalentProfileCopyWithImpl<$Res,
        $Val extends ExperienceGetTalentProfile>
    implements $ExperienceGetTalentProfileCopyWith<$Res> {
  _$ExperienceGetTalentProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExperienceGetTalentProfile
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
abstract class _$$ExperienceGetTalentProfileImplCopyWith<$Res>
    implements $ExperienceGetTalentProfileCopyWith<$Res> {
  factory _$$ExperienceGetTalentProfileImplCopyWith(
          _$ExperienceGetTalentProfileImpl value,
          $Res Function(_$ExperienceGetTalentProfileImpl) then) =
      __$$ExperienceGetTalentProfileImplCopyWithImpl<$Res>;
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
class __$$ExperienceGetTalentProfileImplCopyWithImpl<$Res>
    extends _$ExperienceGetTalentProfileCopyWithImpl<$Res,
        _$ExperienceGetTalentProfileImpl>
    implements _$$ExperienceGetTalentProfileImplCopyWith<$Res> {
  __$$ExperienceGetTalentProfileImplCopyWithImpl(
      _$ExperienceGetTalentProfileImpl _value,
      $Res Function(_$ExperienceGetTalentProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExperienceGetTalentProfile
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
    return _then(_$ExperienceGetTalentProfileImpl(
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
class _$ExperienceGetTalentProfileImpl implements _ExperienceGetTalentProfile {
  const _$ExperienceGetTalentProfileImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'video_url') this.videoUrl,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'profile_id') this.profileId});

  factory _$ExperienceGetTalentProfileImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExperienceGetTalentProfileImplFromJson(json);

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
    return 'ExperienceGetTalentProfile(title: $title, description: $description, videoUrl: $videoUrl, id: $id, profileId: $profileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceGetTalentProfileImpl &&
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

  /// Create a copy of ExperienceGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceGetTalentProfileImplCopyWith<_$ExperienceGetTalentProfileImpl>
      get copyWith => __$$ExperienceGetTalentProfileImplCopyWithImpl<
          _$ExperienceGetTalentProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceGetTalentProfileImplToJson(
      this,
    );
  }
}

abstract class _ExperienceGetTalentProfile
    implements ExperienceGetTalentProfile {
  const factory _ExperienceGetTalentProfile(
          {@JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'video_url') final String? videoUrl,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'profile_id') final String? profileId}) =
      _$ExperienceGetTalentProfileImpl;

  factory _ExperienceGetTalentProfile.fromJson(Map<String, dynamic> json) =
      _$ExperienceGetTalentProfileImpl.fromJson;

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

  /// Create a copy of ExperienceGetTalentProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExperienceGetTalentProfileImplCopyWith<_$ExperienceGetTalentProfileImpl>
      get copyWith => throw _privateConstructorUsedError;
}
