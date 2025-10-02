// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_list_payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetListPaymentMethod _$GetListPaymentMethodFromJson(Map<String, dynamic> json) {
  return _GetListPaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$GetListPaymentMethod {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DatumGetListPaymentMethod>? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetListPaymentMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetListPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetListPaymentMethodCopyWith<GetListPaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListPaymentMethodCopyWith<$Res> {
  factory $GetListPaymentMethodCopyWith(GetListPaymentMethod value,
          $Res Function(GetListPaymentMethod) then) =
      _$GetListPaymentMethodCopyWithImpl<$Res, GetListPaymentMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetListPaymentMethod>? data});
}

/// @nodoc
class _$GetListPaymentMethodCopyWithImpl<$Res,
        $Val extends GetListPaymentMethod>
    implements $GetListPaymentMethodCopyWith<$Res> {
  _$GetListPaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetListPaymentMethod
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
              as List<DatumGetListPaymentMethod>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetListPaymentMethodImplCopyWith<$Res>
    implements $GetListPaymentMethodCopyWith<$Res> {
  factory _$$GetListPaymentMethodImplCopyWith(_$GetListPaymentMethodImpl value,
          $Res Function(_$GetListPaymentMethodImpl) then) =
      __$$GetListPaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetListPaymentMethod>? data});
}

/// @nodoc
class __$$GetListPaymentMethodImplCopyWithImpl<$Res>
    extends _$GetListPaymentMethodCopyWithImpl<$Res, _$GetListPaymentMethodImpl>
    implements _$$GetListPaymentMethodImplCopyWith<$Res> {
  __$$GetListPaymentMethodImplCopyWithImpl(_$GetListPaymentMethodImpl _value,
      $Res Function(_$GetListPaymentMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetListPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetListPaymentMethodImpl(
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
              as List<DatumGetListPaymentMethod>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetListPaymentMethodImpl implements _GetListPaymentMethod {
  const _$GetListPaymentMethodImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<DatumGetListPaymentMethod>? data})
      : _data = data;

  factory _$GetListPaymentMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetListPaymentMethodImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<DatumGetListPaymentMethod>? _data;
  @override
  @JsonKey(name: 'data')
  List<DatumGetListPaymentMethod>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetListPaymentMethod(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListPaymentMethodImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetListPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListPaymentMethodImplCopyWith<_$GetListPaymentMethodImpl>
      get copyWith =>
          __$$GetListPaymentMethodImplCopyWithImpl<_$GetListPaymentMethodImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetListPaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _GetListPaymentMethod implements GetListPaymentMethod {
  const factory _GetListPaymentMethod(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<DatumGetListPaymentMethod>? data}) =
      _$GetListPaymentMethodImpl;

  factory _GetListPaymentMethod.fromJson(Map<String, dynamic> json) =
      _$GetListPaymentMethodImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<DatumGetListPaymentMethod>? get data;

  /// Create a copy of GetListPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetListPaymentMethodImplCopyWith<_$GetListPaymentMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DatumGetListPaymentMethod _$DatumGetListPaymentMethodFromJson(
    Map<String, dynamic> json) {
  return _DatumGetListPaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$DatumGetListPaymentMethod {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this DatumGetListPaymentMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatumGetListPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumGetListPaymentMethodCopyWith<DatumGetListPaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumGetListPaymentMethodCopyWith<$Res> {
  factory $DatumGetListPaymentMethodCopyWith(DatumGetListPaymentMethod value,
          $Res Function(DatumGetListPaymentMethod) then) =
      _$DatumGetListPaymentMethodCopyWithImpl<$Res, DatumGetListPaymentMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$DatumGetListPaymentMethodCopyWithImpl<$Res,
        $Val extends DatumGetListPaymentMethod>
    implements $DatumGetListPaymentMethodCopyWith<$Res> {
  _$DatumGetListPaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatumGetListPaymentMethod
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
abstract class _$$DatumGetListPaymentMethodImplCopyWith<$Res>
    implements $DatumGetListPaymentMethodCopyWith<$Res> {
  factory _$$DatumGetListPaymentMethodImplCopyWith(
          _$DatumGetListPaymentMethodImpl value,
          $Res Function(_$DatumGetListPaymentMethodImpl) then) =
      __$$DatumGetListPaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$DatumGetListPaymentMethodImplCopyWithImpl<$Res>
    extends _$DatumGetListPaymentMethodCopyWithImpl<$Res,
        _$DatumGetListPaymentMethodImpl>
    implements _$$DatumGetListPaymentMethodImplCopyWith<$Res> {
  __$$DatumGetListPaymentMethodImplCopyWithImpl(
      _$DatumGetListPaymentMethodImpl _value,
      $Res Function(_$DatumGetListPaymentMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatumGetListPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DatumGetListPaymentMethodImpl(
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
class _$DatumGetListPaymentMethodImpl implements _DatumGetListPaymentMethod {
  const _$DatumGetListPaymentMethodImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'id') this.id});

  factory _$DatumGetListPaymentMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumGetListPaymentMethodImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'DatumGetListPaymentMethod(name: $name, isActive: $isActive, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumGetListPaymentMethodImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, isActive, id);

  /// Create a copy of DatumGetListPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumGetListPaymentMethodImplCopyWith<_$DatumGetListPaymentMethodImpl>
      get copyWith => __$$DatumGetListPaymentMethodImplCopyWithImpl<
          _$DatumGetListPaymentMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumGetListPaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _DatumGetListPaymentMethod implements DatumGetListPaymentMethod {
  const factory _DatumGetListPaymentMethod(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'id') final String? id}) = _$DatumGetListPaymentMethodImpl;

  factory _DatumGetListPaymentMethod.fromJson(Map<String, dynamic> json) =
      _$DatumGetListPaymentMethodImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of DatumGetListPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumGetListPaymentMethodImplCopyWith<_$DatumGetListPaymentMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}
