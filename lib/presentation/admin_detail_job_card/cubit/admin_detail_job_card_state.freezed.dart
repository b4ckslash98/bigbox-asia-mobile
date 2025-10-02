// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_detail_job_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminDetailJobCardState _$AdminDetailJobCardStateFromJson(
    Map<String, dynamic> json) {
  return _AdminDetailJobCardState.fromJson(json);
}

/// @nodoc
mixin _$AdminDetailJobCardState {
  String? get fcmToken => throw _privateConstructorUsedError;
  GetDetailJobsResponse? get jobDetail => throw _privateConstructorUsedError;

  /// Serializes this AdminDetailJobCardState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminDetailJobCardStateCopyWith<AdminDetailJobCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminDetailJobCardStateCopyWith<$Res> {
  factory $AdminDetailJobCardStateCopyWith(AdminDetailJobCardState value,
          $Res Function(AdminDetailJobCardState) then) =
      _$AdminDetailJobCardStateCopyWithImpl<$Res, AdminDetailJobCardState>;
  @useResult
  $Res call({String? fcmToken, GetDetailJobsResponse? jobDetail});

  $GetDetailJobsResponseCopyWith<$Res>? get jobDetail;
}

/// @nodoc
class _$AdminDetailJobCardStateCopyWithImpl<$Res,
        $Val extends AdminDetailJobCardState>
    implements $AdminDetailJobCardStateCopyWith<$Res> {
  _$AdminDetailJobCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminDetailJobCardState
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

  /// Create a copy of AdminDetailJobCardState
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
abstract class _$$AdminDetailJobCardStateImplCopyWith<$Res>
    implements $AdminDetailJobCardStateCopyWith<$Res> {
  factory _$$AdminDetailJobCardStateImplCopyWith(
          _$AdminDetailJobCardStateImpl value,
          $Res Function(_$AdminDetailJobCardStateImpl) then) =
      __$$AdminDetailJobCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fcmToken, GetDetailJobsResponse? jobDetail});

  @override
  $GetDetailJobsResponseCopyWith<$Res>? get jobDetail;
}

/// @nodoc
class __$$AdminDetailJobCardStateImplCopyWithImpl<$Res>
    extends _$AdminDetailJobCardStateCopyWithImpl<$Res,
        _$AdminDetailJobCardStateImpl>
    implements _$$AdminDetailJobCardStateImplCopyWith<$Res> {
  __$$AdminDetailJobCardStateImplCopyWithImpl(
      _$AdminDetailJobCardStateImpl _value,
      $Res Function(_$AdminDetailJobCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? jobDetail = freezed,
  }) {
    return _then(_$AdminDetailJobCardStateImpl(
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
class _$AdminDetailJobCardStateImpl extends _AdminDetailJobCardState {
  _$AdminDetailJobCardStateImpl({this.fcmToken, this.jobDetail}) : super._();

  factory _$AdminDetailJobCardStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminDetailJobCardStateImplFromJson(json);

  @override
  final String? fcmToken;
  @override
  final GetDetailJobsResponse? jobDetail;

  @override
  String toString() {
    return 'AdminDetailJobCardState(fcmToken: $fcmToken, jobDetail: $jobDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminDetailJobCardStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.jobDetail, jobDetail) ||
                other.jobDetail == jobDetail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, jobDetail);

  /// Create a copy of AdminDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminDetailJobCardStateImplCopyWith<_$AdminDetailJobCardStateImpl>
      get copyWith => __$$AdminDetailJobCardStateImplCopyWithImpl<
          _$AdminDetailJobCardStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminDetailJobCardStateImplToJson(
      this,
    );
  }
}

abstract class _AdminDetailJobCardState extends AdminDetailJobCardState {
  factory _AdminDetailJobCardState(
      {final String? fcmToken,
      final GetDetailJobsResponse? jobDetail}) = _$AdminDetailJobCardStateImpl;
  _AdminDetailJobCardState._() : super._();

  factory _AdminDetailJobCardState.fromJson(Map<String, dynamic> json) =
      _$AdminDetailJobCardStateImpl.fromJson;

  @override
  String? get fcmToken;
  @override
  GetDetailJobsResponse? get jobDetail;

  /// Create a copy of AdminDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminDetailJobCardStateImplCopyWith<_$AdminDetailJobCardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
