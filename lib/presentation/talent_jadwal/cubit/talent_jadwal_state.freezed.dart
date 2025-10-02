// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'talent_jadwal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TalentJadwalState _$TalentJadwalStateFromJson(Map<String, dynamic> json) {
  return _TalentJadwalState.fromJson(json);
}

/// @nodoc
mixin _$TalentJadwalState {
  String? get fcmToken => throw _privateConstructorUsedError;
  GetScheduleTalent? get scheduleTalent => throw _privateConstructorUsedError;

  /// Serializes this TalentJadwalState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TalentJadwalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TalentJadwalStateCopyWith<TalentJadwalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalentJadwalStateCopyWith<$Res> {
  factory $TalentJadwalStateCopyWith(
          TalentJadwalState value, $Res Function(TalentJadwalState) then) =
      _$TalentJadwalStateCopyWithImpl<$Res, TalentJadwalState>;
  @useResult
  $Res call({String? fcmToken, GetScheduleTalent? scheduleTalent});

  $GetScheduleTalentCopyWith<$Res>? get scheduleTalent;
}

/// @nodoc
class _$TalentJadwalStateCopyWithImpl<$Res, $Val extends TalentJadwalState>
    implements $TalentJadwalStateCopyWith<$Res> {
  _$TalentJadwalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TalentJadwalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? scheduleTalent = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleTalent: freezed == scheduleTalent
          ? _value.scheduleTalent
          : scheduleTalent // ignore: cast_nullable_to_non_nullable
              as GetScheduleTalent?,
    ) as $Val);
  }

  /// Create a copy of TalentJadwalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetScheduleTalentCopyWith<$Res>? get scheduleTalent {
    if (_value.scheduleTalent == null) {
      return null;
    }

    return $GetScheduleTalentCopyWith<$Res>(_value.scheduleTalent!, (value) {
      return _then(_value.copyWith(scheduleTalent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TalentJadwalStateImplCopyWith<$Res>
    implements $TalentJadwalStateCopyWith<$Res> {
  factory _$$TalentJadwalStateImplCopyWith(_$TalentJadwalStateImpl value,
          $Res Function(_$TalentJadwalStateImpl) then) =
      __$$TalentJadwalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fcmToken, GetScheduleTalent? scheduleTalent});

  @override
  $GetScheduleTalentCopyWith<$Res>? get scheduleTalent;
}

/// @nodoc
class __$$TalentJadwalStateImplCopyWithImpl<$Res>
    extends _$TalentJadwalStateCopyWithImpl<$Res, _$TalentJadwalStateImpl>
    implements _$$TalentJadwalStateImplCopyWith<$Res> {
  __$$TalentJadwalStateImplCopyWithImpl(_$TalentJadwalStateImpl _value,
      $Res Function(_$TalentJadwalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TalentJadwalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? scheduleTalent = freezed,
  }) {
    return _then(_$TalentJadwalStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduleTalent: freezed == scheduleTalent
          ? _value.scheduleTalent
          : scheduleTalent // ignore: cast_nullable_to_non_nullable
              as GetScheduleTalent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TalentJadwalStateImpl extends _TalentJadwalState {
  _$TalentJadwalStateImpl({this.fcmToken, this.scheduleTalent}) : super._();

  factory _$TalentJadwalStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TalentJadwalStateImplFromJson(json);

  @override
  final String? fcmToken;
  @override
  final GetScheduleTalent? scheduleTalent;

  @override
  String toString() {
    return 'TalentJadwalState(fcmToken: $fcmToken, scheduleTalent: $scheduleTalent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TalentJadwalStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.scheduleTalent, scheduleTalent) ||
                other.scheduleTalent == scheduleTalent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, scheduleTalent);

  /// Create a copy of TalentJadwalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TalentJadwalStateImplCopyWith<_$TalentJadwalStateImpl> get copyWith =>
      __$$TalentJadwalStateImplCopyWithImpl<_$TalentJadwalStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TalentJadwalStateImplToJson(
      this,
    );
  }
}

abstract class _TalentJadwalState extends TalentJadwalState {
  factory _TalentJadwalState(
      {final String? fcmToken,
      final GetScheduleTalent? scheduleTalent}) = _$TalentJadwalStateImpl;
  _TalentJadwalState._() : super._();

  factory _TalentJadwalState.fromJson(Map<String, dynamic> json) =
      _$TalentJadwalStateImpl.fromJson;

  @override
  String? get fcmToken;
  @override
  GetScheduleTalent? get scheduleTalent;

  /// Create a copy of TalentJadwalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TalentJadwalStateImplCopyWith<_$TalentJadwalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
