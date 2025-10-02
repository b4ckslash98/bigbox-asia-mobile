// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetLocation _$GetLocationFromJson(Map<String, dynamic> json) {
  return _GetLocation.fromJson(json);
}

/// @nodoc
mixin _$GetLocation {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataGetLocation>? get data => throw _privateConstructorUsedError;

  /// Serializes this GetLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetLocationCopyWith<GetLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationCopyWith<$Res> {
  factory $GetLocationCopyWith(
          GetLocation value, $Res Function(GetLocation) then) =
      _$GetLocationCopyWithImpl<$Res, GetLocation>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataGetLocation>? data});
}

/// @nodoc
class _$GetLocationCopyWithImpl<$Res, $Val extends GetLocation>
    implements $GetLocationCopyWith<$Res> {
  _$GetLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetLocation
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
              as List<DataGetLocation>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetLocationImplCopyWith<$Res>
    implements $GetLocationCopyWith<$Res> {
  factory _$$GetLocationImplCopyWith(
          _$GetLocationImpl value, $Res Function(_$GetLocationImpl) then) =
      __$$GetLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<DataGetLocation>? data});
}

/// @nodoc
class __$$GetLocationImplCopyWithImpl<$Res>
    extends _$GetLocationCopyWithImpl<$Res, _$GetLocationImpl>
    implements _$$GetLocationImplCopyWith<$Res> {
  __$$GetLocationImplCopyWithImpl(
      _$GetLocationImpl _value, $Res Function(_$GetLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetLocationImpl(
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
              as List<DataGetLocation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetLocationImpl implements _GetLocation {
  const _$GetLocationImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<DataGetLocation>? data})
      : _data = data;

  factory _$GetLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetLocationImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<DataGetLocation>? _data;
  @override
  @JsonKey(name: "data")
  List<DataGetLocation>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetLocation(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationImplCopyWith<_$GetLocationImpl> get copyWith =>
      __$$GetLocationImplCopyWithImpl<_$GetLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetLocationImplToJson(
      this,
    );
  }
}

abstract class _GetLocation implements GetLocation {
  const factory _GetLocation(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final List<DataGetLocation>? data}) =
      _$GetLocationImpl;

  factory _GetLocation.fromJson(Map<String, dynamic> json) =
      _$GetLocationImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  List<DataGetLocation>? get data;

  /// Create a copy of GetLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLocationImplCopyWith<_$GetLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataGetLocation _$DataGetLocationFromJson(Map<String, dynamic> json) {
  return _DataGetLocation.fromJson(json);
}

/// @nodoc
mixin _$DataGetLocation {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_id")
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this DataGetLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataGetLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataGetLocationCopyWith<DataGetLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGetLocationCopyWith<$Res> {
  factory $DataGetLocationCopyWith(
          DataGetLocation value, $Res Function(DataGetLocation) then) =
      _$DataGetLocationCopyWithImpl<$Res, DataGetLocation>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "parent_id") String? parentId,
      @JsonKey(name: "id") String? id});
}

/// @nodoc
class _$DataGetLocationCopyWithImpl<$Res, $Val extends DataGetLocation>
    implements $DataGetLocationCopyWith<$Res> {
  _$DataGetLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataGetLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataGetLocationImplCopyWith<$Res>
    implements $DataGetLocationCopyWith<$Res> {
  factory _$$DataGetLocationImplCopyWith(_$DataGetLocationImpl value,
          $Res Function(_$DataGetLocationImpl) then) =
      __$$DataGetLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "parent_id") String? parentId,
      @JsonKey(name: "id") String? id});
}

/// @nodoc
class __$$DataGetLocationImplCopyWithImpl<$Res>
    extends _$DataGetLocationCopyWithImpl<$Res, _$DataGetLocationImpl>
    implements _$$DataGetLocationImplCopyWith<$Res> {
  __$$DataGetLocationImplCopyWithImpl(
      _$DataGetLocationImpl _value, $Res Function(_$DataGetLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataGetLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DataGetLocationImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
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
class _$DataGetLocationImpl implements _DataGetLocation {
  const _$DataGetLocationImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "parent_id") this.parentId,
      @JsonKey(name: "id") this.id});

  factory _$DataGetLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataGetLocationImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "parent_id")
  final String? parentId;
  @override
  @JsonKey(name: "id")
  final String? id;

  @override
  String toString() {
    return 'DataGetLocation(name: $name, parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataGetLocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, parentId, id);

  /// Create a copy of DataGetLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataGetLocationImplCopyWith<_$DataGetLocationImpl> get copyWith =>
      __$$DataGetLocationImplCopyWithImpl<_$DataGetLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataGetLocationImplToJson(
      this,
    );
  }
}

abstract class _DataGetLocation implements DataGetLocation {
  const factory _DataGetLocation(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "parent_id") final String? parentId,
      @JsonKey(name: "id") final String? id}) = _$DataGetLocationImpl;

  factory _DataGetLocation.fromJson(Map<String, dynamic> json) =
      _$DataGetLocationImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "parent_id")
  String? get parentId;
  @override
  @JsonKey(name: "id")
  String? get id;

  /// Create a copy of DataGetLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataGetLocationImplCopyWith<_$DataGetLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
