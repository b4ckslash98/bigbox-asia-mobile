// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  String? get fcmToken => throw _privateConstructorUsedError;
  int get currentTabIndex => throw _privateConstructorUsedError;
  GetTalentProfile? get talentProfile => throw _privateConstructorUsedError;
  GetTalentJobsResponse? get talentJobs => throw _privateConstructorUsedError;
  GetAdminTotalClient? get adminTotalClient =>
      throw _privateConstructorUsedError;
  GetAdminTotalJob? get adminTotalJob => throw _privateConstructorUsedError;
  GetAdminTotalJobPending? get adminTotalJobPending =>
      throw _privateConstructorUsedError;
  GetAdminTotalTalent? get adminTotalTalent =>
      throw _privateConstructorUsedError;
  GetAdminTotalTalent? get clientTotalApplication =>
      throw _privateConstructorUsedError;
  GetAdminTotalTalent? get clientTotalJobs =>
      throw _privateConstructorUsedError;

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String? fcmToken,
      int currentTabIndex,
      GetTalentProfile? talentProfile,
      GetTalentJobsResponse? talentJobs,
      GetAdminTotalClient? adminTotalClient,
      GetAdminTotalJob? adminTotalJob,
      GetAdminTotalJobPending? adminTotalJobPending,
      GetAdminTotalTalent? adminTotalTalent,
      GetAdminTotalTalent? clientTotalApplication,
      GetAdminTotalTalent? clientTotalJobs});

  $GetTalentProfileCopyWith<$Res>? get talentProfile;
  $GetTalentJobsResponseCopyWith<$Res>? get talentJobs;
  $GetAdminTotalClientCopyWith<$Res>? get adminTotalClient;
  $GetAdminTotalJobCopyWith<$Res>? get adminTotalJob;
  $GetAdminTotalJobPendingCopyWith<$Res>? get adminTotalJobPending;
  $GetAdminTotalTalentCopyWith<$Res>? get adminTotalTalent;
  $GetAdminTotalTalentCopyWith<$Res>? get clientTotalApplication;
  $GetAdminTotalTalentCopyWith<$Res>? get clientTotalJobs;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? currentTabIndex = null,
    Object? talentProfile = freezed,
    Object? talentJobs = freezed,
    Object? adminTotalClient = freezed,
    Object? adminTotalJob = freezed,
    Object? adminTotalJobPending = freezed,
    Object? adminTotalTalent = freezed,
    Object? clientTotalApplication = freezed,
    Object? clientTotalJobs = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      currentTabIndex: null == currentTabIndex
          ? _value.currentTabIndex
          : currentTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      talentProfile: freezed == talentProfile
          ? _value.talentProfile
          : talentProfile // ignore: cast_nullable_to_non_nullable
              as GetTalentProfile?,
      talentJobs: freezed == talentJobs
          ? _value.talentJobs
          : talentJobs // ignore: cast_nullable_to_non_nullable
              as GetTalentJobsResponse?,
      adminTotalClient: freezed == adminTotalClient
          ? _value.adminTotalClient
          : adminTotalClient // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalClient?,
      adminTotalJob: freezed == adminTotalJob
          ? _value.adminTotalJob
          : adminTotalJob // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalJob?,
      adminTotalJobPending: freezed == adminTotalJobPending
          ? _value.adminTotalJobPending
          : adminTotalJobPending // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalJobPending?,
      adminTotalTalent: freezed == adminTotalTalent
          ? _value.adminTotalTalent
          : adminTotalTalent // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalTalent?,
      clientTotalApplication: freezed == clientTotalApplication
          ? _value.clientTotalApplication
          : clientTotalApplication // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalTalent?,
      clientTotalJobs: freezed == clientTotalJobs
          ? _value.clientTotalJobs
          : clientTotalJobs // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalTalent?,
    ) as $Val);
  }

  /// Create a copy of HomeState
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

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetTalentJobsResponseCopyWith<$Res>? get talentJobs {
    if (_value.talentJobs == null) {
      return null;
    }

    return $GetTalentJobsResponseCopyWith<$Res>(_value.talentJobs!, (value) {
      return _then(_value.copyWith(talentJobs: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAdminTotalClientCopyWith<$Res>? get adminTotalClient {
    if (_value.adminTotalClient == null) {
      return null;
    }

    return $GetAdminTotalClientCopyWith<$Res>(_value.adminTotalClient!,
        (value) {
      return _then(_value.copyWith(adminTotalClient: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAdminTotalJobCopyWith<$Res>? get adminTotalJob {
    if (_value.adminTotalJob == null) {
      return null;
    }

    return $GetAdminTotalJobCopyWith<$Res>(_value.adminTotalJob!, (value) {
      return _then(_value.copyWith(adminTotalJob: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAdminTotalJobPendingCopyWith<$Res>? get adminTotalJobPending {
    if (_value.adminTotalJobPending == null) {
      return null;
    }

    return $GetAdminTotalJobPendingCopyWith<$Res>(_value.adminTotalJobPending!,
        (value) {
      return _then(_value.copyWith(adminTotalJobPending: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAdminTotalTalentCopyWith<$Res>? get adminTotalTalent {
    if (_value.adminTotalTalent == null) {
      return null;
    }

    return $GetAdminTotalTalentCopyWith<$Res>(_value.adminTotalTalent!,
        (value) {
      return _then(_value.copyWith(adminTotalTalent: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAdminTotalTalentCopyWith<$Res>? get clientTotalApplication {
    if (_value.clientTotalApplication == null) {
      return null;
    }

    return $GetAdminTotalTalentCopyWith<$Res>(_value.clientTotalApplication!,
        (value) {
      return _then(_value.copyWith(clientTotalApplication: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAdminTotalTalentCopyWith<$Res>? get clientTotalJobs {
    if (_value.clientTotalJobs == null) {
      return null;
    }

    return $GetAdminTotalTalentCopyWith<$Res>(_value.clientTotalJobs!, (value) {
      return _then(_value.copyWith(clientTotalJobs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fcmToken,
      int currentTabIndex,
      GetTalentProfile? talentProfile,
      GetTalentJobsResponse? talentJobs,
      GetAdminTotalClient? adminTotalClient,
      GetAdminTotalJob? adminTotalJob,
      GetAdminTotalJobPending? adminTotalJobPending,
      GetAdminTotalTalent? adminTotalTalent,
      GetAdminTotalTalent? clientTotalApplication,
      GetAdminTotalTalent? clientTotalJobs});

  @override
  $GetTalentProfileCopyWith<$Res>? get talentProfile;
  @override
  $GetTalentJobsResponseCopyWith<$Res>? get talentJobs;
  @override
  $GetAdminTotalClientCopyWith<$Res>? get adminTotalClient;
  @override
  $GetAdminTotalJobCopyWith<$Res>? get adminTotalJob;
  @override
  $GetAdminTotalJobPendingCopyWith<$Res>? get adminTotalJobPending;
  @override
  $GetAdminTotalTalentCopyWith<$Res>? get adminTotalTalent;
  @override
  $GetAdminTotalTalentCopyWith<$Res>? get clientTotalApplication;
  @override
  $GetAdminTotalTalentCopyWith<$Res>? get clientTotalJobs;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? currentTabIndex = null,
    Object? talentProfile = freezed,
    Object? talentJobs = freezed,
    Object? adminTotalClient = freezed,
    Object? adminTotalJob = freezed,
    Object? adminTotalJobPending = freezed,
    Object? adminTotalTalent = freezed,
    Object? clientTotalApplication = freezed,
    Object? clientTotalJobs = freezed,
  }) {
    return _then(_$HomeStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      currentTabIndex: null == currentTabIndex
          ? _value.currentTabIndex
          : currentTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      talentProfile: freezed == talentProfile
          ? _value.talentProfile
          : talentProfile // ignore: cast_nullable_to_non_nullable
              as GetTalentProfile?,
      talentJobs: freezed == talentJobs
          ? _value.talentJobs
          : talentJobs // ignore: cast_nullable_to_non_nullable
              as GetTalentJobsResponse?,
      adminTotalClient: freezed == adminTotalClient
          ? _value.adminTotalClient
          : adminTotalClient // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalClient?,
      adminTotalJob: freezed == adminTotalJob
          ? _value.adminTotalJob
          : adminTotalJob // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalJob?,
      adminTotalJobPending: freezed == adminTotalJobPending
          ? _value.adminTotalJobPending
          : adminTotalJobPending // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalJobPending?,
      adminTotalTalent: freezed == adminTotalTalent
          ? _value.adminTotalTalent
          : adminTotalTalent // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalTalent?,
      clientTotalApplication: freezed == clientTotalApplication
          ? _value.clientTotalApplication
          : clientTotalApplication // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalTalent?,
      clientTotalJobs: freezed == clientTotalJobs
          ? _value.clientTotalJobs
          : clientTotalJobs // ignore: cast_nullable_to_non_nullable
              as GetAdminTotalTalent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStateImpl extends _HomeState {
  _$HomeStateImpl(
      {this.fcmToken,
      this.currentTabIndex = 0,
      this.talentProfile,
      this.talentJobs,
      this.adminTotalClient,
      this.adminTotalJob,
      this.adminTotalJobPending,
      this.adminTotalTalent,
      this.clientTotalApplication,
      this.clientTotalJobs})
      : super._();

  factory _$HomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStateImplFromJson(json);

  @override
  final String? fcmToken;
  @override
  @JsonKey()
  final int currentTabIndex;
  @override
  final GetTalentProfile? talentProfile;
  @override
  final GetTalentJobsResponse? talentJobs;
  @override
  final GetAdminTotalClient? adminTotalClient;
  @override
  final GetAdminTotalJob? adminTotalJob;
  @override
  final GetAdminTotalJobPending? adminTotalJobPending;
  @override
  final GetAdminTotalTalent? adminTotalTalent;
  @override
  final GetAdminTotalTalent? clientTotalApplication;
  @override
  final GetAdminTotalTalent? clientTotalJobs;

  @override
  String toString() {
    return 'HomeState(fcmToken: $fcmToken, currentTabIndex: $currentTabIndex, talentProfile: $talentProfile, talentJobs: $talentJobs, adminTotalClient: $adminTotalClient, adminTotalJob: $adminTotalJob, adminTotalJobPending: $adminTotalJobPending, adminTotalTalent: $adminTotalTalent, clientTotalApplication: $clientTotalApplication, clientTotalJobs: $clientTotalJobs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.currentTabIndex, currentTabIndex) ||
                other.currentTabIndex == currentTabIndex) &&
            (identical(other.talentProfile, talentProfile) ||
                other.talentProfile == talentProfile) &&
            (identical(other.talentJobs, talentJobs) ||
                other.talentJobs == talentJobs) &&
            (identical(other.adminTotalClient, adminTotalClient) ||
                other.adminTotalClient == adminTotalClient) &&
            (identical(other.adminTotalJob, adminTotalJob) ||
                other.adminTotalJob == adminTotalJob) &&
            (identical(other.adminTotalJobPending, adminTotalJobPending) ||
                other.adminTotalJobPending == adminTotalJobPending) &&
            (identical(other.adminTotalTalent, adminTotalTalent) ||
                other.adminTotalTalent == adminTotalTalent) &&
            (identical(other.clientTotalApplication, clientTotalApplication) ||
                other.clientTotalApplication == clientTotalApplication) &&
            (identical(other.clientTotalJobs, clientTotalJobs) ||
                other.clientTotalJobs == clientTotalJobs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fcmToken,
      currentTabIndex,
      talentProfile,
      talentJobs,
      adminTotalClient,
      adminTotalJob,
      adminTotalJobPending,
      adminTotalTalent,
      clientTotalApplication,
      clientTotalJobs);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStateImplToJson(
      this,
    );
  }
}

abstract class _HomeState extends HomeState {
  factory _HomeState(
      {final String? fcmToken,
      final int currentTabIndex,
      final GetTalentProfile? talentProfile,
      final GetTalentJobsResponse? talentJobs,
      final GetAdminTotalClient? adminTotalClient,
      final GetAdminTotalJob? adminTotalJob,
      final GetAdminTotalJobPending? adminTotalJobPending,
      final GetAdminTotalTalent? adminTotalTalent,
      final GetAdminTotalTalent? clientTotalApplication,
      final GetAdminTotalTalent? clientTotalJobs}) = _$HomeStateImpl;
  _HomeState._() : super._();

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$HomeStateImpl.fromJson;

  @override
  String? get fcmToken;
  @override
  int get currentTabIndex;
  @override
  GetTalentProfile? get talentProfile;
  @override
  GetTalentJobsResponse? get talentJobs;
  @override
  GetAdminTotalClient? get adminTotalClient;
  @override
  GetAdminTotalJob? get adminTotalJob;
  @override
  GetAdminTotalJobPending? get adminTotalJobPending;
  @override
  GetAdminTotalTalent? get adminTotalTalent;
  @override
  GetAdminTotalTalent? get clientTotalApplication;
  @override
  GetAdminTotalTalent? get clientTotalJobs;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
