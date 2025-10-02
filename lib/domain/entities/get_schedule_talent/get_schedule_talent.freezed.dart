// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_schedule_talent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetScheduleTalent _$GetScheduleTalentFromJson(Map<String, dynamic> json) {
  return _GetScheduleTalent.fromJson(json);
}

/// @nodoc
mixin _$GetScheduleTalent {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DatumGetScheduleTalent>? get data => throw _privateConstructorUsedError;

  /// Serializes this GetScheduleTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetScheduleTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetScheduleTalentCopyWith<GetScheduleTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetScheduleTalentCopyWith<$Res> {
  factory $GetScheduleTalentCopyWith(
          GetScheduleTalent value, $Res Function(GetScheduleTalent) then) =
      _$GetScheduleTalentCopyWithImpl<$Res, GetScheduleTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetScheduleTalent>? data});
}

/// @nodoc
class _$GetScheduleTalentCopyWithImpl<$Res, $Val extends GetScheduleTalent>
    implements $GetScheduleTalentCopyWith<$Res> {
  _$GetScheduleTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetScheduleTalent
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
              as List<DatumGetScheduleTalent>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetScheduleTalentImplCopyWith<$Res>
    implements $GetScheduleTalentCopyWith<$Res> {
  factory _$$GetScheduleTalentImplCopyWith(_$GetScheduleTalentImpl value,
          $Res Function(_$GetScheduleTalentImpl) then) =
      __$$GetScheduleTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetScheduleTalent>? data});
}

/// @nodoc
class __$$GetScheduleTalentImplCopyWithImpl<$Res>
    extends _$GetScheduleTalentCopyWithImpl<$Res, _$GetScheduleTalentImpl>
    implements _$$GetScheduleTalentImplCopyWith<$Res> {
  __$$GetScheduleTalentImplCopyWithImpl(_$GetScheduleTalentImpl _value,
      $Res Function(_$GetScheduleTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetScheduleTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetScheduleTalentImpl(
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
              as List<DatumGetScheduleTalent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetScheduleTalentImpl implements _GetScheduleTalent {
  const _$GetScheduleTalentImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<DatumGetScheduleTalent>? data})
      : _data = data;

  factory _$GetScheduleTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetScheduleTalentImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<DatumGetScheduleTalent>? _data;
  @override
  @JsonKey(name: 'data')
  List<DatumGetScheduleTalent>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetScheduleTalent(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetScheduleTalentImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetScheduleTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetScheduleTalentImplCopyWith<_$GetScheduleTalentImpl> get copyWith =>
      __$$GetScheduleTalentImplCopyWithImpl<_$GetScheduleTalentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetScheduleTalentImplToJson(
      this,
    );
  }
}

abstract class _GetScheduleTalent implements GetScheduleTalent {
  const factory _GetScheduleTalent(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<DatumGetScheduleTalent>? data}) =
      _$GetScheduleTalentImpl;

  factory _GetScheduleTalent.fromJson(Map<String, dynamic> json) =
      _$GetScheduleTalentImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<DatumGetScheduleTalent>? get data;

  /// Create a copy of GetScheduleTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetScheduleTalentImplCopyWith<_$GetScheduleTalentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatumGetScheduleTalent _$DatumGetScheduleTalentFromJson(
    Map<String, dynamic> json) {
  return _DatumGetScheduleTalent.fromJson(json);
}

/// @nodoc
mixin _$DatumGetScheduleTalent {
  @JsonKey(name: 'date', fromJson: _dateFromJson)
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this DatumGetScheduleTalent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatumGetScheduleTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumGetScheduleTalentCopyWith<DatumGetScheduleTalent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumGetScheduleTalentCopyWith<$Res> {
  factory $DatumGetScheduleTalentCopyWith(DatumGetScheduleTalent value,
          $Res Function(DatumGetScheduleTalent) then) =
      _$DatumGetScheduleTalentCopyWithImpl<$Res, DatumGetScheduleTalent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date', fromJson: _dateFromJson) DateTime? date,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$DatumGetScheduleTalentCopyWithImpl<$Res,
        $Val extends DatumGetScheduleTalent>
    implements $DatumGetScheduleTalentCopyWith<$Res> {
  _$DatumGetScheduleTalentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatumGetScheduleTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
    Object? userId = freezed,
    Object? notes = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumGetScheduleTalentImplCopyWith<$Res>
    implements $DatumGetScheduleTalentCopyWith<$Res> {
  factory _$$DatumGetScheduleTalentImplCopyWith(
          _$DatumGetScheduleTalentImpl value,
          $Res Function(_$DatumGetScheduleTalentImpl) then) =
      __$$DatumGetScheduleTalentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date', fromJson: _dateFromJson) DateTime? date,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$DatumGetScheduleTalentImplCopyWithImpl<$Res>
    extends _$DatumGetScheduleTalentCopyWithImpl<$Res,
        _$DatumGetScheduleTalentImpl>
    implements _$$DatumGetScheduleTalentImplCopyWith<$Res> {
  __$$DatumGetScheduleTalentImplCopyWithImpl(
      _$DatumGetScheduleTalentImpl _value,
      $Res Function(_$DatumGetScheduleTalentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatumGetScheduleTalent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
    Object? userId = freezed,
    Object? notes = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DatumGetScheduleTalentImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
class _$DatumGetScheduleTalentImpl implements _DatumGetScheduleTalent {
  const _$DatumGetScheduleTalentImpl(
      {@JsonKey(name: 'date', fromJson: _dateFromJson) this.date,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'id') this.id});

  factory _$DatumGetScheduleTalentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumGetScheduleTalentImplFromJson(json);

  @override
  @JsonKey(name: 'date', fromJson: _dateFromJson)
  final DateTime? date;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'DatumGetScheduleTalent(date: $date, status: $status, userId: $userId, notes: $notes, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumGetScheduleTalentImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, status, userId, notes, id);

  /// Create a copy of DatumGetScheduleTalent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumGetScheduleTalentImplCopyWith<_$DatumGetScheduleTalentImpl>
      get copyWith => __$$DatumGetScheduleTalentImplCopyWithImpl<
          _$DatumGetScheduleTalentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumGetScheduleTalentImplToJson(
      this,
    );
  }
}

abstract class _DatumGetScheduleTalent implements DatumGetScheduleTalent {
  const factory _DatumGetScheduleTalent(
      {@JsonKey(name: 'date', fromJson: _dateFromJson) final DateTime? date,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'notes') final String? notes,
      @JsonKey(name: 'id') final String? id}) = _$DatumGetScheduleTalentImpl;

  factory _DatumGetScheduleTalent.fromJson(Map<String, dynamic> json) =
      _$DatumGetScheduleTalentImpl.fromJson;

  @override
  @JsonKey(name: 'date', fromJson: _dateFromJson)
  DateTime? get date;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'notes')
  String? get notes;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of DatumGetScheduleTalent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumGetScheduleTalentImplCopyWith<_$DatumGetScheduleTalentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
