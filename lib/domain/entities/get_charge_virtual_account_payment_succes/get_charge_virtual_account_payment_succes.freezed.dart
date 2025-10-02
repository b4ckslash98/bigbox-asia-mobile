// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_charge_virtual_account_payment_succes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetChargeVirtualAccountPaymentSucces
    _$GetChargeVirtualAccountPaymentSuccesFromJson(Map<String, dynamic> json) {
  return _GetChargeVirtualAccountPaymentSucces.fromJson(json);
}

/// @nodoc
mixin _$GetChargeVirtualAccountPaymentSucces {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataGetChargeVirtualAccountPaymentSucces? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetChargeVirtualAccountPaymentSucces to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetChargeVirtualAccountPaymentSuccesCopyWith<
          GetChargeVirtualAccountPaymentSucces>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  factory $GetChargeVirtualAccountPaymentSuccesCopyWith(
          GetChargeVirtualAccountPaymentSucces value,
          $Res Function(GetChargeVirtualAccountPaymentSucces) then) =
      _$GetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
          GetChargeVirtualAccountPaymentSucces>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataGetChargeVirtualAccountPaymentSucces? data});

  $DataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
        $Val extends GetChargeVirtualAccountPaymentSucces>
    implements $GetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  _$GetChargeVirtualAccountPaymentSuccesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetChargeVirtualAccountPaymentSucces
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
              as DataGetChargeVirtualAccountPaymentSucces?,
    ) as $Val);
  }

  /// Create a copy of GetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetChargeVirtualAccountPaymentSuccesImplCopyWith<$Res>
    implements $GetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  factory _$$GetChargeVirtualAccountPaymentSuccesImplCopyWith(
          _$GetChargeVirtualAccountPaymentSuccesImpl value,
          $Res Function(_$GetChargeVirtualAccountPaymentSuccesImpl) then) =
      __$$GetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataGetChargeVirtualAccountPaymentSucces? data});

  @override
  $DataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<$Res>
    extends _$GetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
        _$GetChargeVirtualAccountPaymentSuccesImpl>
    implements _$$GetChargeVirtualAccountPaymentSuccesImplCopyWith<$Res> {
  __$$GetChargeVirtualAccountPaymentSuccesImplCopyWithImpl(
      _$GetChargeVirtualAccountPaymentSuccesImpl _value,
      $Res Function(_$GetChargeVirtualAccountPaymentSuccesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetChargeVirtualAccountPaymentSuccesImpl(
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
              as DataGetChargeVirtualAccountPaymentSucces?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetChargeVirtualAccountPaymentSuccesImpl
    implements _GetChargeVirtualAccountPaymentSucces {
  const _$GetChargeVirtualAccountPaymentSuccesImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$GetChargeVirtualAccountPaymentSuccesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetChargeVirtualAccountPaymentSuccesImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final DataGetChargeVirtualAccountPaymentSucces? data;

  @override
  String toString() {
    return 'GetChargeVirtualAccountPaymentSucces(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChargeVirtualAccountPaymentSuccesImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChargeVirtualAccountPaymentSuccesImplCopyWith<
          _$GetChargeVirtualAccountPaymentSuccesImpl>
      get copyWith => __$$GetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<
          _$GetChargeVirtualAccountPaymentSuccesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetChargeVirtualAccountPaymentSuccesImplToJson(
      this,
    );
  }
}

abstract class _GetChargeVirtualAccountPaymentSucces
    implements GetChargeVirtualAccountPaymentSucces {
  const factory _GetChargeVirtualAccountPaymentSucces(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data')
          final DataGetChargeVirtualAccountPaymentSucces? data}) =
      _$GetChargeVirtualAccountPaymentSuccesImpl;

  factory _GetChargeVirtualAccountPaymentSucces.fromJson(
          Map<String, dynamic> json) =
      _$GetChargeVirtualAccountPaymentSuccesImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  DataGetChargeVirtualAccountPaymentSucces? get data;

  /// Create a copy of GetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChargeVirtualAccountPaymentSuccesImplCopyWith<
          _$GetChargeVirtualAccountPaymentSuccesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataGetChargeVirtualAccountPaymentSucces
    _$DataGetChargeVirtualAccountPaymentSuccesFromJson(
        Map<String, dynamic> json) {
  return _DataGetChargeVirtualAccountPaymentSucces.fromJson(json);
}

/// @nodoc
mixin _$DataGetChargeVirtualAccountPaymentSucces {
  @JsonKey(name: 'payment_request_id')
  String? get paymentRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_iistPaymentMethodd')
  String? get businessId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_id')
  String? get referenceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  MetadataGetChargeVirtualAccountPaymentSucces? get metadata =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated')
  DateTime? get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'capture_method')
  String? get captureMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_code')
  String? get channelCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_amount')
  int? get requestAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_properties')
  ChannelPropertiesGetChargeVirtualAccountPaymentSucces?
      get channelProperties => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'actions')
  List<ActionGetChargeVirtualAccountPaymentSucces>? get actions =>
      throw _privateConstructorUsedError;

  /// Serializes this DataGetChargeVirtualAccountPaymentSucces to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataGetChargeVirtualAccountPaymentSuccesCopyWith<
          DataGetChargeVirtualAccountPaymentSucces>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  factory $DataGetChargeVirtualAccountPaymentSuccesCopyWith(
          DataGetChargeVirtualAccountPaymentSucces value,
          $Res Function(DataGetChargeVirtualAccountPaymentSucces) then) =
      _$DataGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
          DataGetChargeVirtualAccountPaymentSucces>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_request_id') String? paymentRequestId,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'business_iistPaymentMethodd') String? businessId,
      @JsonKey(name: 'reference_id') String? referenceId,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'metadata')
      MetadataGetChargeVirtualAccountPaymentSucces? metadata,
      @JsonKey(name: 'created') DateTime? created,
      @JsonKey(name: 'updated') DateTime? updated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'capture_method') String? captureMethod,
      @JsonKey(name: 'channel_code') String? channelCode,
      @JsonKey(name: 'request_amount') int? requestAmount,
      @JsonKey(name: 'channel_properties')
      ChannelPropertiesGetChargeVirtualAccountPaymentSucces? channelProperties,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'actions')
      List<ActionGetChargeVirtualAccountPaymentSucces>? actions});

  $MetadataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>? get metadata;
  $ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>?
      get channelProperties;
}

/// @nodoc
class _$DataGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
        $Val extends DataGetChargeVirtualAccountPaymentSucces>
    implements $DataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  _$DataGetChargeVirtualAccountPaymentSuccesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentRequestId = freezed,
    Object? country = freezed,
    Object? currency = freezed,
    Object? businessId = freezed,
    Object? referenceId = freezed,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? status = freezed,
    Object? captureMethod = freezed,
    Object? channelCode = freezed,
    Object? requestAmount = freezed,
    Object? channelProperties = freezed,
    Object? type = freezed,
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      paymentRequestId: freezed == paymentRequestId
          ? _value.paymentRequestId
          : paymentRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataGetChargeVirtualAccountPaymentSucces?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      captureMethod: freezed == captureMethod
          ? _value.captureMethod
          : captureMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      requestAmount: freezed == requestAmount
          ? _value.requestAmount
          : requestAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      channelProperties: freezed == channelProperties
          ? _value.channelProperties
          : channelProperties // ignore: cast_nullable_to_non_nullable
              as ChannelPropertiesGetChargeVirtualAccountPaymentSucces?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionGetChargeVirtualAccountPaymentSucces>?,
    ) as $Val);
  }

  /// Create a copy of DataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>(
        _value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  /// Create a copy of DataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>?
      get channelProperties {
    if (_value.channelProperties == null) {
      return null;
    }

    return $ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>(
        _value.channelProperties!, (value) {
      return _then(_value.copyWith(channelProperties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataGetChargeVirtualAccountPaymentSuccesImplCopyWith<$Res>
    implements $DataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  factory _$$DataGetChargeVirtualAccountPaymentSuccesImplCopyWith(
          _$DataGetChargeVirtualAccountPaymentSuccesImpl value,
          $Res Function(_$DataGetChargeVirtualAccountPaymentSuccesImpl) then) =
      __$$DataGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_request_id') String? paymentRequestId,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'business_iistPaymentMethodd') String? businessId,
      @JsonKey(name: 'reference_id') String? referenceId,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'metadata')
      MetadataGetChargeVirtualAccountPaymentSucces? metadata,
      @JsonKey(name: 'created') DateTime? created,
      @JsonKey(name: 'updated') DateTime? updated,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'capture_method') String? captureMethod,
      @JsonKey(name: 'channel_code') String? channelCode,
      @JsonKey(name: 'request_amount') int? requestAmount,
      @JsonKey(name: 'channel_properties')
      ChannelPropertiesGetChargeVirtualAccountPaymentSucces? channelProperties,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'actions')
      List<ActionGetChargeVirtualAccountPaymentSucces>? actions});

  @override
  $MetadataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>? get metadata;
  @override
  $ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWith<$Res>?
      get channelProperties;
}

/// @nodoc
class __$$DataGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<$Res>
    extends _$DataGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
        _$DataGetChargeVirtualAccountPaymentSuccesImpl>
    implements _$$DataGetChargeVirtualAccountPaymentSuccesImplCopyWith<$Res> {
  __$$DataGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl(
      _$DataGetChargeVirtualAccountPaymentSuccesImpl _value,
      $Res Function(_$DataGetChargeVirtualAccountPaymentSuccesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentRequestId = freezed,
    Object? country = freezed,
    Object? currency = freezed,
    Object? businessId = freezed,
    Object? referenceId = freezed,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? status = freezed,
    Object? captureMethod = freezed,
    Object? channelCode = freezed,
    Object? requestAmount = freezed,
    Object? channelProperties = freezed,
    Object? type = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$DataGetChargeVirtualAccountPaymentSuccesImpl(
      paymentRequestId: freezed == paymentRequestId
          ? _value.paymentRequestId
          : paymentRequestId // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataGetChargeVirtualAccountPaymentSucces?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      captureMethod: freezed == captureMethod
          ? _value.captureMethod
          : captureMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      channelCode: freezed == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      requestAmount: freezed == requestAmount
          ? _value.requestAmount
          : requestAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      channelProperties: freezed == channelProperties
          ? _value.channelProperties
          : channelProperties // ignore: cast_nullable_to_non_nullable
              as ChannelPropertiesGetChargeVirtualAccountPaymentSucces?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionGetChargeVirtualAccountPaymentSucces>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataGetChargeVirtualAccountPaymentSuccesImpl
    implements _DataGetChargeVirtualAccountPaymentSucces {
  const _$DataGetChargeVirtualAccountPaymentSuccesImpl(
      {@JsonKey(name: 'payment_request_id') this.paymentRequestId,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'business_iistPaymentMethodd') this.businessId,
      @JsonKey(name: 'reference_id') this.referenceId,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'metadata') this.metadata,
      @JsonKey(name: 'created') this.created,
      @JsonKey(name: 'updated') this.updated,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'capture_method') this.captureMethod,
      @JsonKey(name: 'channel_code') this.channelCode,
      @JsonKey(name: 'request_amount') this.requestAmount,
      @JsonKey(name: 'channel_properties') this.channelProperties,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'actions')
      final List<ActionGetChargeVirtualAccountPaymentSucces>? actions})
      : _actions = actions;

  factory _$DataGetChargeVirtualAccountPaymentSuccesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DataGetChargeVirtualAccountPaymentSuccesImplFromJson(json);

  @override
  @JsonKey(name: 'payment_request_id')
  final String? paymentRequestId;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'business_iistPaymentMethodd')
  final String? businessId;
  @override
  @JsonKey(name: 'reference_id')
  final String? referenceId;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'metadata')
  final MetadataGetChargeVirtualAccountPaymentSucces? metadata;
  @override
  @JsonKey(name: 'created')
  final DateTime? created;
  @override
  @JsonKey(name: 'updated')
  final DateTime? updated;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'capture_method')
  final String? captureMethod;
  @override
  @JsonKey(name: 'channel_code')
  final String? channelCode;
  @override
  @JsonKey(name: 'request_amount')
  final int? requestAmount;
  @override
  @JsonKey(name: 'channel_properties')
  final ChannelPropertiesGetChargeVirtualAccountPaymentSucces?
      channelProperties;
  @override
  @JsonKey(name: 'type')
  final String? type;
  final List<ActionGetChargeVirtualAccountPaymentSucces>? _actions;
  @override
  @JsonKey(name: 'actions')
  List<ActionGetChargeVirtualAccountPaymentSucces>? get actions {
    final value = _actions;
    if (value == null) return null;
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataGetChargeVirtualAccountPaymentSucces(paymentRequestId: $paymentRequestId, country: $country, currency: $currency, businessId: $businessId, referenceId: $referenceId, description: $description, metadata: $metadata, created: $created, updated: $updated, status: $status, captureMethod: $captureMethod, channelCode: $channelCode, requestAmount: $requestAmount, channelProperties: $channelProperties, type: $type, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataGetChargeVirtualAccountPaymentSuccesImpl &&
            (identical(other.paymentRequestId, paymentRequestId) ||
                other.paymentRequestId == paymentRequestId) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.captureMethod, captureMethod) ||
                other.captureMethod == captureMethod) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.requestAmount, requestAmount) ||
                other.requestAmount == requestAmount) &&
            (identical(other.channelProperties, channelProperties) ||
                other.channelProperties == channelProperties) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentRequestId,
      country,
      currency,
      businessId,
      referenceId,
      description,
      metadata,
      created,
      updated,
      status,
      captureMethod,
      channelCode,
      requestAmount,
      channelProperties,
      type,
      const DeepCollectionEquality().hash(_actions));

  /// Create a copy of DataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataGetChargeVirtualAccountPaymentSuccesImplCopyWith<
          _$DataGetChargeVirtualAccountPaymentSuccesImpl>
      get copyWith =>
          __$$DataGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<
              _$DataGetChargeVirtualAccountPaymentSuccesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataGetChargeVirtualAccountPaymentSuccesImplToJson(
      this,
    );
  }
}

abstract class _DataGetChargeVirtualAccountPaymentSucces
    implements DataGetChargeVirtualAccountPaymentSucces {
  const factory _DataGetChargeVirtualAccountPaymentSucces(
      {@JsonKey(name: 'payment_request_id') final String? paymentRequestId,
      @JsonKey(name: 'country') final String? country,
      @JsonKey(name: 'currency') final String? currency,
      @JsonKey(name: 'business_iistPaymentMethodd') final String? businessId,
      @JsonKey(name: 'reference_id') final String? referenceId,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'metadata')
      final MetadataGetChargeVirtualAccountPaymentSucces? metadata,
      @JsonKey(name: 'created') final DateTime? created,
      @JsonKey(name: 'updated') final DateTime? updated,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'capture_method') final String? captureMethod,
      @JsonKey(name: 'channel_code') final String? channelCode,
      @JsonKey(name: 'request_amount') final int? requestAmount,
      @JsonKey(name: 'channel_properties')
      final ChannelPropertiesGetChargeVirtualAccountPaymentSucces?
          channelProperties,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'actions')
      final List<ActionGetChargeVirtualAccountPaymentSucces>?
          actions}) = _$DataGetChargeVirtualAccountPaymentSuccesImpl;

  factory _DataGetChargeVirtualAccountPaymentSucces.fromJson(
          Map<String, dynamic> json) =
      _$DataGetChargeVirtualAccountPaymentSuccesImpl.fromJson;

  @override
  @JsonKey(name: 'payment_request_id')
  String? get paymentRequestId;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'currency')
  String? get currency;
  @override
  @JsonKey(name: 'business_iistPaymentMethodd')
  String? get businessId;
  @override
  @JsonKey(name: 'reference_id')
  String? get referenceId;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'metadata')
  MetadataGetChargeVirtualAccountPaymentSucces? get metadata;
  @override
  @JsonKey(name: 'created')
  DateTime? get created;
  @override
  @JsonKey(name: 'updated')
  DateTime? get updated;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'capture_method')
  String? get captureMethod;
  @override
  @JsonKey(name: 'channel_code')
  String? get channelCode;
  @override
  @JsonKey(name: 'request_amount')
  int? get requestAmount;
  @override
  @JsonKey(name: 'channel_properties')
  ChannelPropertiesGetChargeVirtualAccountPaymentSucces? get channelProperties;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'actions')
  List<ActionGetChargeVirtualAccountPaymentSucces>? get actions;

  /// Create a copy of DataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataGetChargeVirtualAccountPaymentSuccesImplCopyWith<
          _$DataGetChargeVirtualAccountPaymentSuccesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActionGetChargeVirtualAccountPaymentSucces
    _$ActionGetChargeVirtualAccountPaymentSuccesFromJson(
        Map<String, dynamic> json) {
  return _ActionGetChargeVirtualAccountPaymentSucces.fromJson(json);
}

/// @nodoc
mixin _$ActionGetChargeVirtualAccountPaymentSucces {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'descriptor')
  String? get descriptor => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;

  /// Serializes this ActionGetChargeVirtualAccountPaymentSucces to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActionGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActionGetChargeVirtualAccountPaymentSuccesCopyWith<
          ActionGetChargeVirtualAccountPaymentSucces>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  factory $ActionGetChargeVirtualAccountPaymentSuccesCopyWith(
          ActionGetChargeVirtualAccountPaymentSucces value,
          $Res Function(ActionGetChargeVirtualAccountPaymentSucces) then) =
      _$ActionGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
          ActionGetChargeVirtualAccountPaymentSucces>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'descriptor') String? descriptor,
      @JsonKey(name: 'value') String? value});
}

/// @nodoc
class _$ActionGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
        $Val extends ActionGetChargeVirtualAccountPaymentSucces>
    implements $ActionGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  _$ActionGetChargeVirtualAccountPaymentSuccesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActionGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? descriptor = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionGetChargeVirtualAccountPaymentSuccesImplCopyWith<$Res>
    implements $ActionGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  factory _$$ActionGetChargeVirtualAccountPaymentSuccesImplCopyWith(
          _$ActionGetChargeVirtualAccountPaymentSuccesImpl value,
          $Res Function(_$ActionGetChargeVirtualAccountPaymentSuccesImpl)
              then) =
      __$$ActionGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'descriptor') String? descriptor,
      @JsonKey(name: 'value') String? value});
}

/// @nodoc
class __$$ActionGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<$Res>
    extends _$ActionGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
        _$ActionGetChargeVirtualAccountPaymentSuccesImpl>
    implements _$$ActionGetChargeVirtualAccountPaymentSuccesImplCopyWith<$Res> {
  __$$ActionGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl(
      _$ActionGetChargeVirtualAccountPaymentSuccesImpl _value,
      $Res Function(_$ActionGetChargeVirtualAccountPaymentSuccesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActionGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? descriptor = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ActionGetChargeVirtualAccountPaymentSuccesImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptor: freezed == descriptor
          ? _value.descriptor
          : descriptor // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionGetChargeVirtualAccountPaymentSuccesImpl
    implements _ActionGetChargeVirtualAccountPaymentSucces {
  const _$ActionGetChargeVirtualAccountPaymentSuccesImpl(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'descriptor') this.descriptor,
      @JsonKey(name: 'value') this.value});

  factory _$ActionGetChargeVirtualAccountPaymentSuccesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ActionGetChargeVirtualAccountPaymentSuccesImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'descriptor')
  final String? descriptor;
  @override
  @JsonKey(name: 'value')
  final String? value;

  @override
  String toString() {
    return 'ActionGetChargeVirtualAccountPaymentSucces(type: $type, descriptor: $descriptor, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionGetChargeVirtualAccountPaymentSuccesImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.descriptor, descriptor) ||
                other.descriptor == descriptor) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, descriptor, value);

  /// Create a copy of ActionGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionGetChargeVirtualAccountPaymentSuccesImplCopyWith<
          _$ActionGetChargeVirtualAccountPaymentSuccesImpl>
      get copyWith =>
          __$$ActionGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<
                  _$ActionGetChargeVirtualAccountPaymentSuccesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionGetChargeVirtualAccountPaymentSuccesImplToJson(
      this,
    );
  }
}

abstract class _ActionGetChargeVirtualAccountPaymentSucces
    implements ActionGetChargeVirtualAccountPaymentSucces {
  const factory _ActionGetChargeVirtualAccountPaymentSucces(
          {@JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'descriptor') final String? descriptor,
          @JsonKey(name: 'value') final String? value}) =
      _$ActionGetChargeVirtualAccountPaymentSuccesImpl;

  factory _ActionGetChargeVirtualAccountPaymentSucces.fromJson(
          Map<String, dynamic> json) =
      _$ActionGetChargeVirtualAccountPaymentSuccesImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'descriptor')
  String? get descriptor;
  @override
  @JsonKey(name: 'value')
  String? get value;

  /// Create a copy of ActionGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActionGetChargeVirtualAccountPaymentSuccesImplCopyWith<
          _$ActionGetChargeVirtualAccountPaymentSuccesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChannelPropertiesGetChargeVirtualAccountPaymentSucces
    _$ChannelPropertiesGetChargeVirtualAccountPaymentSuccesFromJson(
        Map<String, dynamic> json) {
  return _ChannelPropertieGetChargeVirtualAccountPaymentSucces.fromJson(json);
}

/// @nodoc
mixin _$ChannelPropertiesGetChargeVirtualAccountPaymentSucces {
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this ChannelPropertiesGetChargeVirtualAccountPaymentSucces to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChannelPropertiesGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWith<
          ChannelPropertiesGetChargeVirtualAccountPaymentSucces>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWith<
    $Res> {
  factory $ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWith(
          ChannelPropertiesGetChargeVirtualAccountPaymentSucces value,
          $Res Function(ChannelPropertiesGetChargeVirtualAccountPaymentSucces)
              then) =
      _$ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
          ChannelPropertiesGetChargeVirtualAccountPaymentSucces>;
  @useResult
  $Res call(
      {@JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'expires_at') DateTime? expiresAt});
}

/// @nodoc
class _$ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
        $Val extends ChannelPropertiesGetChargeVirtualAccountPaymentSucces>
    implements
        $ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  _$ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChannelPropertiesGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplCopyWith<
        $Res>
    implements
        $ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  factory _$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplCopyWith(
          _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl value,
          $Res Function(
                  _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl)
              then) =
      __$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'expires_at') DateTime? expiresAt});
}

/// @nodoc
class __$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<
        $Res>
    extends _$ChannelPropertiesGetChargeVirtualAccountPaymentSuccesCopyWithImpl<
        $Res, _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl>
    implements
        _$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplCopyWith<
            $Res> {
  __$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl(
      _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl _value,
      $Res Function(_$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of ChannelPropertiesGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl
    implements _ChannelPropertieGetChargeVirtualAccountPaymentSucces {
  const _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl(
      {@JsonKey(name: 'display_name') this.displayName,
      @JsonKey(name: 'expires_at') this.expiresAt});

  factory _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplFromJson(json);

  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  @JsonKey(name: 'expires_at')
  final DateTime? expiresAt;

  @override
  String toString() {
    return 'ChannelPropertiesGetChargeVirtualAccountPaymentSucces(displayName: $displayName, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, displayName, expiresAt);

  /// Create a copy of ChannelPropertiesGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplCopyWith<
          _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl>
      get copyWith =>
          __$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<
                  _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplToJson(
      this,
    );
  }
}

abstract class _ChannelPropertieGetChargeVirtualAccountPaymentSucces
    implements ChannelPropertiesGetChargeVirtualAccountPaymentSucces {
  const factory _ChannelPropertieGetChargeVirtualAccountPaymentSucces(
          {@JsonKey(name: 'display_name') final String? displayName,
          @JsonKey(name: 'expires_at') final DateTime? expiresAt}) =
      _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl;

  factory _ChannelPropertieGetChargeVirtualAccountPaymentSucces.fromJson(
          Map<String, dynamic> json) =
      _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl.fromJson;

  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt;

  /// Create a copy of ChannelPropertiesGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImplCopyWith<
          _$ChannelPropertieGetChargeVirtualAccountPaymentSuccesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MetadataGetChargeVirtualAccountPaymentSucces
    _$MetadataGetChargeVirtualAccountPaymentSuccesFromJson(
        Map<String, dynamic> json) {
  return _MetadataGetChargeVirtualAccountPaymentSucces.fromJson(json);
}

/// @nodoc
mixin _$MetadataGetChargeVirtualAccountPaymentSucces {
  @JsonKey(name: 'metametadata')
  String? get metametadata => throw _privateConstructorUsedError;

  /// Serializes this MetadataGetChargeVirtualAccountPaymentSucces to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetadataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataGetChargeVirtualAccountPaymentSuccesCopyWith<
          MetadataGetChargeVirtualAccountPaymentSucces>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  factory $MetadataGetChargeVirtualAccountPaymentSuccesCopyWith(
          MetadataGetChargeVirtualAccountPaymentSucces value,
          $Res Function(MetadataGetChargeVirtualAccountPaymentSucces) then) =
      _$MetadataGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
          MetadataGetChargeVirtualAccountPaymentSucces>;
  @useResult
  $Res call({@JsonKey(name: 'metametadata') String? metametadata});
}

/// @nodoc
class _$MetadataGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
        $Val extends MetadataGetChargeVirtualAccountPaymentSucces>
    implements $MetadataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  _$MetadataGetChargeVirtualAccountPaymentSuccesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetadataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metametadata = freezed,
  }) {
    return _then(_value.copyWith(
      metametadata: freezed == metametadata
          ? _value.metametadata
          : metametadata // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataGetChargeVirtualAccountPaymentSuccesImplCopyWith<$Res>
    implements $MetadataGetChargeVirtualAccountPaymentSuccesCopyWith<$Res> {
  factory _$$MetadataGetChargeVirtualAccountPaymentSuccesImplCopyWith(
          _$MetadataGetChargeVirtualAccountPaymentSuccesImpl value,
          $Res Function(_$MetadataGetChargeVirtualAccountPaymentSuccesImpl)
              then) =
      __$$MetadataGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'metametadata') String? metametadata});
}

/// @nodoc
class __$$MetadataGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<$Res>
    extends _$MetadataGetChargeVirtualAccountPaymentSuccesCopyWithImpl<$Res,
        _$MetadataGetChargeVirtualAccountPaymentSuccesImpl>
    implements
        _$$MetadataGetChargeVirtualAccountPaymentSuccesImplCopyWith<$Res> {
  __$$MetadataGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl(
      _$MetadataGetChargeVirtualAccountPaymentSuccesImpl _value,
      $Res Function(_$MetadataGetChargeVirtualAccountPaymentSuccesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetadataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metametadata = freezed,
  }) {
    return _then(_$MetadataGetChargeVirtualAccountPaymentSuccesImpl(
      metametadata: freezed == metametadata
          ? _value.metametadata
          : metametadata // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataGetChargeVirtualAccountPaymentSuccesImpl
    implements _MetadataGetChargeVirtualAccountPaymentSucces {
  const _$MetadataGetChargeVirtualAccountPaymentSuccesImpl(
      {@JsonKey(name: 'metametadata') this.metametadata});

  factory _$MetadataGetChargeVirtualAccountPaymentSuccesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MetadataGetChargeVirtualAccountPaymentSuccesImplFromJson(json);

  @override
  @JsonKey(name: 'metametadata')
  final String? metametadata;

  @override
  String toString() {
    return 'MetadataGetChargeVirtualAccountPaymentSucces(metametadata: $metametadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataGetChargeVirtualAccountPaymentSuccesImpl &&
            (identical(other.metametadata, metametadata) ||
                other.metametadata == metametadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, metametadata);

  /// Create a copy of MetadataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataGetChargeVirtualAccountPaymentSuccesImplCopyWith<
          _$MetadataGetChargeVirtualAccountPaymentSuccesImpl>
      get copyWith =>
          __$$MetadataGetChargeVirtualAccountPaymentSuccesImplCopyWithImpl<
                  _$MetadataGetChargeVirtualAccountPaymentSuccesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataGetChargeVirtualAccountPaymentSuccesImplToJson(
      this,
    );
  }
}

abstract class _MetadataGetChargeVirtualAccountPaymentSucces
    implements MetadataGetChargeVirtualAccountPaymentSucces {
  const factory _MetadataGetChargeVirtualAccountPaymentSucces(
          {@JsonKey(name: 'metametadata') final String? metametadata}) =
      _$MetadataGetChargeVirtualAccountPaymentSuccesImpl;

  factory _MetadataGetChargeVirtualAccountPaymentSucces.fromJson(
          Map<String, dynamic> json) =
      _$MetadataGetChargeVirtualAccountPaymentSuccesImpl.fromJson;

  @override
  @JsonKey(name: 'metametadata')
  String? get metametadata;

  /// Create a copy of MetadataGetChargeVirtualAccountPaymentSucces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataGetChargeVirtualAccountPaymentSuccesImplCopyWith<
          _$MetadataGetChargeVirtualAccountPaymentSuccesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
