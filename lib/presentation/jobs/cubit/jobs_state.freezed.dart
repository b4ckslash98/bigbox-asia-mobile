// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobsState _$JobsStateFromJson(Map<String, dynamic> json) {
  return _JobsState.fromJson(json);
}

/// @nodoc
mixin _$JobsState {
  String? get fcmToken => throw _privateConstructorUsedError; // Tambahkan ini
  GetClientMyJobModel? get myJobs => throw _privateConstructorUsedError;
  GetClientMyJobModel? get adminJobs => throw _privateConstructorUsedError;
  GetDetailJobsResponse? get jobDetail => throw _privateConstructorUsedError;
  GetDetailJobsResponse? get adminJobsDetail =>
      throw _privateConstructorUsedError;
  GetLocation? get location => throw _privateConstructorUsedError;
  GetCategoriesResponse? get categories => throw _privateConstructorUsedError;
  GetTalentJobsResponse? get talentJobs => throw _privateConstructorUsedError;

  /// Serializes this JobsState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobsStateCopyWith<JobsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsStateCopyWith<$Res> {
  factory $JobsStateCopyWith(JobsState value, $Res Function(JobsState) then) =
      _$JobsStateCopyWithImpl<$Res, JobsState>;
  @useResult
  $Res call(
      {String? fcmToken,
      GetClientMyJobModel? myJobs,
      GetClientMyJobModel? adminJobs,
      GetDetailJobsResponse? jobDetail,
      GetDetailJobsResponse? adminJobsDetail,
      GetLocation? location,
      GetCategoriesResponse? categories,
      GetTalentJobsResponse? talentJobs});

  $GetClientMyJobModelCopyWith<$Res>? get myJobs;
  $GetClientMyJobModelCopyWith<$Res>? get adminJobs;
  $GetDetailJobsResponseCopyWith<$Res>? get jobDetail;
  $GetDetailJobsResponseCopyWith<$Res>? get adminJobsDetail;
  $GetLocationCopyWith<$Res>? get location;
  $GetCategoriesResponseCopyWith<$Res>? get categories;
  $GetTalentJobsResponseCopyWith<$Res>? get talentJobs;
}

/// @nodoc
class _$JobsStateCopyWithImpl<$Res, $Val extends JobsState>
    implements $JobsStateCopyWith<$Res> {
  _$JobsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? myJobs = freezed,
    Object? adminJobs = freezed,
    Object? jobDetail = freezed,
    Object? adminJobsDetail = freezed,
    Object? location = freezed,
    Object? categories = freezed,
    Object? talentJobs = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      myJobs: freezed == myJobs
          ? _value.myJobs
          : myJobs // ignore: cast_nullable_to_non_nullable
              as GetClientMyJobModel?,
      adminJobs: freezed == adminJobs
          ? _value.adminJobs
          : adminJobs // ignore: cast_nullable_to_non_nullable
              as GetClientMyJobModel?,
      jobDetail: freezed == jobDetail
          ? _value.jobDetail
          : jobDetail // ignore: cast_nullable_to_non_nullable
              as GetDetailJobsResponse?,
      adminJobsDetail: freezed == adminJobsDetail
          ? _value.adminJobsDetail
          : adminJobsDetail // ignore: cast_nullable_to_non_nullable
              as GetDetailJobsResponse?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GetLocation?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as GetCategoriesResponse?,
      talentJobs: freezed == talentJobs
          ? _value.talentJobs
          : talentJobs // ignore: cast_nullable_to_non_nullable
              as GetTalentJobsResponse?,
    ) as $Val);
  }

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetClientMyJobModelCopyWith<$Res>? get myJobs {
    if (_value.myJobs == null) {
      return null;
    }

    return $GetClientMyJobModelCopyWith<$Res>(_value.myJobs!, (value) {
      return _then(_value.copyWith(myJobs: value) as $Val);
    });
  }

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetClientMyJobModelCopyWith<$Res>? get adminJobs {
    if (_value.adminJobs == null) {
      return null;
    }

    return $GetClientMyJobModelCopyWith<$Res>(_value.adminJobs!, (value) {
      return _then(_value.copyWith(adminJobs: value) as $Val);
    });
  }

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetDetailJobsResponseCopyWith<$Res>? get jobDetail {
    if (_value.jobDetail == null) {
      return null;
    }

    return $GetDetailJobsResponseCopyWith<$Res>(_value.jobDetail!, (value) {
      return _then(_value.copyWith(jobDetail: value) as $Val);
    });
  }

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetDetailJobsResponseCopyWith<$Res>? get adminJobsDetail {
    if (_value.adminJobsDetail == null) {
      return null;
    }

    return $GetDetailJobsResponseCopyWith<$Res>(_value.adminJobsDetail!,
        (value) {
      return _then(_value.copyWith(adminJobsDetail: value) as $Val);
    });
  }

  /// Create a copy of JobsState
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

  /// Create a copy of JobsState
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

  /// Create a copy of JobsState
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
}

/// @nodoc
abstract class _$$JobsStateImplCopyWith<$Res>
    implements $JobsStateCopyWith<$Res> {
  factory _$$JobsStateImplCopyWith(
          _$JobsStateImpl value, $Res Function(_$JobsStateImpl) then) =
      __$$JobsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fcmToken,
      GetClientMyJobModel? myJobs,
      GetClientMyJobModel? adminJobs,
      GetDetailJobsResponse? jobDetail,
      GetDetailJobsResponse? adminJobsDetail,
      GetLocation? location,
      GetCategoriesResponse? categories,
      GetTalentJobsResponse? talentJobs});

  @override
  $GetClientMyJobModelCopyWith<$Res>? get myJobs;
  @override
  $GetClientMyJobModelCopyWith<$Res>? get adminJobs;
  @override
  $GetDetailJobsResponseCopyWith<$Res>? get jobDetail;
  @override
  $GetDetailJobsResponseCopyWith<$Res>? get adminJobsDetail;
  @override
  $GetLocationCopyWith<$Res>? get location;
  @override
  $GetCategoriesResponseCopyWith<$Res>? get categories;
  @override
  $GetTalentJobsResponseCopyWith<$Res>? get talentJobs;
}

/// @nodoc
class __$$JobsStateImplCopyWithImpl<$Res>
    extends _$JobsStateCopyWithImpl<$Res, _$JobsStateImpl>
    implements _$$JobsStateImplCopyWith<$Res> {
  __$$JobsStateImplCopyWithImpl(
      _$JobsStateImpl _value, $Res Function(_$JobsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? myJobs = freezed,
    Object? adminJobs = freezed,
    Object? jobDetail = freezed,
    Object? adminJobsDetail = freezed,
    Object? location = freezed,
    Object? categories = freezed,
    Object? talentJobs = freezed,
  }) {
    return _then(_$JobsStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      myJobs: freezed == myJobs
          ? _value.myJobs
          : myJobs // ignore: cast_nullable_to_non_nullable
              as GetClientMyJobModel?,
      adminJobs: freezed == adminJobs
          ? _value.adminJobs
          : adminJobs // ignore: cast_nullable_to_non_nullable
              as GetClientMyJobModel?,
      jobDetail: freezed == jobDetail
          ? _value.jobDetail
          : jobDetail // ignore: cast_nullable_to_non_nullable
              as GetDetailJobsResponse?,
      adminJobsDetail: freezed == adminJobsDetail
          ? _value.adminJobsDetail
          : adminJobsDetail // ignore: cast_nullable_to_non_nullable
              as GetDetailJobsResponse?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GetLocation?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as GetCategoriesResponse?,
      talentJobs: freezed == talentJobs
          ? _value.talentJobs
          : talentJobs // ignore: cast_nullable_to_non_nullable
              as GetTalentJobsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobsStateImpl extends _JobsState {
  _$JobsStateImpl(
      {this.fcmToken,
      this.myJobs,
      this.adminJobs,
      this.jobDetail,
      this.adminJobsDetail,
      this.location,
      this.categories,
      this.talentJobs})
      : super._();

  factory _$JobsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobsStateImplFromJson(json);

  @override
  final String? fcmToken;
// Tambahkan ini
  @override
  final GetClientMyJobModel? myJobs;
  @override
  final GetClientMyJobModel? adminJobs;
  @override
  final GetDetailJobsResponse? jobDetail;
  @override
  final GetDetailJobsResponse? adminJobsDetail;
  @override
  final GetLocation? location;
  @override
  final GetCategoriesResponse? categories;
  @override
  final GetTalentJobsResponse? talentJobs;

  @override
  String toString() {
    return 'JobsState(fcmToken: $fcmToken, myJobs: $myJobs, adminJobs: $adminJobs, jobDetail: $jobDetail, adminJobsDetail: $adminJobsDetail, location: $location, categories: $categories, talentJobs: $talentJobs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.myJobs, myJobs) || other.myJobs == myJobs) &&
            (identical(other.adminJobs, adminJobs) ||
                other.adminJobs == adminJobs) &&
            (identical(other.jobDetail, jobDetail) ||
                other.jobDetail == jobDetail) &&
            (identical(other.adminJobsDetail, adminJobsDetail) ||
                other.adminJobsDetail == adminJobsDetail) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.talentJobs, talentJobs) ||
                other.talentJobs == talentJobs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, myJobs, adminJobs,
      jobDetail, adminJobsDetail, location, categories, talentJobs);

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsStateImplCopyWith<_$JobsStateImpl> get copyWith =>
      __$$JobsStateImplCopyWithImpl<_$JobsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobsStateImplToJson(
      this,
    );
  }
}

abstract class _JobsState extends JobsState {
  factory _JobsState(
      {final String? fcmToken,
      final GetClientMyJobModel? myJobs,
      final GetClientMyJobModel? adminJobs,
      final GetDetailJobsResponse? jobDetail,
      final GetDetailJobsResponse? adminJobsDetail,
      final GetLocation? location,
      final GetCategoriesResponse? categories,
      final GetTalentJobsResponse? talentJobs}) = _$JobsStateImpl;
  _JobsState._() : super._();

  factory _JobsState.fromJson(Map<String, dynamic> json) =
      _$JobsStateImpl.fromJson;

  @override
  String? get fcmToken; // Tambahkan ini
  @override
  GetClientMyJobModel? get myJobs;
  @override
  GetClientMyJobModel? get adminJobs;
  @override
  GetDetailJobsResponse? get jobDetail;
  @override
  GetDetailJobsResponse? get adminJobsDetail;
  @override
  GetLocation? get location;
  @override
  GetCategoriesResponse? get categories;
  @override
  GetTalentJobsResponse? get talentJobs;

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobsStateImplCopyWith<_$JobsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
