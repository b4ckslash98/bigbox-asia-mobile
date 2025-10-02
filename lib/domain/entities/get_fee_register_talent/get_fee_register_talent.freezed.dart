// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_fee_register_talent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFeeRegisterTalent _$GetFeeRegisterTalentFromJson(Map<String, dynamic> json) {
  return _GetFeeRegisterTalent.fromJson(json);
}

/// @nodoc
mixin _$GetFeeRegisterTalent {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DataGetFeeRegisterTalent? get data => throw _privateConstructorUsedError;

  /// Serializes this GetFeeRegisterTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeeRegisterTalentCopyWith<GetFeeRegisterTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeeRegisterTalentCopyWith<$Res> {
  factory $GetFeeRegisterTalentCopyWith(GetFeeRegisterTalent value,
          $Res Function(GetFeeRegisterTalent) then) =
      _$GetFeeRegisterTalentCopyWithImpl<$Res, GetFeeRegisterTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataGetFeeRegisterTalent? data});

  $DataGetFeeRegisterTalentCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetFeeRegisterTalentCopyWithImpl<$Res,
        $Val extends GetFeeRegisterTalent>
    implements $GetFeeRegisterTalentCopyWith<$Res> {
  _$GetFeeRegisterTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeeRegisterTalent
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
              as DataGetFeeRegisterTalent?,
    ) as $Val);
  }

  /// Create a copy of GetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataGetFeeRegisterTalentCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataGetFeeRegisterTalentCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFeeRegisterTalentImplCopyWith<$Res>
    implements $GetFeeRegisterTalentCopyWith<$Res> {
  factory _$$GetFeeRegisterTalentImplCopyWith(_$GetFeeRegisterTalentImpl value,
          $Res Function(_$GetFeeRegisterTalentImpl) then) =
      __$$GetFeeRegisterTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') DataGetFeeRegisterTalent? data});

  @override
  $DataGetFeeRegisterTalentCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetFeeRegisterTalentImplCopyWithImpl<$Res>
    extends _$GetFeeRegisterTalentCopyWithImpl<$Res, _$GetFeeRegisterTalentImpl>
    implements _$$GetFeeRegisterTalentImplCopyWith<$Res> {
  __$$GetFeeRegisterTalentImplCopyWithImpl(_$GetFeeRegisterTalentImpl _value,
      $Res Function(_$GetFeeRegisterTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetFeeRegisterTalentImpl(
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
              as DataGetFeeRegisterTalent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFeeRegisterTalentImpl implements _GetFeeRegisterTalent {
  const _$GetFeeRegisterTalentImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$GetFeeRegisterTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFeeRegisterTalentImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final DataGetFeeRegisterTalent? data;

  @override
  String toString() {
    return 'GetFeeRegisterTalent(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeeRegisterTalentImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeeRegisterTalentImplCopyWith<_$GetFeeRegisterTalentImpl>
      get copyWith =>
          __$$GetFeeRegisterTalentImplCopyWithImpl<_$GetFeeRegisterTalentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFeeRegisterTalentImplToJson(
      this,
    );
  }
}

abstract class _GetFeeRegisterTalent implements GetFeeRegisterTalent {
  const factory _GetFeeRegisterTalent(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final DataGetFeeRegisterTalent? data}) =
      _$GetFeeRegisterTalentImpl;

  factory _GetFeeRegisterTalent.fromJson(Map<String, dynamic> json) =
      _$GetFeeRegisterTalentImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  DataGetFeeRegisterTalent? get data;

  /// Create a copy of GetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeeRegisterTalentImplCopyWith<_$GetFeeRegisterTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataGetFeeRegisterTalent _$DataGetFeeRegisterTalentFromJson(
    Map<String, dynamic> json) {
  return _DataGetFeeRegisterTalent.fromJson(json);
}

/// @nodoc
mixin _$DataGetFeeRegisterTalent {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'master_payment_codes')
  MasterPaymentCodesGetFeeRegisterTalent? get masterPaymentCodes =>
      throw _privateConstructorUsedError;

  /// Serializes this DataGetFeeRegisterTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataGetFeeRegisterTalentCopyWith<DataGetFeeRegisterTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGetFeeRegisterTalentCopyWith<$Res> {
  factory $DataGetFeeRegisterTalentCopyWith(DataGetFeeRegisterTalent value,
          $Res Function(DataGetFeeRegisterTalent) then) =
      _$DataGetFeeRegisterTalentCopyWithImpl<$Res, DataGetFeeRegisterTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'master_payment_codes')
      MasterPaymentCodesGetFeeRegisterTalent? masterPaymentCodes});

  $MasterPaymentCodesGetFeeRegisterTalentCopyWith<$Res>? get masterPaymentCodes;
}

/// @nodoc
class _$DataGetFeeRegisterTalentCopyWithImpl<$Res,
        $Val extends DataGetFeeRegisterTalent>
    implements $DataGetFeeRegisterTalentCopyWith<$Res> {
  _$DataGetFeeRegisterTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? role = freezed,
    Object? masterPaymentCodes = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      masterPaymentCodes: freezed == masterPaymentCodes
          ? _value.masterPaymentCodes
          : masterPaymentCodes // ignore: cast_nullable_to_non_nullable
              as MasterPaymentCodesGetFeeRegisterTalent?,
    ) as $Val);
  }

  /// Create a copy of DataGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MasterPaymentCodesGetFeeRegisterTalentCopyWith<$Res>?
      get masterPaymentCodes {
    if (_value.masterPaymentCodes == null) {
      return null;
    }

    return $MasterPaymentCodesGetFeeRegisterTalentCopyWith<$Res>(
        _value.masterPaymentCodes!, (value) {
      return _then(_value.copyWith(masterPaymentCodes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataGetFeeRegisterTalentImplCopyWith<$Res>
    implements $DataGetFeeRegisterTalentCopyWith<$Res> {
  factory _$$DataGetFeeRegisterTalentImplCopyWith(
          _$DataGetFeeRegisterTalentImpl value,
          $Res Function(_$DataGetFeeRegisterTalentImpl) then) =
      __$$DataGetFeeRegisterTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'master_payment_codes')
      MasterPaymentCodesGetFeeRegisterTalent? masterPaymentCodes});

  @override
  $MasterPaymentCodesGetFeeRegisterTalentCopyWith<$Res>? get masterPaymentCodes;
}

/// @nodoc
class __$$DataGetFeeRegisterTalentImplCopyWithImpl<$Res>
    extends _$DataGetFeeRegisterTalentCopyWithImpl<$Res,
        _$DataGetFeeRegisterTalentImpl>
    implements _$$DataGetFeeRegisterTalentImplCopyWith<$Res> {
  __$$DataGetFeeRegisterTalentImplCopyWithImpl(
      _$DataGetFeeRegisterTalentImpl _value,
      $Res Function(_$DataGetFeeRegisterTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? role = freezed,
    Object? masterPaymentCodes = freezed,
  }) {
    return _then(_$DataGetFeeRegisterTalentImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      masterPaymentCodes: freezed == masterPaymentCodes
          ? _value.masterPaymentCodes
          : masterPaymentCodes // ignore: cast_nullable_to_non_nullable
              as MasterPaymentCodesGetFeeRegisterTalent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataGetFeeRegisterTalentImpl implements _DataGetFeeRegisterTalent {
  const _$DataGetFeeRegisterTalentImpl(
      {@JsonKey(name: 'email') this.email,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'master_payment_codes') this.masterPaymentCodes});

  factory _$DataGetFeeRegisterTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataGetFeeRegisterTalentImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'master_payment_codes')
  final MasterPaymentCodesGetFeeRegisterTalent? masterPaymentCodes;

  @override
  String toString() {
    return 'DataGetFeeRegisterTalent(email: $email, role: $role, masterPaymentCodes: $masterPaymentCodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataGetFeeRegisterTalentImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.masterPaymentCodes, masterPaymentCodes) ||
                other.masterPaymentCodes == masterPaymentCodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, role, masterPaymentCodes);

  /// Create a copy of DataGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataGetFeeRegisterTalentImplCopyWith<_$DataGetFeeRegisterTalentImpl>
      get copyWith => __$$DataGetFeeRegisterTalentImplCopyWithImpl<
          _$DataGetFeeRegisterTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataGetFeeRegisterTalentImplToJson(
      this,
    );
  }
}

abstract class _DataGetFeeRegisterTalent implements DataGetFeeRegisterTalent {
  const factory _DataGetFeeRegisterTalent(
          {@JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'role') final String? role,
          @JsonKey(name: 'master_payment_codes')
          final MasterPaymentCodesGetFeeRegisterTalent? masterPaymentCodes}) =
      _$DataGetFeeRegisterTalentImpl;

  factory _DataGetFeeRegisterTalent.fromJson(Map<String, dynamic> json) =
      _$DataGetFeeRegisterTalentImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'master_payment_codes')
  MasterPaymentCodesGetFeeRegisterTalent? get masterPaymentCodes;

  /// Create a copy of DataGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataGetFeeRegisterTalentImplCopyWith<_$DataGetFeeRegisterTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MasterPaymentCodesGetFeeRegisterTalent
    _$MasterPaymentCodesGetFeeRegisterTalentFromJson(
        Map<String, dynamic> json) {
  return _MasterPaymentCodesGetFeeRegisterTalent.fromJson(json);
}

/// @nodoc
mixin _$MasterPaymentCodesGetFeeRegisterTalent {
  @JsonKey(name: 'payment_code')
  String? get paymentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;

  /// Serializes this MasterPaymentCodesGetFeeRegisterTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MasterPaymentCodesGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterPaymentCodesGetFeeRegisterTalentCopyWith<
          MasterPaymentCodesGetFeeRegisterTalent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterPaymentCodesGetFeeRegisterTalentCopyWith<$Res> {
  factory $MasterPaymentCodesGetFeeRegisterTalentCopyWith(
          MasterPaymentCodesGetFeeRegisterTalent value,
          $Res Function(MasterPaymentCodesGetFeeRegisterTalent) then) =
      _$MasterPaymentCodesGetFeeRegisterTalentCopyWithImpl<$Res,
          MasterPaymentCodesGetFeeRegisterTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_code') String? paymentCode,
      @JsonKey(name: 'amount') String? amount});
}

/// @nodoc
class _$MasterPaymentCodesGetFeeRegisterTalentCopyWithImpl<$Res,
        $Val extends MasterPaymentCodesGetFeeRegisterTalent>
    implements $MasterPaymentCodesGetFeeRegisterTalentCopyWith<$Res> {
  _$MasterPaymentCodesGetFeeRegisterTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterPaymentCodesGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentCode = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MasterPaymentCodesGetFeeRegisterTalentImplCopyWith<$Res>
    implements $MasterPaymentCodesGetFeeRegisterTalentCopyWith<$Res> {
  factory _$$MasterPaymentCodesGetFeeRegisterTalentImplCopyWith(
          _$MasterPaymentCodesGetFeeRegisterTalentImpl value,
          $Res Function(_$MasterPaymentCodesGetFeeRegisterTalentImpl) then) =
      __$$MasterPaymentCodesGetFeeRegisterTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_code') String? paymentCode,
      @JsonKey(name: 'amount') String? amount});
}

/// @nodoc
class __$$MasterPaymentCodesGetFeeRegisterTalentImplCopyWithImpl<$Res>
    extends _$MasterPaymentCodesGetFeeRegisterTalentCopyWithImpl<$Res,
        _$MasterPaymentCodesGetFeeRegisterTalentImpl>
    implements _$$MasterPaymentCodesGetFeeRegisterTalentImplCopyWith<$Res> {
  __$$MasterPaymentCodesGetFeeRegisterTalentImplCopyWithImpl(
      _$MasterPaymentCodesGetFeeRegisterTalentImpl _value,
      $Res Function(_$MasterPaymentCodesGetFeeRegisterTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterPaymentCodesGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentCode = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$MasterPaymentCodesGetFeeRegisterTalentImpl(
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MasterPaymentCodesGetFeeRegisterTalentImpl
    implements _MasterPaymentCodesGetFeeRegisterTalent {
  const _$MasterPaymentCodesGetFeeRegisterTalentImpl(
      {@JsonKey(name: 'payment_code') this.paymentCode,
      @JsonKey(name: 'amount') this.amount});

  factory _$MasterPaymentCodesGetFeeRegisterTalentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MasterPaymentCodesGetFeeRegisterTalentImplFromJson(json);

  @override
  @JsonKey(name: 'payment_code')
  final String? paymentCode;
  @override
  @JsonKey(name: 'amount')
  final String? amount;

  @override
  String toString() {
    return 'MasterPaymentCodesGetFeeRegisterTalent(paymentCode: $paymentCode, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterPaymentCodesGetFeeRegisterTalentImpl &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentCode, amount);

  /// Create a copy of MasterPaymentCodesGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterPaymentCodesGetFeeRegisterTalentImplCopyWith<
          _$MasterPaymentCodesGetFeeRegisterTalentImpl>
      get copyWith =>
          __$$MasterPaymentCodesGetFeeRegisterTalentImplCopyWithImpl<
              _$MasterPaymentCodesGetFeeRegisterTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MasterPaymentCodesGetFeeRegisterTalentImplToJson(
      this,
    );
  }
}

abstract class _MasterPaymentCodesGetFeeRegisterTalent
    implements MasterPaymentCodesGetFeeRegisterTalent {
  const factory _MasterPaymentCodesGetFeeRegisterTalent(
          {@JsonKey(name: 'payment_code') final String? paymentCode,
          @JsonKey(name: 'amount') final String? amount}) =
      _$MasterPaymentCodesGetFeeRegisterTalentImpl;

  factory _MasterPaymentCodesGetFeeRegisterTalent.fromJson(
          Map<String, dynamic> json) =
      _$MasterPaymentCodesGetFeeRegisterTalentImpl.fromJson;

  @override
  @JsonKey(name: 'payment_code')
  String? get paymentCode;
  @override
  @JsonKey(name: 'amount')
  String? get amount;

  /// Create a copy of MasterPaymentCodesGetFeeRegisterTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterPaymentCodesGetFeeRegisterTalentImplCopyWith<
          _$MasterPaymentCodesGetFeeRegisterTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
