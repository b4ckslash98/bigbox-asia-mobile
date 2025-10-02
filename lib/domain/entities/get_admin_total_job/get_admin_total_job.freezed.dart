// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_admin_total_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAdminTotalJob _$GetAdminTotalJobFromJson(Map<String, dynamic> json) {
  return _GetAdminTotalJob.fromJson(json);
}

/// @nodoc
mixin _$GetAdminTotalJob {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  int? get data => throw _privateConstructorUsedError;

  /// Serializes this GetAdminTotalJob to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAdminTotalJob
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAdminTotalJobCopyWith<GetAdminTotalJob> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAdminTotalJobCopyWith<$Res> {
  factory $GetAdminTotalJobCopyWith(
          GetAdminTotalJob value, $Res Function(GetAdminTotalJob) then) =
      _$GetAdminTotalJobCopyWithImpl<$Res, GetAdminTotalJob>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') int? data});
}

/// @nodoc
class _$GetAdminTotalJobCopyWithImpl<$Res, $Val extends GetAdminTotalJob>
    implements $GetAdminTotalJobCopyWith<$Res> {
  _$GetAdminTotalJobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAdminTotalJob
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
abstract class _$$GetAdminTotalJobImplCopyWith<$Res>
    implements $GetAdminTotalJobCopyWith<$Res> {
  factory _$$GetAdminTotalJobImplCopyWith(_$GetAdminTotalJobImpl value,
          $Res Function(_$GetAdminTotalJobImpl) then) =
      __$$GetAdminTotalJobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') int? data});
}

/// @nodoc
class __$$GetAdminTotalJobImplCopyWithImpl<$Res>
    extends _$GetAdminTotalJobCopyWithImpl<$Res, _$GetAdminTotalJobImpl>
    implements _$$GetAdminTotalJobImplCopyWith<$Res> {
  __$$GetAdminTotalJobImplCopyWithImpl(_$GetAdminTotalJobImpl _value,
      $Res Function(_$GetAdminTotalJobImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAdminTotalJob
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAdminTotalJobImpl(
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
class _$GetAdminTotalJobImpl implements _GetAdminTotalJob {
  const _$GetAdminTotalJobImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$GetAdminTotalJobImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAdminTotalJobImplFromJson(json);

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
    return 'GetAdminTotalJob(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminTotalJobImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetAdminTotalJob
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminTotalJobImplCopyWith<_$GetAdminTotalJobImpl> get copyWith =>
      __$$GetAdminTotalJobImplCopyWithImpl<_$GetAdminTotalJobImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAdminTotalJobImplToJson(
      this,
    );
  }
}

abstract class _GetAdminTotalJob implements GetAdminTotalJob {
  const factory _GetAdminTotalJob(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final int? data}) = _$GetAdminTotalJobImpl;

  factory _GetAdminTotalJob.fromJson(Map<String, dynamic> json) =
      _$GetAdminTotalJobImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  int? get data;

  /// Create a copy of GetAdminTotalJob
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAdminTotalJobImplCopyWith<_$GetAdminTotalJobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
