// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_search_talent_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientSearchTalentState _$ClientSearchTalentStateFromJson(
    Map<String, dynamic> json) {
  return _ClientSearchTalentState.fromJson(json);
}

/// @nodoc
mixin _$ClientSearchTalentState {
  GetClientSearchTalent? get talentResults =>
      throw _privateConstructorUsedError;

  /// Serializes this ClientSearchTalentState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientSearchTalentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientSearchTalentStateCopyWith<ClientSearchTalentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientSearchTalentStateCopyWith<$Res> {
  factory $ClientSearchTalentStateCopyWith(ClientSearchTalentState value,
          $Res Function(ClientSearchTalentState) then) =
      _$ClientSearchTalentStateCopyWithImpl<$Res, ClientSearchTalentState>;
  @useResult
  $Res call({GetClientSearchTalent? talentResults});

  $GetClientSearchTalentCopyWith<$Res>? get talentResults;
}

/// @nodoc
class _$ClientSearchTalentStateCopyWithImpl<$Res,
        $Val extends ClientSearchTalentState>
    implements $ClientSearchTalentStateCopyWith<$Res> {
  _$ClientSearchTalentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientSearchTalentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? talentResults = freezed,
  }) {
    return _then(_value.copyWith(
      talentResults: freezed == talentResults
          ? _value.talentResults
          : talentResults // ignore: cast_nullable_to_non_nullable
              as GetClientSearchTalent?,
    ) as $Val);
  }

  /// Create a copy of ClientSearchTalentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetClientSearchTalentCopyWith<$Res>? get talentResults {
    if (_value.talentResults == null) {
      return null;
    }

    return $GetClientSearchTalentCopyWith<$Res>(_value.talentResults!, (value) {
      return _then(_value.copyWith(talentResults: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientSearchTalentStateImplCopyWith<$Res>
    implements $ClientSearchTalentStateCopyWith<$Res> {
  factory _$$ClientSearchTalentStateImplCopyWith(
          _$ClientSearchTalentStateImpl value,
          $Res Function(_$ClientSearchTalentStateImpl) then) =
      __$$ClientSearchTalentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetClientSearchTalent? talentResults});

  @override
  $GetClientSearchTalentCopyWith<$Res>? get talentResults;
}

/// @nodoc
class __$$ClientSearchTalentStateImplCopyWithImpl<$Res>
    extends _$ClientSearchTalentStateCopyWithImpl<$Res,
        _$ClientSearchTalentStateImpl>
    implements _$$ClientSearchTalentStateImplCopyWith<$Res> {
  __$$ClientSearchTalentStateImplCopyWithImpl(
      _$ClientSearchTalentStateImpl _value,
      $Res Function(_$ClientSearchTalentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientSearchTalentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? talentResults = freezed,
  }) {
    return _then(_$ClientSearchTalentStateImpl(
      talentResults: freezed == talentResults
          ? _value.talentResults
          : talentResults // ignore: cast_nullable_to_non_nullable
              as GetClientSearchTalent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientSearchTalentStateImpl extends _ClientSearchTalentState {
  _$ClientSearchTalentStateImpl({this.talentResults}) : super._();

  factory _$ClientSearchTalentStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientSearchTalentStateImplFromJson(json);

  @override
  final GetClientSearchTalent? talentResults;

  @override
  String toString() {
    return 'ClientSearchTalentState(talentResults: $talentResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientSearchTalentStateImpl &&
            (identical(other.talentResults, talentResults) ||
                other.talentResults == talentResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, talentResults);

  /// Create a copy of ClientSearchTalentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientSearchTalentStateImplCopyWith<_$ClientSearchTalentStateImpl>
      get copyWith => __$$ClientSearchTalentStateImplCopyWithImpl<
          _$ClientSearchTalentStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientSearchTalentStateImplToJson(
      this,
    );
  }
}

abstract class _ClientSearchTalentState extends ClientSearchTalentState {
  factory _ClientSearchTalentState(
          {final GetClientSearchTalent? talentResults}) =
      _$ClientSearchTalentStateImpl;
  _ClientSearchTalentState._() : super._();

  factory _ClientSearchTalentState.fromJson(Map<String, dynamic> json) =
      _$ClientSearchTalentStateImpl.fromJson;

  @override
  GetClientSearchTalent? get talentResults;

  /// Create a copy of ClientSearchTalentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientSearchTalentStateImplCopyWith<_$ClientSearchTalentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
