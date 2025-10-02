// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'talent_detail_job_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TalentDetailJobCardState _$TalentDetailJobCardStateFromJson(
    Map<String, dynamic> json) {
  return _TalentDetailJobCardState.fromJson(json);
}

/// @nodoc
mixin _$TalentDetailJobCardState {
  String? get fcmToken => throw _privateConstructorUsedError;
  GetDetailJobsResponse? get jobDetail => throw _privateConstructorUsedError;

  /// Serializes this TalentDetailJobCardState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TalentDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TalentDetailJobCardStateCopyWith<TalentDetailJobCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalentDetailJobCardStateCopyWith<$Res> {
  factory $TalentDetailJobCardStateCopyWith(TalentDetailJobCardState value,
          $Res Function(TalentDetailJobCardState) then) =
      _$TalentDetailJobCardStateCopyWithImpl<$Res, TalentDetailJobCardState>;
  @useResult
  $Res call({String? fcmToken, GetDetailJobsResponse? jobDetail});

  $GetDetailJobsResponseCopyWith<$Res>? get jobDetail;
}

/// @nodoc
class _$TalentDetailJobCardStateCopyWithImpl<$Res,
        $Val extends TalentDetailJobCardState>
    implements $TalentDetailJobCardStateCopyWith<$Res> {
  _$TalentDetailJobCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TalentDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? jobDetail = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      jobDetail: freezed == jobDetail
          ? _value.jobDetail
          : jobDetail // ignore: cast_nullable_to_non_nullable
              as GetDetailJobsResponse?,
    ) as $Val);
  }

  /// Create a copy of TalentDetailJobCardState
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
}

/// @nodoc
abstract class _$$TalentDetailJobCardStateImplCopyWith<$Res>
    implements $TalentDetailJobCardStateCopyWith<$Res> {
  factory _$$TalentDetailJobCardStateImplCopyWith(
          _$TalentDetailJobCardStateImpl value,
          $Res Function(_$TalentDetailJobCardStateImpl) then) =
      __$$TalentDetailJobCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fcmToken, GetDetailJobsResponse? jobDetail});

  @override
  $GetDetailJobsResponseCopyWith<$Res>? get jobDetail;
}

/// @nodoc
class __$$TalentDetailJobCardStateImplCopyWithImpl<$Res>
    extends _$TalentDetailJobCardStateCopyWithImpl<$Res,
        _$TalentDetailJobCardStateImpl>
    implements _$$TalentDetailJobCardStateImplCopyWith<$Res> {
  __$$TalentDetailJobCardStateImplCopyWithImpl(
      _$TalentDetailJobCardStateImpl _value,
      $Res Function(_$TalentDetailJobCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TalentDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? jobDetail = freezed,
  }) {
    return _then(_$TalentDetailJobCardStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      jobDetail: freezed == jobDetail
          ? _value.jobDetail
          : jobDetail // ignore: cast_nullable_to_non_nullable
              as GetDetailJobsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TalentDetailJobCardStateImpl extends _TalentDetailJobCardState {
  _$TalentDetailJobCardStateImpl({this.fcmToken, this.jobDetail}) : super._();

  factory _$TalentDetailJobCardStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TalentDetailJobCardStateImplFromJson(json);

  @override
  final String? fcmToken;
  @override
  final GetDetailJobsResponse? jobDetail;

  @override
  String toString() {
    return 'TalentDetailJobCardState(fcmToken: $fcmToken, jobDetail: $jobDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TalentDetailJobCardStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.jobDetail, jobDetail) ||
                other.jobDetail == jobDetail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, jobDetail);

  /// Create a copy of TalentDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TalentDetailJobCardStateImplCopyWith<_$TalentDetailJobCardStateImpl>
      get copyWith => __$$TalentDetailJobCardStateImplCopyWithImpl<
          _$TalentDetailJobCardStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TalentDetailJobCardStateImplToJson(
      this,
    );
  }
}

abstract class _TalentDetailJobCardState extends TalentDetailJobCardState {
  factory _TalentDetailJobCardState(
      {final String? fcmToken,
      final GetDetailJobsResponse? jobDetail}) = _$TalentDetailJobCardStateImpl;
  _TalentDetailJobCardState._() : super._();

  factory _TalentDetailJobCardState.fromJson(Map<String, dynamic> json) =
      _$TalentDetailJobCardStateImpl.fromJson;

  @override
  String? get fcmToken;
  @override
  GetDetailJobsResponse? get jobDetail;

  /// Create a copy of TalentDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TalentDetailJobCardStateImplCopyWith<_$TalentDetailJobCardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
