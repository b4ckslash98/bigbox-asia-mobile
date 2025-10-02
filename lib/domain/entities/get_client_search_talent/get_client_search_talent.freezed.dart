// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_client_search_talent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetClientSearchTalent _$GetClientSearchTalentFromJson(
    Map<String, dynamic> json) {
  return _GetClientSearchTalent.fromJson(json);
}

/// @nodoc
mixin _$GetClientSearchTalent {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DatumGetSearchTalent>? get data => throw _privateConstructorUsedError;

  /// Serializes this GetClientSearchTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientSearchTalentCopyWith<GetClientSearchTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientSearchTalentCopyWith<$Res> {
  factory $GetClientSearchTalentCopyWith(GetClientSearchTalent value,
          $Res Function(GetClientSearchTalent) then) =
      _$GetClientSearchTalentCopyWithImpl<$Res, GetClientSearchTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetSearchTalent>? data});
}

/// @nodoc
class _$GetClientSearchTalentCopyWithImpl<$Res,
        $Val extends GetClientSearchTalent>
    implements $GetClientSearchTalentCopyWith<$Res> {
  _$GetClientSearchTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientSearchTalent
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
              as List<DatumGetSearchTalent>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetClientSearchTalentImplCopyWith<$Res>
    implements $GetClientSearchTalentCopyWith<$Res> {
  factory _$$GetClientSearchTalentImplCopyWith(
          _$GetClientSearchTalentImpl value,
          $Res Function(_$GetClientSearchTalentImpl) then) =
      __$$GetClientSearchTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetSearchTalent>? data});
}

/// @nodoc
class __$$GetClientSearchTalentImplCopyWithImpl<$Res>
    extends _$GetClientSearchTalentCopyWithImpl<$Res,
        _$GetClientSearchTalentImpl>
    implements _$$GetClientSearchTalentImplCopyWith<$Res> {
  __$$GetClientSearchTalentImplCopyWithImpl(_$GetClientSearchTalentImpl _value,
      $Res Function(_$GetClientSearchTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetClientSearchTalentImpl(
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
              as List<DatumGetSearchTalent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetClientSearchTalentImpl implements _GetClientSearchTalent {
  const _$GetClientSearchTalentImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<DatumGetSearchTalent>? data})
      : _data = data;

  factory _$GetClientSearchTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetClientSearchTalentImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<DatumGetSearchTalent>? _data;
  @override
  @JsonKey(name: 'data')
  List<DatumGetSearchTalent>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetClientSearchTalent(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientSearchTalentImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetClientSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientSearchTalentImplCopyWith<_$GetClientSearchTalentImpl>
      get copyWith => __$$GetClientSearchTalentImplCopyWithImpl<
          _$GetClientSearchTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientSearchTalentImplToJson(
      this,
    );
  }
}

abstract class _GetClientSearchTalent implements GetClientSearchTalent {
  const factory _GetClientSearchTalent(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<DatumGetSearchTalent>? data}) =
      _$GetClientSearchTalentImpl;

  factory _GetClientSearchTalent.fromJson(Map<String, dynamic> json) =
      _$GetClientSearchTalentImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<DatumGetSearchTalent>? get data;

  /// Create a copy of GetClientSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientSearchTalentImplCopyWith<_$GetClientSearchTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DatumGetSearchTalent _$DatumGetSearchTalentFromJson(Map<String, dynamic> json) {
  return _DatumGetSearchTalent.fromJson(json);
}

/// @nodoc
mixin _$DatumGetSearchTalent {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile')
  ProfileGetSearchTalent? get profile => throw _privateConstructorUsedError;

  /// Serializes this DatumGetSearchTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatumGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumGetSearchTalentCopyWith<DatumGetSearchTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumGetSearchTalentCopyWith<$Res> {
  factory $DatumGetSearchTalentCopyWith(DatumGetSearchTalent value,
          $Res Function(DatumGetSearchTalent) then) =
      _$DatumGetSearchTalentCopyWithImpl<$Res, DatumGetSearchTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'profile') ProfileGetSearchTalent? profile});

  $ProfileGetSearchTalentCopyWith<$Res>? get profile;
}

/// @nodoc
class _$DatumGetSearchTalentCopyWithImpl<$Res,
        $Val extends DatumGetSearchTalent>
    implements $DatumGetSearchTalentCopyWith<$Res> {
  _$DatumGetSearchTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatumGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileGetSearchTalent?,
    ) as $Val);
  }

  /// Create a copy of DatumGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileGetSearchTalentCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileGetSearchTalentCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumGetSearchTalentImplCopyWith<$Res>
    implements $DatumGetSearchTalentCopyWith<$Res> {
  factory _$$DatumGetSearchTalentImplCopyWith(_$DatumGetSearchTalentImpl value,
          $Res Function(_$DatumGetSearchTalentImpl) then) =
      __$$DatumGetSearchTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'profile') ProfileGetSearchTalent? profile});

  @override
  $ProfileGetSearchTalentCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$DatumGetSearchTalentImplCopyWithImpl<$Res>
    extends _$DatumGetSearchTalentCopyWithImpl<$Res, _$DatumGetSearchTalentImpl>
    implements _$$DatumGetSearchTalentImplCopyWith<$Res> {
  __$$DatumGetSearchTalentImplCopyWithImpl(_$DatumGetSearchTalentImpl _value,
      $Res Function(_$DatumGetSearchTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatumGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$DatumGetSearchTalentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileGetSearchTalent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumGetSearchTalentImpl implements _DatumGetSearchTalent {
  const _$DatumGetSearchTalentImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'profile') this.profile});

  factory _$DatumGetSearchTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumGetSearchTalentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'profile')
  final ProfileGetSearchTalent? profile;

  @override
  String toString() {
    return 'DatumGetSearchTalent(id: $id, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumGetSearchTalentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, profile);

  /// Create a copy of DatumGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumGetSearchTalentImplCopyWith<_$DatumGetSearchTalentImpl>
      get copyWith =>
          __$$DatumGetSearchTalentImplCopyWithImpl<_$DatumGetSearchTalentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumGetSearchTalentImplToJson(
      this,
    );
  }
}

abstract class _DatumGetSearchTalent implements DatumGetSearchTalent {
  const factory _DatumGetSearchTalent(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'profile') final ProfileGetSearchTalent? profile}) =
      _$DatumGetSearchTalentImpl;

  factory _DatumGetSearchTalent.fromJson(Map<String, dynamic> json) =
      _$DatumGetSearchTalentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'profile')
  ProfileGetSearchTalent? get profile;

  /// Create a copy of DatumGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumGetSearchTalentImplCopyWith<_$DatumGetSearchTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileGetSearchTalent _$ProfileGetSearchTalentFromJson(
    Map<String, dynamic> json) {
  return _ProfileGetSearchTalent.fromJson(json);
}

/// @nodoc
mixin _$ProfileGetSearchTalent {
  @JsonKey(name: 'photo_profile')
  String? get photoProfile => throw _privateConstructorUsedError;

  /// Serializes this ProfileGetSearchTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileGetSearchTalentCopyWith<ProfileGetSearchTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileGetSearchTalentCopyWith<$Res> {
  factory $ProfileGetSearchTalentCopyWith(ProfileGetSearchTalent value,
          $Res Function(ProfileGetSearchTalent) then) =
      _$ProfileGetSearchTalentCopyWithImpl<$Res, ProfileGetSearchTalent>;
  @useResult
  $Res call({@JsonKey(name: 'photo_profile') String? photoProfile});
}

/// @nodoc
class _$ProfileGetSearchTalentCopyWithImpl<$Res,
        $Val extends ProfileGetSearchTalent>
    implements $ProfileGetSearchTalentCopyWith<$Res> {
  _$ProfileGetSearchTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoProfile = freezed,
  }) {
    return _then(_value.copyWith(
      photoProfile: freezed == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileGetSearchTalentImplCopyWith<$Res>
    implements $ProfileGetSearchTalentCopyWith<$Res> {
  factory _$$ProfileGetSearchTalentImplCopyWith(
          _$ProfileGetSearchTalentImpl value,
          $Res Function(_$ProfileGetSearchTalentImpl) then) =
      __$$ProfileGetSearchTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'photo_profile') String? photoProfile});
}

/// @nodoc
class __$$ProfileGetSearchTalentImplCopyWithImpl<$Res>
    extends _$ProfileGetSearchTalentCopyWithImpl<$Res,
        _$ProfileGetSearchTalentImpl>
    implements _$$ProfileGetSearchTalentImplCopyWith<$Res> {
  __$$ProfileGetSearchTalentImplCopyWithImpl(
      _$ProfileGetSearchTalentImpl _value,
      $Res Function(_$ProfileGetSearchTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoProfile = freezed,
  }) {
    return _then(_$ProfileGetSearchTalentImpl(
      photoProfile: freezed == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileGetSearchTalentImpl implements _ProfileGetSearchTalent {
  const _$ProfileGetSearchTalentImpl(
      {@JsonKey(name: 'photo_profile') this.photoProfile});

  factory _$ProfileGetSearchTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileGetSearchTalentImplFromJson(json);

  @override
  @JsonKey(name: 'photo_profile')
  final String? photoProfile;

  @override
  String toString() {
    return 'ProfileGetSearchTalent(photoProfile: $photoProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileGetSearchTalentImpl &&
            (identical(other.photoProfile, photoProfile) ||
                other.photoProfile == photoProfile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, photoProfile);

  /// Create a copy of ProfileGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileGetSearchTalentImplCopyWith<_$ProfileGetSearchTalentImpl>
      get copyWith => __$$ProfileGetSearchTalentImplCopyWithImpl<
          _$ProfileGetSearchTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileGetSearchTalentImplToJson(
      this,
    );
  }
}

abstract class _ProfileGetSearchTalent implements ProfileGetSearchTalent {
  const factory _ProfileGetSearchTalent(
          {@JsonKey(name: 'photo_profile') final String? photoProfile}) =
      _$ProfileGetSearchTalentImpl;

  factory _ProfileGetSearchTalent.fromJson(Map<String, dynamic> json) =
      _$ProfileGetSearchTalentImpl.fromJson;

  @override
  @JsonKey(name: 'photo_profile')
  String? get photoProfile;

  /// Create a copy of ProfileGetSearchTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileGetSearchTalentImplCopyWith<_$ProfileGetSearchTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
