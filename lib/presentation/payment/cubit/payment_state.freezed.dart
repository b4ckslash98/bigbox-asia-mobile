// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentState _$PaymentStateFromJson(Map<String, dynamic> json) {
  return _PaymentState.fromJson(json);
}

/// @nodoc
mixin _$PaymentState {
  String? get fcmToken => throw _privateConstructorUsedError;
  GetListPaymentMethod? get listPaymentMethod =>
      throw _privateConstructorUsedError;
  GetFeeRegisterTalent? get feeRegisterTalent =>
      throw _privateConstructorUsedError;
  GetChargeVirtualAccountPaymentSucces? get chargeVirtualAccountPaymentSucces =>
      throw _privateConstructorUsedError;
  GetTalentProfile? get profile => throw _privateConstructorUsedError;

  /// Serializes this PaymentState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {String? fcmToken,
      GetListPaymentMethod? listPaymentMethod,
      GetFeeRegisterTalent? feeRegisterTalent,
      GetChargeVirtualAccountPaymentSucces? chargeVirtualAccountPaymentSucces,
      GetTalentProfile? profile});

  $GetListPaymentMethodCopyWith<$Res>? get listPaymentMethod;
  $GetFeeRegisterTalentCopyWith<$Res>? get feeRegisterTalent;
  $GetChargeVirtualAccountPaymentSuccesCopyWith<$Res>?
      get chargeVirtualAccountPaymentSucces;
  $GetTalentProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? listPaymentMethod = freezed,
    Object? feeRegisterTalent = freezed,
    Object? chargeVirtualAccountPaymentSucces = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      listPaymentMethod: freezed == listPaymentMethod
          ? _value.listPaymentMethod
          : listPaymentMethod // ignore: cast_nullable_to_non_nullable
              as GetListPaymentMethod?,
      feeRegisterTalent: freezed == feeRegisterTalent
          ? _value.feeRegisterTalent
          : feeRegisterTalent // ignore: cast_nullable_to_non_nullable
              as GetFeeRegisterTalent?,
      chargeVirtualAccountPaymentSucces: freezed ==
              chargeVirtualAccountPaymentSucces
          ? _value.chargeVirtualAccountPaymentSucces
          : chargeVirtualAccountPaymentSucces // ignore: cast_nullable_to_non_nullable
              as GetChargeVirtualAccountPaymentSucces?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as GetTalentProfile?,
    ) as $Val);
  }

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetListPaymentMethodCopyWith<$Res>? get listPaymentMethod {
    if (_value.listPaymentMethod == null) {
      return null;
    }

    return $GetListPaymentMethodCopyWith<$Res>(_value.listPaymentMethod!,
        (value) {
      return _then(_value.copyWith(listPaymentMethod: value) as $Val);
    });
  }

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetFeeRegisterTalentCopyWith<$Res>? get feeRegisterTalent {
    if (_value.feeRegisterTalent == null) {
      return null;
    }

    return $GetFeeRegisterTalentCopyWith<$Res>(_value.feeRegisterTalent!,
        (value) {
      return _then(_value.copyWith(feeRegisterTalent: value) as $Val);
    });
  }

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetChargeVirtualAccountPaymentSuccesCopyWith<$Res>?
      get chargeVirtualAccountPaymentSucces {
    if (_value.chargeVirtualAccountPaymentSucces == null) {
      return null;
    }

    return $GetChargeVirtualAccountPaymentSuccesCopyWith<$Res>(
        _value.chargeVirtualAccountPaymentSucces!, (value) {
      return _then(
          _value.copyWith(chargeVirtualAccountPaymentSucces: value) as $Val);
    });
  }

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetTalentProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $GetTalentProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fcmToken,
      GetListPaymentMethod? listPaymentMethod,
      GetFeeRegisterTalent? feeRegisterTalent,
      GetChargeVirtualAccountPaymentSucces? chargeVirtualAccountPaymentSucces,
      GetTalentProfile? profile});

  @override
  $GetListPaymentMethodCopyWith<$Res>? get listPaymentMethod;
  @override
  $GetFeeRegisterTalentCopyWith<$Res>? get feeRegisterTalent;
  @override
  $GetChargeVirtualAccountPaymentSuccesCopyWith<$Res>?
      get chargeVirtualAccountPaymentSucces;
  @override
  $GetTalentProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? listPaymentMethod = freezed,
    Object? feeRegisterTalent = freezed,
    Object? chargeVirtualAccountPaymentSucces = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$PaymentStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      listPaymentMethod: freezed == listPaymentMethod
          ? _value.listPaymentMethod
          : listPaymentMethod // ignore: cast_nullable_to_non_nullable
              as GetListPaymentMethod?,
      feeRegisterTalent: freezed == feeRegisterTalent
          ? _value.feeRegisterTalent
          : feeRegisterTalent // ignore: cast_nullable_to_non_nullable
              as GetFeeRegisterTalent?,
      chargeVirtualAccountPaymentSucces: freezed ==
              chargeVirtualAccountPaymentSucces
          ? _value.chargeVirtualAccountPaymentSucces
          : chargeVirtualAccountPaymentSucces // ignore: cast_nullable_to_non_nullable
              as GetChargeVirtualAccountPaymentSucces?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as GetTalentProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentStateImpl extends _PaymentState {
  _$PaymentStateImpl(
      {this.fcmToken,
      this.listPaymentMethod,
      this.feeRegisterTalent,
      this.chargeVirtualAccountPaymentSucces,
      this.profile})
      : super._();

  factory _$PaymentStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentStateImplFromJson(json);

  @override
  final String? fcmToken;
  @override
  final GetListPaymentMethod? listPaymentMethod;
  @override
  final GetFeeRegisterTalent? feeRegisterTalent;
  @override
  final GetChargeVirtualAccountPaymentSucces? chargeVirtualAccountPaymentSucces;
  @override
  final GetTalentProfile? profile;

  @override
  String toString() {
    return 'PaymentState(fcmToken: $fcmToken, listPaymentMethod: $listPaymentMethod, feeRegisterTalent: $feeRegisterTalent, chargeVirtualAccountPaymentSucces: $chargeVirtualAccountPaymentSucces, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.listPaymentMethod, listPaymentMethod) ||
                other.listPaymentMethod == listPaymentMethod) &&
            (identical(other.feeRegisterTalent, feeRegisterTalent) ||
                other.feeRegisterTalent == feeRegisterTalent) &&
            (identical(other.chargeVirtualAccountPaymentSucces,
                    chargeVirtualAccountPaymentSucces) ||
                other.chargeVirtualAccountPaymentSucces ==
                    chargeVirtualAccountPaymentSucces) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, listPaymentMethod,
      feeRegisterTalent, chargeVirtualAccountPaymentSucces, profile);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentStateImplToJson(
      this,
    );
  }
}

abstract class _PaymentState extends PaymentState {
  factory _PaymentState(
      {final String? fcmToken,
      final GetListPaymentMethod? listPaymentMethod,
      final GetFeeRegisterTalent? feeRegisterTalent,
      final GetChargeVirtualAccountPaymentSucces?
          chargeVirtualAccountPaymentSucces,
      final GetTalentProfile? profile}) = _$PaymentStateImpl;
  _PaymentState._() : super._();

  factory _PaymentState.fromJson(Map<String, dynamic> json) =
      _$PaymentStateImpl.fromJson;

  @override
  String? get fcmToken;
  @override
  GetListPaymentMethod? get listPaymentMethod;
  @override
  GetFeeRegisterTalent? get feeRegisterTalent;
  @override
  GetChargeVirtualAccountPaymentSucces? get chargeVirtualAccountPaymentSucces;
  @override
  GetTalentProfile? get profile;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
