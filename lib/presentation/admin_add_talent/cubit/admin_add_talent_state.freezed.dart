// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_add_talent_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminAddTalentState _$AdminAddTalentStateFromJson(Map<String, dynamic> json) {
  return _AdminAddTalentState.fromJson(json);
}

/// @nodoc
mixin _$AdminAddTalentState {
  String? get fcmToken => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<DatumMasterPaymentCode> get paymentCodes =>
      throw _privateConstructorUsedError;
  String? get selectedPaymentCodeId => throw _privateConstructorUsedError;
  bool get isAddingTalent => throw _privateConstructorUsedError;

  /// Serializes this AdminAddTalentState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminAddTalentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminAddTalentStateCopyWith<AdminAddTalentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminAddTalentStateCopyWith<$Res> {
  factory $AdminAddTalentStateCopyWith(
          AdminAddTalentState value, $Res Function(AdminAddTalentState) then) =
      _$AdminAddTalentStateCopyWithImpl<$Res, AdminAddTalentState>;
  @useResult
  $Res call(
      {String? fcmToken,
      bool isLoading,
      List<DatumMasterPaymentCode> paymentCodes,
      String? selectedPaymentCodeId,
      bool isAddingTalent});
}

/// @nodoc
class _$AdminAddTalentStateCopyWithImpl<$Res, $Val extends AdminAddTalentState>
    implements $AdminAddTalentStateCopyWith<$Res> {
  _$AdminAddTalentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminAddTalentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? isLoading = null,
    Object? paymentCodes = null,
    Object? selectedPaymentCodeId = freezed,
    Object? isAddingTalent = null,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentCodes: null == paymentCodes
          ? _value.paymentCodes
          : paymentCodes // ignore: cast_nullable_to_non_nullable
              as List<DatumMasterPaymentCode>,
      selectedPaymentCodeId: freezed == selectedPaymentCodeId
          ? _value.selectedPaymentCodeId
          : selectedPaymentCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isAddingTalent: null == isAddingTalent
          ? _value.isAddingTalent
          : isAddingTalent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminAddTalentStateImplCopyWith<$Res>
    implements $AdminAddTalentStateCopyWith<$Res> {
  factory _$$AdminAddTalentStateImplCopyWith(_$AdminAddTalentStateImpl value,
          $Res Function(_$AdminAddTalentStateImpl) then) =
      __$$AdminAddTalentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fcmToken,
      bool isLoading,
      List<DatumMasterPaymentCode> paymentCodes,
      String? selectedPaymentCodeId,
      bool isAddingTalent});
}

/// @nodoc
class __$$AdminAddTalentStateImplCopyWithImpl<$Res>
    extends _$AdminAddTalentStateCopyWithImpl<$Res, _$AdminAddTalentStateImpl>
    implements _$$AdminAddTalentStateImplCopyWith<$Res> {
  __$$AdminAddTalentStateImplCopyWithImpl(_$AdminAddTalentStateImpl _value,
      $Res Function(_$AdminAddTalentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminAddTalentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? isLoading = null,
    Object? paymentCodes = null,
    Object? selectedPaymentCodeId = freezed,
    Object? isAddingTalent = null,
  }) {
    return _then(_$AdminAddTalentStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentCodes: null == paymentCodes
          ? _value._paymentCodes
          : paymentCodes // ignore: cast_nullable_to_non_nullable
              as List<DatumMasterPaymentCode>,
      selectedPaymentCodeId: freezed == selectedPaymentCodeId
          ? _value.selectedPaymentCodeId
          : selectedPaymentCodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      isAddingTalent: null == isAddingTalent
          ? _value.isAddingTalent
          : isAddingTalent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminAddTalentStateImpl extends _AdminAddTalentState {
  _$AdminAddTalentStateImpl(
      {this.fcmToken,
      this.isLoading = false,
      final List<DatumMasterPaymentCode> paymentCodes = const [],
      this.selectedPaymentCodeId,
      this.isAddingTalent = false})
      : _paymentCodes = paymentCodes,
        super._();

  factory _$AdminAddTalentStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminAddTalentStateImplFromJson(json);

  @override
  final String? fcmToken;
  @override
  @JsonKey()
  final bool isLoading;
  final List<DatumMasterPaymentCode> _paymentCodes;
  @override
  @JsonKey()
  List<DatumMasterPaymentCode> get paymentCodes {
    if (_paymentCodes is EqualUnmodifiableListView) return _paymentCodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentCodes);
  }

  @override
  final String? selectedPaymentCodeId;
  @override
  @JsonKey()
  final bool isAddingTalent;

  @override
  String toString() {
    return 'AdminAddTalentState(fcmToken: $fcmToken, isLoading: $isLoading, paymentCodes: $paymentCodes, selectedPaymentCodeId: $selectedPaymentCodeId, isAddingTalent: $isAddingTalent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminAddTalentStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._paymentCodes, _paymentCodes) &&
            (identical(other.selectedPaymentCodeId, selectedPaymentCodeId) ||
                other.selectedPaymentCodeId == selectedPaymentCodeId) &&
            (identical(other.isAddingTalent, isAddingTalent) ||
                other.isAddingTalent == isAddingTalent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fcmToken,
      isLoading,
      const DeepCollectionEquality().hash(_paymentCodes),
      selectedPaymentCodeId,
      isAddingTalent);

  /// Create a copy of AdminAddTalentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminAddTalentStateImplCopyWith<_$AdminAddTalentStateImpl> get copyWith =>
      __$$AdminAddTalentStateImplCopyWithImpl<_$AdminAddTalentStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminAddTalentStateImplToJson(
      this,
    );
  }
}

abstract class _AdminAddTalentState extends AdminAddTalentState {
  factory _AdminAddTalentState(
      {final String? fcmToken,
      final bool isLoading,
      final List<DatumMasterPaymentCode> paymentCodes,
      final String? selectedPaymentCodeId,
      final bool isAddingTalent}) = _$AdminAddTalentStateImpl;
  _AdminAddTalentState._() : super._();

  factory _AdminAddTalentState.fromJson(Map<String, dynamic> json) =
      _$AdminAddTalentStateImpl.fromJson;

  @override
  String? get fcmToken;
  @override
  bool get isLoading;
  @override
  List<DatumMasterPaymentCode> get paymentCodes;
  @override
  String? get selectedPaymentCodeId;
  @override
  bool get isAddingTalent;

  /// Create a copy of AdminAddTalentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminAddTalentStateImplCopyWith<_$AdminAddTalentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
