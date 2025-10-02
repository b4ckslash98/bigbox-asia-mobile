// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return _AuthState.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  LocalUser? get user => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;
  GetTalentProfile? get profile => throw _privateConstructorUsedError;
  GetLocation? get location => throw _privateConstructorUsedError;
  GetCategoriesResponse? get categories => throw _privateConstructorUsedError;
  String? get convertedName => throw _privateConstructorUsedError;

  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {LocalUser? user,
      String? fcmToken,
      GetTalentProfile? profile,
      GetLocation? location,
      GetCategoriesResponse? categories,
      String? convertedName});

  $LocalUserCopyWith<$Res>? get user;
  $GetTalentProfileCopyWith<$Res>? get profile;
  $GetLocationCopyWith<$Res>? get location;
  $GetCategoriesResponseCopyWith<$Res>? get categories;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? fcmToken = freezed,
    Object? profile = freezed,
    Object? location = freezed,
    Object? categories = freezed,
    Object? convertedName = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LocalUser?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as GetTalentProfile?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GetLocation?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as GetCategoriesResponse?,
      convertedName: freezed == convertedName
          ? _value.convertedName
          : convertedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $LocalUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetTalentProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $GetTalentProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $GetLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetCategoriesResponseCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $GetCategoriesResponseCopyWith<$Res>(_value.categories!, (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocalUser? user,
      String? fcmToken,
      GetTalentProfile? profile,
      GetLocation? location,
      GetCategoriesResponse? categories,
      String? convertedName});

  @override
  $LocalUserCopyWith<$Res>? get user;
  @override
  $GetTalentProfileCopyWith<$Res>? get profile;
  @override
  $GetLocationCopyWith<$Res>? get location;
  @override
  $GetCategoriesResponseCopyWith<$Res>? get categories;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? fcmToken = freezed,
    Object? profile = freezed,
    Object? location = freezed,
    Object? categories = freezed,
    Object? convertedName = freezed,
  }) {
    return _then(_$AuthStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LocalUser?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as GetTalentProfile?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GetLocation?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as GetCategoriesResponse?,
      convertedName: freezed == convertedName
          ? _value.convertedName
          : convertedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateImpl extends _AuthState {
  _$AuthStateImpl(
      {this.user,
      this.fcmToken,
      this.profile,
      this.location,
      this.categories,
      this.convertedName})
      : super._();

  factory _$AuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateImplFromJson(json);

  @override
  final LocalUser? user;
  @override
  final String? fcmToken;
  @override
  final GetTalentProfile? profile;
  @override
  final GetLocation? location;
  @override
  final GetCategoriesResponse? categories;
  @override
  final String? convertedName;

  @override
  String toString() {
    return 'AuthState(user: $user, fcmToken: $fcmToken, profile: $profile, location: $location, categories: $categories, convertedName: $convertedName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.convertedName, convertedName) ||
                other.convertedName == convertedName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, fcmToken, profile,
      location, categories, convertedName);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateImplToJson(
      this,
    );
  }
}

abstract class _AuthState extends AuthState {
  factory _AuthState(
      {final LocalUser? user,
      final String? fcmToken,
      final GetTalentProfile? profile,
      final GetLocation? location,
      final GetCategoriesResponse? categories,
      final String? convertedName}) = _$AuthStateImpl;
  _AuthState._() : super._();

  factory _AuthState.fromJson(Map<String, dynamic> json) =
      _$AuthStateImpl.fromJson;

  @override
  LocalUser? get user;
  @override
  String? get fcmToken;
  @override
  GetTalentProfile? get profile;
  @override
  GetLocation? get location;
  @override
  GetCategoriesResponse? get categories;
  @override
  String? get convertedName;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
