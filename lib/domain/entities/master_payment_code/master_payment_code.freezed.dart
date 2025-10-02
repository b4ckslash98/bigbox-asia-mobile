// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_payment_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MasterPaymentCode _$MasterPaymentCodeFromJson(Map<String, dynamic> json) {
  return _MasterPaymentCode.fromJson(json);
}

/// @nodoc
mixin _$MasterPaymentCode {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DatumMasterPaymentCode>? get data => throw _privateConstructorUsedError;

  /// Serializes this MasterPaymentCode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MasterPaymentCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterPaymentCodeCopyWith<MasterPaymentCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterPaymentCodeCopyWith<$Res> {
  factory $MasterPaymentCodeCopyWith(
          MasterPaymentCode value, $Res Function(MasterPaymentCode) then) =
      _$MasterPaymentCodeCopyWithImpl<$Res, MasterPaymentCode>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumMasterPaymentCode>? data});
}

/// @nodoc
class _$MasterPaymentCodeCopyWithImpl<$Res, $Val extends MasterPaymentCode>
    implements $MasterPaymentCodeCopyWith<$Res> {
  _$MasterPaymentCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterPaymentCode
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
              as List<DatumMasterPaymentCode>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MasterPaymentCodeImplCopyWith<$Res>
    implements $MasterPaymentCodeCopyWith<$Res> {
  factory _$$MasterPaymentCodeImplCopyWith(_$MasterPaymentCodeImpl value,
          $Res Function(_$MasterPaymentCodeImpl) then) =
      __$$MasterPaymentCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumMasterPaymentCode>? data});
}

/// @nodoc
class __$$MasterPaymentCodeImplCopyWithImpl<$Res>
    extends _$MasterPaymentCodeCopyWithImpl<$Res, _$MasterPaymentCodeImpl>
    implements _$$MasterPaymentCodeImplCopyWith<$Res> {
  __$$MasterPaymentCodeImplCopyWithImpl(_$MasterPaymentCodeImpl _value,
      $Res Function(_$MasterPaymentCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterPaymentCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MasterPaymentCodeImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DatumMasterPaymentCode>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MasterPaymentCodeImpl implements _MasterPaymentCode {
  const _$MasterPaymentCodeImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<DatumMasterPaymentCode>? data})
      : _data = data;

  factory _$MasterPaymentCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MasterPaymentCodeImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<DatumMasterPaymentCode>? _data;
  @override
  @JsonKey(name: 'data')
  List<DatumMasterPaymentCode>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MasterPaymentCode(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterPaymentCodeImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of MasterPaymentCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterPaymentCodeImplCopyWith<_$MasterPaymentCodeImpl> get copyWith =>
      __$$MasterPaymentCodeImplCopyWithImpl<_$MasterPaymentCodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MasterPaymentCodeImplToJson(
      this,
    );
  }
}

abstract class _MasterPaymentCode implements MasterPaymentCode {
  const factory _MasterPaymentCode(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<DatumMasterPaymentCode>? data}) =
      _$MasterPaymentCodeImpl;

  factory _MasterPaymentCode.fromJson(Map<String, dynamic> json) =
      _$MasterPaymentCodeImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<DatumMasterPaymentCode>? get data;

  /// Create a copy of MasterPaymentCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterPaymentCodeImplCopyWith<_$MasterPaymentCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatumMasterPaymentCode _$DatumMasterPaymentCodeFromJson(
    Map<String, dynamic> json) {
  return _DatumMasterPaymentCode.fromJson(json);
}

/// @nodoc
mixin _$DatumMasterPaymentCode {
  @JsonKey(name: 'payment_code')
  String? get paymentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this DatumMasterPaymentCode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatumMasterPaymentCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumMasterPaymentCodeCopyWith<DatumMasterPaymentCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumMasterPaymentCodeCopyWith<$Res> {
  factory $DatumMasterPaymentCodeCopyWith(DatumMasterPaymentCode value,
          $Res Function(DatumMasterPaymentCode) then) =
      _$DatumMasterPaymentCodeCopyWithImpl<$Res, DatumMasterPaymentCode>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_code') String? paymentCode,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$DatumMasterPaymentCodeCopyWithImpl<$Res,
        $Val extends DatumMasterPaymentCode>
    implements $DatumMasterPaymentCodeCopyWith<$Res> {
  _$DatumMasterPaymentCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatumMasterPaymentCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentCode = freezed,
    Object? amount = freezed,
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumMasterPaymentCodeImplCopyWith<$Res>
    implements $DatumMasterPaymentCodeCopyWith<$Res> {
  factory _$$DatumMasterPaymentCodeImplCopyWith(
          _$DatumMasterPaymentCodeImpl value,
          $Res Function(_$DatumMasterPaymentCodeImpl) then) =
      __$$DatumMasterPaymentCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_code') String? paymentCode,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$DatumMasterPaymentCodeImplCopyWithImpl<$Res>
    extends _$DatumMasterPaymentCodeCopyWithImpl<$Res,
        _$DatumMasterPaymentCodeImpl>
    implements _$$DatumMasterPaymentCodeImplCopyWith<$Res> {
  __$$DatumMasterPaymentCodeImplCopyWithImpl(
      _$DatumMasterPaymentCodeImpl _value,
      $Res Function(_$DatumMasterPaymentCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatumMasterPaymentCode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentCode = freezed,
    Object? amount = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DatumMasterPaymentCodeImpl(
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumMasterPaymentCodeImpl implements _DatumMasterPaymentCode {
  const _$DatumMasterPaymentCodeImpl(
      {@JsonKey(name: 'payment_code') this.paymentCode,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'id') this.id});

  factory _$DatumMasterPaymentCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumMasterPaymentCodeImplFromJson(json);

  @override
  @JsonKey(name: 'payment_code')
  final String? paymentCode;
  @override
  @JsonKey(name: 'amount')
  final String? amount;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'DatumMasterPaymentCode(paymentCode: $paymentCode, amount: $amount, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumMasterPaymentCodeImpl &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentCode, amount, id);

  /// Create a copy of DatumMasterPaymentCode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumMasterPaymentCodeImplCopyWith<_$DatumMasterPaymentCodeImpl>
      get copyWith => __$$DatumMasterPaymentCodeImplCopyWithImpl<
          _$DatumMasterPaymentCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumMasterPaymentCodeImplToJson(
      this,
    );
  }
}

abstract class _DatumMasterPaymentCode implements DatumMasterPaymentCode {
  const factory _DatumMasterPaymentCode(
      {@JsonKey(name: 'payment_code') final String? paymentCode,
      @JsonKey(name: 'amount') final String? amount,
      @JsonKey(name: 'id') final String? id}) = _$DatumMasterPaymentCodeImpl;

  factory _DatumMasterPaymentCode.fromJson(Map<String, dynamic> json) =
      _$DatumMasterPaymentCodeImpl.fromJson;

  @override
  @JsonKey(name: 'payment_code')
  String? get paymentCode;
  @override
  @JsonKey(name: 'amount')
  String? get amount;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of DatumMasterPaymentCode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumMasterPaymentCodeImplCopyWith<_$DatumMasterPaymentCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
