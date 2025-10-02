// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_admin_total_talent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAdminTotalTalent _$GetAdminTotalTalentFromJson(Map<String, dynamic> json) {
  return _GetAdminTotalTalent.fromJson(json);
}

/// @nodoc
mixin _$GetAdminTotalTalent {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  int? get data => throw _privateConstructorUsedError;

  /// Serializes this GetAdminTotalTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAdminTotalTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAdminTotalTalentCopyWith<GetAdminTotalTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAdminTotalTalentCopyWith<$Res> {
  factory $GetAdminTotalTalentCopyWith(
          GetAdminTotalTalent value, $Res Function(GetAdminTotalTalent) then) =
      _$GetAdminTotalTalentCopyWithImpl<$Res, GetAdminTotalTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') int? data});
}

/// @nodoc
class _$GetAdminTotalTalentCopyWithImpl<$Res, $Val extends GetAdminTotalTalent>
    implements $GetAdminTotalTalentCopyWith<$Res> {
  _$GetAdminTotalTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAdminTotalTalent
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
abstract class _$$GetAdminTotalTalentImplCopyWith<$Res>
    implements $GetAdminTotalTalentCopyWith<$Res> {
  factory _$$GetAdminTotalTalentImplCopyWith(_$GetAdminTotalTalentImpl value,
          $Res Function(_$GetAdminTotalTalentImpl) then) =
      __$$GetAdminTotalTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') int? data});
}

/// @nodoc
class __$$GetAdminTotalTalentImplCopyWithImpl<$Res>
    extends _$GetAdminTotalTalentCopyWithImpl<$Res, _$GetAdminTotalTalentImpl>
    implements _$$GetAdminTotalTalentImplCopyWith<$Res> {
  __$$GetAdminTotalTalentImplCopyWithImpl(_$GetAdminTotalTalentImpl _value,
      $Res Function(_$GetAdminTotalTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAdminTotalTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAdminTotalTalentImpl(
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
class _$GetAdminTotalTalentImpl implements _GetAdminTotalTalent {
  const _$GetAdminTotalTalentImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$GetAdminTotalTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAdminTotalTalentImplFromJson(json);

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
    return 'GetAdminTotalTalent(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminTotalTalentImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetAdminTotalTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminTotalTalentImplCopyWith<_$GetAdminTotalTalentImpl> get copyWith =>
      __$$GetAdminTotalTalentImplCopyWithImpl<_$GetAdminTotalTalentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAdminTotalTalentImplToJson(
      this,
    );
  }
}

abstract class _GetAdminTotalTalent implements GetAdminTotalTalent {
  const factory _GetAdminTotalTalent(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final int? data}) = _$GetAdminTotalTalentImpl;

  factory _GetAdminTotalTalent.fromJson(Map<String, dynamic> json) =
      _$GetAdminTotalTalentImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  int? get data;

  /// Create a copy of GetAdminTotalTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAdminTotalTalentImplCopyWith<_$GetAdminTotalTalentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
