// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCategoriesResponse _$GetCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _GetCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCategoriesResponse {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataGetCategoriesResponse>? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetCategoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetCategoriesResponseCopyWith<GetCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoriesResponseCopyWith<$Res> {
  factory $GetCategoriesResponseCopyWith(GetCategoriesResponse value,
          $Res Function(GetCategoriesResponse) then) =
      _$GetCategoriesResponseCopyWithImpl<$Res, GetCategoriesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataGetCategoriesResponse>? data});
}

/// @nodoc
class _$GetCategoriesResponseCopyWithImpl<$Res,
        $Val extends GetCategoriesResponse>
    implements $GetCategoriesResponseCopyWith<$Res> {
  _$GetCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCategoriesResponse
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
              as List<DataGetCategoriesResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCategoriesResponseImplCopyWith<$Res>
    implements $GetCategoriesResponseCopyWith<$Res> {
  factory _$$GetCategoriesResponseImplCopyWith(
          _$GetCategoriesResponseImpl value,
          $Res Function(_$GetCategoriesResponseImpl) then) =
      __$$GetCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataGetCategoriesResponse>? data});
}

/// @nodoc
class __$$GetCategoriesResponseImplCopyWithImpl<$Res>
    extends _$GetCategoriesResponseCopyWithImpl<$Res,
        _$GetCategoriesResponseImpl>
    implements _$$GetCategoriesResponseImplCopyWith<$Res> {
  __$$GetCategoriesResponseImplCopyWithImpl(_$GetCategoriesResponseImpl _value,
      $Res Function(_$GetCategoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetCategoriesResponseImpl(
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
              as List<DataGetCategoriesResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCategoriesResponseImpl implements _GetCategoriesResponse {
  const _$GetCategoriesResponseImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<DataGetCategoriesResponse>? data})
      : _data = data;

  factory _$GetCategoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCategoriesResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<DataGetCategoriesResponse>? _data;
  @override
  @JsonKey(name: "data")
  List<DataGetCategoriesResponse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetCategoriesResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoriesResponseImplCopyWith<_$GetCategoriesResponseImpl>
      get copyWith => __$$GetCategoriesResponseImplCopyWithImpl<
          _$GetCategoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetCategoriesResponse implements GetCategoriesResponse {
  const factory _GetCategoriesResponse(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<DataGetCategoriesResponse>? data}) =
      _$GetCategoriesResponseImpl;

  factory _GetCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$GetCategoriesResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  List<DataGetCategoriesResponse>? get data;

  /// Create a copy of GetCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCategoriesResponseImplCopyWith<_$GetCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataGetCategoriesResponse _$DataGetCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _DataGetCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$DataGetCategoriesResponse {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this DataGetCategoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataGetCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataGetCategoriesResponseCopyWith<DataGetCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGetCategoriesResponseCopyWith<$Res> {
  factory $DataGetCategoriesResponseCopyWith(DataGetCategoriesResponse value,
          $Res Function(DataGetCategoriesResponse) then) =
      _$DataGetCategoriesResponseCopyWithImpl<$Res, DataGetCategoriesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "id") String? id});
}

/// @nodoc
class _$DataGetCategoriesResponseCopyWithImpl<$Res,
        $Val extends DataGetCategoriesResponse>
    implements $DataGetCategoriesResponseCopyWith<$Res> {
  _$DataGetCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataGetCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataGetCategoriesResponseImplCopyWith<$Res>
    implements $DataGetCategoriesResponseCopyWith<$Res> {
  factory _$$DataGetCategoriesResponseImplCopyWith(
          _$DataGetCategoriesResponseImpl value,
          $Res Function(_$DataGetCategoriesResponseImpl) then) =
      __$$DataGetCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "id") String? id});
}

/// @nodoc
class __$$DataGetCategoriesResponseImplCopyWithImpl<$Res>
    extends _$DataGetCategoriesResponseCopyWithImpl<$Res,
        _$DataGetCategoriesResponseImpl>
    implements _$$DataGetCategoriesResponseImplCopyWith<$Res> {
  __$$DataGetCategoriesResponseImplCopyWithImpl(
      _$DataGetCategoriesResponseImpl _value,
      $Res Function(_$DataGetCategoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataGetCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DataGetCategoriesResponseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataGetCategoriesResponseImpl implements _DataGetCategoriesResponse {
  const _$DataGetCategoriesResponseImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "id") this.id});

  factory _$DataGetCategoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataGetCategoriesResponseImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "id")
  final String? id;

  @override
  String toString() {
    return 'DataGetCategoriesResponse(name: $name, isActive: $isActive, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataGetCategoriesResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, isActive, id);

  /// Create a copy of DataGetCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataGetCategoriesResponseImplCopyWith<_$DataGetCategoriesResponseImpl>
      get copyWith => __$$DataGetCategoriesResponseImplCopyWithImpl<
          _$DataGetCategoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataGetCategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _DataGetCategoriesResponse implements DataGetCategoriesResponse {
  const factory _DataGetCategoriesResponse(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "id") final String? id}) = _$DataGetCategoriesResponseImpl;

  factory _DataGetCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$DataGetCategoriesResponseImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "id")
  String? get id;

  /// Create a copy of DataGetCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataGetCategoriesResponseImplCopyWith<_$DataGetCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
