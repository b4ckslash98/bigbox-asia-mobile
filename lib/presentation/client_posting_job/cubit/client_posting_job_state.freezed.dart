// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_posting_job_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientPostingJobState _$ClientPostingJobStateFromJson(
    Map<String, dynamic> json) {
  return _ClientPostingJobState.fromJson(json);
}

/// @nodoc
mixin _$ClientPostingJobState {
  String? get fcmToken => throw _privateConstructorUsedError;
  GetLocation? get getLocation => throw _privateConstructorUsedError;
  GetCategoriesResponse? get categories => throw _privateConstructorUsedError;

  /// Serializes this ClientPostingJobState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientPostingJobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientPostingJobStateCopyWith<ClientPostingJobState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientPostingJobStateCopyWith<$Res> {
  factory $ClientPostingJobStateCopyWith(ClientPostingJobState value,
          $Res Function(ClientPostingJobState) then) =
      _$ClientPostingJobStateCopyWithImpl<$Res, ClientPostingJobState>;
  @useResult
  $Res call(
      {String? fcmToken,
      GetLocation? getLocation,
      GetCategoriesResponse? categories});

  $GetLocationCopyWith<$Res>? get getLocation;
  $GetCategoriesResponseCopyWith<$Res>? get categories;
}

/// @nodoc
class _$ClientPostingJobStateCopyWithImpl<$Res,
        $Val extends ClientPostingJobState>
    implements $ClientPostingJobStateCopyWith<$Res> {
  _$ClientPostingJobStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientPostingJobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? getLocation = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      getLocation: freezed == getLocation
          ? _value.getLocation
          : getLocation // ignore: cast_nullable_to_non_nullable
              as GetLocation?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as GetCategoriesResponse?,
    ) as $Val);
  }

  /// Create a copy of ClientPostingJobState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetLocationCopyWith<$Res>? get getLocation {
    if (_value.getLocation == null) {
      return null;
    }

    return $GetLocationCopyWith<$Res>(_value.getLocation!, (value) {
      return _then(_value.copyWith(getLocation: value) as $Val);
    });
  }

  /// Create a copy of ClientPostingJobState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetCategoriesResponseCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $GetCategoriesResponseCopyWith<$Res>(_value.categories!, (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientPostingJobStateImplCopyWith<$Res>
    implements $ClientPostingJobStateCopyWith<$Res> {
  factory _$$ClientPostingJobStateImplCopyWith(
          _$ClientPostingJobStateImpl value,
          $Res Function(_$ClientPostingJobStateImpl) then) =
      __$$ClientPostingJobStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fcmToken,
      GetLocation? getLocation,
      GetCategoriesResponse? categories});

  @override
  $GetLocationCopyWith<$Res>? get getLocation;
  @override
  $GetCategoriesResponseCopyWith<$Res>? get categories;
}

/// @nodoc
class __$$ClientPostingJobStateImplCopyWithImpl<$Res>
    extends _$ClientPostingJobStateCopyWithImpl<$Res,
        _$ClientPostingJobStateImpl>
    implements _$$ClientPostingJobStateImplCopyWith<$Res> {
  __$$ClientPostingJobStateImplCopyWithImpl(_$ClientPostingJobStateImpl _value,
      $Res Function(_$ClientPostingJobStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientPostingJobState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? getLocation = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$ClientPostingJobStateImpl(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      getLocation: freezed == getLocation
          ? _value.getLocation
          : getLocation // ignore: cast_nullable_to_non_nullable
              as GetLocation?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as GetCategoriesResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientPostingJobStateImpl extends _ClientPostingJobState {
  _$ClientPostingJobStateImpl(
      {this.fcmToken, this.getLocation, this.categories})
      : super._();

  factory _$ClientPostingJobStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientPostingJobStateImplFromJson(json);

  @override
  final String? fcmToken;
  @override
  final GetLocation? getLocation;
  @override
  final GetCategoriesResponse? categories;

  @override
  String toString() {
    return 'ClientPostingJobState(fcmToken: $fcmToken, getLocation: $getLocation, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientPostingJobStateImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.getLocation, getLocation) ||
                other.getLocation == getLocation) &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fcmToken, getLocation, categories);

  /// Create a copy of ClientPostingJobState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientPostingJobStateImplCopyWith<_$ClientPostingJobStateImpl>
      get copyWith => __$$ClientPostingJobStateImplCopyWithImpl<
          _$ClientPostingJobStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientPostingJobStateImplToJson(
      this,
    );
  }
}

abstract class _ClientPostingJobState extends ClientPostingJobState {
  factory _ClientPostingJobState(
      {final String? fcmToken,
      final GetLocation? getLocation,
      final GetCategoriesResponse? categories}) = _$ClientPostingJobStateImpl;
  _ClientPostingJobState._() : super._();

  factory _ClientPostingJobState.fromJson(Map<String, dynamic> json) =
      _$ClientPostingJobStateImpl.fromJson;

  @override
  String? get fcmToken;
  @override
  GetLocation? get getLocation;
  @override
  GetCategoriesResponse? get categories;

  /// Create a copy of ClientPostingJobState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientPostingJobStateImplCopyWith<_$ClientPostingJobStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
