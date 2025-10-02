// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_detail_job_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientDetailJobCardState _$ClientDetailJobCardStateFromJson(
    Map<String, dynamic> json) {
  return _ClientDetailJobCardState.fromJson(json);
}

/// @nodoc
mixin _$ClientDetailJobCardState {
  String? get fcmToken => throw _privateConstructorUsedError;
  GetDetailJobsResponse? get jobDetail => throw _privateConstructorUsedError;
  GetAplicationTalent? get getAplicationTalent =>
      throw _privateConstructorUsedError;

  /// Serializes this ClientDetailJobCardState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientDetailJobCardStateCopyWith<ClientDetailJobCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailJobCardStateCopyWith<$Res> {
  factory $ClientDetailJobCardStateCopyWith(ClientDetailJobCardState value,
          $Res Function(ClientDetailJobCardState) then) =
      _$ClientDetailJobCardStateCopyWithImpl<$Res, ClientDetailJobCardState>;
  @useResult
  $Res call(
      {String? fcmToken,
      GetDetailJobsResponse? jobDetail,
      GetAplicationTalent? getAplicationTalent});

  $GetDetailJobsResponseCopyWith<$Res>? get jobDetail;
  $GetAplicationTalentCopyWith<$Res>? get getAplicationTalent;
}

/// @nodoc
class _$ClientDetailJobCardStateCopyWithImpl<$Res,
        $Val extends ClientDetailJobCardState>
    implements $ClientDetailJobCardStateCopyWith<$Res> {
  _$ClientDetailJobCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? jobDetail = freezed,
    Object? getAplicationTalent = freezed,
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
      getAplicationTalent: freezed == getAplicationTalent
          ? _value.getAplicationTalent
          : getAplicationTalent // ignore: cast_nullable_to_non_nullable
              as GetAplicationTalent?,
    ) as $Val);
  }

  /// Create a copy of ClientDetailJobCardState
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

  /// Create a copy of ClientDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAplicationTalentCopyWith<$Res>? get getAplicationTalent {
    if (_value.getAplicationTalent == null) {
      return null;
    }

    return $GetAplicationTalentCopyWith<$Res>(_value.getAplicationTalent!,
        (value) {
      return _then(_value.copyWith(getAplicationTalent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientDetailJobCardStateImplCopyWith<$Res>
    implements $ClientDetailJobCardStateCopyWith<$Res> {
  factory _$$ClientDetailJobCardStateImplCopyWith(
          _$ClientDetailJobCardStateImpl value,
          $Res Function(_$ClientDetailJobCardStateImpl) then) =
      __$$ClientDetailJobCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fcmToken,
      GetDetailJobsResponse? jobDetail,
      GetAplicationTalent? getAplicationTalent});

  @override
  $GetDetailJobsResponseCopyWith<$Res>? get jobDetail;
  @override
  $GetAplicationTalentCopyWith<$Res>? get getAplicationTalent;
}

/// @nodoc
class __$$ClientDetailJobCardStateImplCopyWithImpl<$Res>
    extends _$ClientDetailJobCardStateCopyWithImpl<$Res,
        _$ClientDetailJobCardStateImpl>
    implements _$$ClientDetailJobCardStateImplCopyWith<$Res> {
  __$$ClientDetailJobCardStateImplCopyWithImpl(
      _$ClientDetailJobCardStateImpl _value,
      $Res Function(_$ClientDetailJobCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? jobDetail = freezed,
    Object? getAplicationTalent = freezed,
  }) {
    return _then(_$ClientDetailJobCardStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      jobDetail: freezed == jobDetail
          ? _value.jobDetail
          : jobDetail // ignore: cast_nullable_to_non_nullable
              as GetDetailJobsResponse?,
      getAplicationTalent: freezed == getAplicationTalent
          ? _value.getAplicationTalent
          : getAplicationTalent // ignore: cast_nullable_to_non_nullable
              as GetAplicationTalent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientDetailJobCardStateImpl extends _ClientDetailJobCardState {
  _$ClientDetailJobCardStateImpl(
      {this.fcmToken, this.jobDetail, this.getAplicationTalent})
      : super._();

  factory _$ClientDetailJobCardStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientDetailJobCardStateImplFromJson(json);

  @override
  final String? fcmToken;
  @override
  final GetDetailJobsResponse? jobDetail;
  @override
  final GetAplicationTalent? getAplicationTalent;

  @override
  String toString() {
    return 'ClientDetailJobCardState(fcmToken: $fcmToken, jobDetail: $jobDetail, getAplicationTalent: $getAplicationTalent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientDetailJobCardStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.jobDetail, jobDetail) ||
                other.jobDetail == jobDetail) &&
            (identical(other.getAplicationTalent, getAplicationTalent) ||
                other.getAplicationTalent == getAplicationTalent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fcmToken, jobDetail, getAplicationTalent);

  /// Create a copy of ClientDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientDetailJobCardStateImplCopyWith<_$ClientDetailJobCardStateImpl>
      get copyWith => __$$ClientDetailJobCardStateImplCopyWithImpl<
          _$ClientDetailJobCardStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientDetailJobCardStateImplToJson(
      this,
    );
  }
}

abstract class _ClientDetailJobCardState extends ClientDetailJobCardState {
  factory _ClientDetailJobCardState(
          {final String? fcmToken,
          final GetDetailJobsResponse? jobDetail,
          final GetAplicationTalent? getAplicationTalent}) =
      _$ClientDetailJobCardStateImpl;
  _ClientDetailJobCardState._() : super._();

  factory _ClientDetailJobCardState.fromJson(Map<String, dynamic> json) =
      _$ClientDetailJobCardStateImpl.fromJson;

  @override
  String? get fcmToken;
  @override
  GetDetailJobsResponse? get jobDetail;
  @override
  GetAplicationTalent? get getAplicationTalent;

  /// Create a copy of ClientDetailJobCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientDetailJobCardStateImplCopyWith<_$ClientDetailJobCardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
