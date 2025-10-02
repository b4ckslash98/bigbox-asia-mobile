// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_admin_total_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAdminTotalClient _$GetAdminTotalClientFromJson(Map<String, dynamic> json) {
  return _GetAdminTotalClient.fromJson(json);
}

/// @nodoc
mixin _$GetAdminTotalClient {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  int? get data => throw _privateConstructorUsedError;

  /// Serializes this GetAdminTotalClient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAdminTotalClient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAdminTotalClientCopyWith<GetAdminTotalClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAdminTotalClientCopyWith<$Res> {
  factory $GetAdminTotalClientCopyWith(
          GetAdminTotalClient value, $Res Function(GetAdminTotalClient) then) =
      _$GetAdminTotalClientCopyWithImpl<$Res, GetAdminTotalClient>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') int? data});
}

/// @nodoc
class _$GetAdminTotalClientCopyWithImpl<$Res, $Val extends GetAdminTotalClient>
    implements $GetAdminTotalClientCopyWith<$Res> {
  _$GetAdminTotalClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAdminTotalClient
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
abstract class _$$GetAdminTotalClientImplCopyWith<$Res>
    implements $GetAdminTotalClientCopyWith<$Res> {
  factory _$$GetAdminTotalClientImplCopyWith(_$GetAdminTotalClientImpl value,
          $Res Function(_$GetAdminTotalClientImpl) then) =
      __$$GetAdminTotalClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') int? data});
}

/// @nodoc
class __$$GetAdminTotalClientImplCopyWithImpl<$Res>
    extends _$GetAdminTotalClientCopyWithImpl<$Res, _$GetAdminTotalClientImpl>
    implements _$$GetAdminTotalClientImplCopyWith<$Res> {
  __$$GetAdminTotalClientImplCopyWithImpl(_$GetAdminTotalClientImpl _value,
      $Res Function(_$GetAdminTotalClientImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAdminTotalClient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAdminTotalClientImpl(
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
class _$GetAdminTotalClientImpl implements _GetAdminTotalClient {
  const _$GetAdminTotalClientImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$GetAdminTotalClientImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAdminTotalClientImplFromJson(json);

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
    return 'GetAdminTotalClient(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminTotalClientImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetAdminTotalClient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminTotalClientImplCopyWith<_$GetAdminTotalClientImpl> get copyWith =>
      __$$GetAdminTotalClientImplCopyWithImpl<_$GetAdminTotalClientImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAdminTotalClientImplToJson(
      this,
    );
  }
}

abstract class _GetAdminTotalClient implements GetAdminTotalClient {
  const factory _GetAdminTotalClient(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final int? data}) = _$GetAdminTotalClientImpl;

  factory _GetAdminTotalClient.fromJson(Map<String, dynamic> json) =
      _$GetAdminTotalClientImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  int? get data;

  /// Create a copy of GetAdminTotalClient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAdminTotalClientImplCopyWith<_$GetAdminTotalClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
