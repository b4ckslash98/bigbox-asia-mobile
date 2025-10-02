// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_admin_total_job_pending.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAdminTotalJobPending _$GetAdminTotalJobPendingFromJson(
    Map<String, dynamic> json) {
  return _GetAdminTotalJobPending.fromJson(json);
}

/// @nodoc
mixin _$GetAdminTotalJobPending {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  int? get data => throw _privateConstructorUsedError;

  /// Serializes this GetAdminTotalJobPending to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAdminTotalJobPending
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAdminTotalJobPendingCopyWith<GetAdminTotalJobPending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAdminTotalJobPendingCopyWith<$Res> {
  factory $GetAdminTotalJobPendingCopyWith(GetAdminTotalJobPending value,
          $Res Function(GetAdminTotalJobPending) then) =
      _$GetAdminTotalJobPendingCopyWithImpl<$Res, GetAdminTotalJobPending>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') int? data});
}

/// @nodoc
class _$GetAdminTotalJobPendingCopyWithImpl<$Res,
        $Val extends GetAdminTotalJobPending>
    implements $GetAdminTotalJobPendingCopyWith<$Res> {
  _$GetAdminTotalJobPendingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAdminTotalJobPending
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
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAdminTotalJobPendingImplCopyWith<$Res>
    implements $GetAdminTotalJobPendingCopyWith<$Res> {
  factory _$$GetAdminTotalJobPendingImplCopyWith(
          _$GetAdminTotalJobPendingImpl value,
          $Res Function(_$GetAdminTotalJobPendingImpl) then) =
      __$$GetAdminTotalJobPendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') int? data});
}

/// @nodoc
class __$$GetAdminTotalJobPendingImplCopyWithImpl<$Res>
    extends _$GetAdminTotalJobPendingCopyWithImpl<$Res,
        _$GetAdminTotalJobPendingImpl>
    implements _$$GetAdminTotalJobPendingImplCopyWith<$Res> {
  __$$GetAdminTotalJobPendingImplCopyWithImpl(
      _$GetAdminTotalJobPendingImpl _value,
      $Res Function(_$GetAdminTotalJobPendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAdminTotalJobPending
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAdminTotalJobPendingImpl(
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
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAdminTotalJobPendingImpl implements _GetAdminTotalJobPending {
  const _$GetAdminTotalJobPendingImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$GetAdminTotalJobPendingImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAdminTotalJobPendingImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final int? data;

  @override
  String toString() {
    return 'GetAdminTotalJobPending(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminTotalJobPendingImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetAdminTotalJobPending
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminTotalJobPendingImplCopyWith<_$GetAdminTotalJobPendingImpl>
      get copyWith => __$$GetAdminTotalJobPendingImplCopyWithImpl<
          _$GetAdminTotalJobPendingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAdminTotalJobPendingImplToJson(
      this,
    );
  }
}

abstract class _GetAdminTotalJobPending implements GetAdminTotalJobPending {
  const factory _GetAdminTotalJobPending(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final int? data}) = _$GetAdminTotalJobPendingImpl;

  factory _GetAdminTotalJobPending.fromJson(Map<String, dynamic> json) =
      _$GetAdminTotalJobPendingImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  int? get data;

  /// Create a copy of GetAdminTotalJobPending
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAdminTotalJobPendingImplCopyWith<_$GetAdminTotalJobPendingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
