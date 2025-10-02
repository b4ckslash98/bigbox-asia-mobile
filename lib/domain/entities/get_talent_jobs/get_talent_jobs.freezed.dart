// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_talent_jobs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTalentJobsResponse _$GetTalentJobsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetTalentJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetTalentJobsResponse {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DatumGetTalentJobsResponse>? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetTalentJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetTalentJobsResponseCopyWith<GetTalentJobsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTalentJobsResponseCopyWith<$Res> {
  factory $GetTalentJobsResponseCopyWith(GetTalentJobsResponse value,
          $Res Function(GetTalentJobsResponse) then) =
      _$GetTalentJobsResponseCopyWithImpl<$Res, GetTalentJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetTalentJobsResponse>? data});
}

/// @nodoc
class _$GetTalentJobsResponseCopyWithImpl<$Res,
        $Val extends GetTalentJobsResponse>
    implements $GetTalentJobsResponseCopyWith<$Res> {
  _$GetTalentJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetTalentJobsResponse
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
              as List<DatumGetTalentJobsResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTalentJobsResponseImplCopyWith<$Res>
    implements $GetTalentJobsResponseCopyWith<$Res> {
  factory _$$GetTalentJobsResponseImplCopyWith(
          _$GetTalentJobsResponseImpl value,
          $Res Function(_$GetTalentJobsResponseImpl) then) =
      __$$GetTalentJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<DatumGetTalentJobsResponse>? data});
}

/// @nodoc
class __$$GetTalentJobsResponseImplCopyWithImpl<$Res>
    extends _$GetTalentJobsResponseCopyWithImpl<$Res,
        _$GetTalentJobsResponseImpl>
    implements _$$GetTalentJobsResponseImplCopyWith<$Res> {
  __$$GetTalentJobsResponseImplCopyWithImpl(_$GetTalentJobsResponseImpl _value,
      $Res Function(_$GetTalentJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetTalentJobsResponseImpl(
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
              as List<DatumGetTalentJobsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTalentJobsResponseImpl implements _GetTalentJobsResponse {
  const _$GetTalentJobsResponseImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<DatumGetTalentJobsResponse>? data})
      : _data = data;

  factory _$GetTalentJobsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTalentJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<DatumGetTalentJobsResponse>? _data;
  @override
  @JsonKey(name: 'data')
  List<DatumGetTalentJobsResponse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetTalentJobsResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTalentJobsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTalentJobsResponseImplCopyWith<_$GetTalentJobsResponseImpl>
      get copyWith => __$$GetTalentJobsResponseImplCopyWithImpl<
          _$GetTalentJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTalentJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetTalentJobsResponse implements GetTalentJobsResponse {
  const factory _GetTalentJobsResponse(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data')
          final List<DatumGetTalentJobsResponse>? data}) =
      _$GetTalentJobsResponseImpl;

  factory _GetTalentJobsResponse.fromJson(Map<String, dynamic> json) =
      _$GetTalentJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<DatumGetTalentJobsResponse>? get data;

  /// Create a copy of GetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTalentJobsResponseImplCopyWith<_$GetTalentJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DatumGetTalentJobsResponse _$DatumGetTalentJobsResponseFromJson(
    Map<String, dynamic> json) {
  return _DatumGetTalentJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$DatumGetTalentJobsResponse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_note')
  String? get statusNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  int? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_applications')
  int? get totalApplications => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversion_rate')
  int? get conversionRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'locations')
  List<LocationGetTalentJobsResponse>? get locations =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'locations_talent')
  List<LocationGetTalentJobsResponse>? get locationsTalent =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'schedules')
  List<ScheduleGetTalentJobsResponse>? get schedules =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_processes')
  List<ScheduleGetTalentJobsResponse>? get scheduleProcesses =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'roles')
  List<RoleGetTalentJobsResponse>? get roles =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'closed_questions')
  List<ClosedQuestionGetTalentJobsResponse>? get closedQuestions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_charge')
  List<dynamic>? get additionalCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'client')
  ClientGetTalentJobsResponse? get client => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<CategoryGetTalentJobsResponse>? get categories =>
      throw _privateConstructorUsedError;

  /// Serializes this DatumGetTalentJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatumGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumGetTalentJobsResponseCopyWith<DatumGetTalentJobsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumGetTalentJobsResponseCopyWith<$Res> {
  factory $DatumGetTalentJobsResponseCopyWith(DatumGetTalentJobsResponse value,
          $Res Function(DatumGetTalentJobsResponse) then) =
      _$DatumGetTalentJobsResponseCopyWithImpl<$Res,
          DatumGetTalentJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'status_note') String? statusNote,
      @JsonKey(name: 'views') int? views,
      @JsonKey(name: 'total_applications') int? totalApplications,
      @JsonKey(name: 'conversion_rate') int? conversionRate,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'locations')
      List<LocationGetTalentJobsResponse>? locations,
      @JsonKey(name: 'locations_talent')
      List<LocationGetTalentJobsResponse>? locationsTalent,
      @JsonKey(name: 'schedules')
      List<ScheduleGetTalentJobsResponse>? schedules,
      @JsonKey(name: 'schedule_processes')
      List<ScheduleGetTalentJobsResponse>? scheduleProcesses,
      @JsonKey(name: 'roles') List<RoleGetTalentJobsResponse>? roles,
      @JsonKey(name: 'closed_questions')
      List<ClosedQuestionGetTalentJobsResponse>? closedQuestions,
      @JsonKey(name: 'additional_charge') List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') ClientGetTalentJobsResponse? client,
      @JsonKey(name: 'categories')
      List<CategoryGetTalentJobsResponse>? categories});

  $ClientGetTalentJobsResponseCopyWith<$Res>? get client;
}

/// @nodoc
class _$DatumGetTalentJobsResponseCopyWithImpl<$Res,
        $Val extends DatumGetTalentJobsResponse>
    implements $DatumGetTalentJobsResponseCopyWith<$Res> {
  _$DatumGetTalentJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatumGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? statusNote = freezed,
    Object? views = freezed,
    Object? totalApplications = freezed,
    Object? conversionRate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? locations = freezed,
    Object? locationsTalent = freezed,
    Object? schedules = freezed,
    Object? scheduleProcesses = freezed,
    Object? roles = freezed,
    Object? closedQuestions = freezed,
    Object? additionalCharge = freezed,
    Object? client = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNote: freezed == statusNote
          ? _value.statusNote
          : statusNote // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      totalApplications: freezed == totalApplications
          ? _value.totalApplications
          : totalApplications // ignore: cast_nullable_to_non_nullable
              as int?,
      conversionRate: freezed == conversionRate
          ? _value.conversionRate
          : conversionRate // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationGetTalentJobsResponse>?,
      locationsTalent: freezed == locationsTalent
          ? _value.locationsTalent
          : locationsTalent // ignore: cast_nullable_to_non_nullable
              as List<LocationGetTalentJobsResponse>?,
      schedules: freezed == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleGetTalentJobsResponse>?,
      scheduleProcesses: freezed == scheduleProcesses
          ? _value.scheduleProcesses
          : scheduleProcesses // ignore: cast_nullable_to_non_nullable
              as List<ScheduleGetTalentJobsResponse>?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleGetTalentJobsResponse>?,
      closedQuestions: freezed == closedQuestions
          ? _value.closedQuestions
          : closedQuestions // ignore: cast_nullable_to_non_nullable
              as List<ClosedQuestionGetTalentJobsResponse>?,
      additionalCharge: freezed == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientGetTalentJobsResponse?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGetTalentJobsResponse>?,
    ) as $Val);
  }

  /// Create a copy of DatumGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientGetTalentJobsResponseCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $ClientGetTalentJobsResponseCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumGetTalentJobsResponseImplCopyWith<$Res>
    implements $DatumGetTalentJobsResponseCopyWith<$Res> {
  factory _$$DatumGetTalentJobsResponseImplCopyWith(
          _$DatumGetTalentJobsResponseImpl value,
          $Res Function(_$DatumGetTalentJobsResponseImpl) then) =
      __$$DatumGetTalentJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'status_note') String? statusNote,
      @JsonKey(name: 'views') int? views,
      @JsonKey(name: 'total_applications') int? totalApplications,
      @JsonKey(name: 'conversion_rate') int? conversionRate,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'locations')
      List<LocationGetTalentJobsResponse>? locations,
      @JsonKey(name: 'locations_talent')
      List<LocationGetTalentJobsResponse>? locationsTalent,
      @JsonKey(name: 'schedules')
      List<ScheduleGetTalentJobsResponse>? schedules,
      @JsonKey(name: 'schedule_processes')
      List<ScheduleGetTalentJobsResponse>? scheduleProcesses,
      @JsonKey(name: 'roles') List<RoleGetTalentJobsResponse>? roles,
      @JsonKey(name: 'closed_questions')
      List<ClosedQuestionGetTalentJobsResponse>? closedQuestions,
      @JsonKey(name: 'additional_charge') List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') ClientGetTalentJobsResponse? client,
      @JsonKey(name: 'categories')
      List<CategoryGetTalentJobsResponse>? categories});

  @override
  $ClientGetTalentJobsResponseCopyWith<$Res>? get client;
}

/// @nodoc
class __$$DatumGetTalentJobsResponseImplCopyWithImpl<$Res>
    extends _$DatumGetTalentJobsResponseCopyWithImpl<$Res,
        _$DatumGetTalentJobsResponseImpl>
    implements _$$DatumGetTalentJobsResponseImplCopyWith<$Res> {
  __$$DatumGetTalentJobsResponseImplCopyWithImpl(
      _$DatumGetTalentJobsResponseImpl _value,
      $Res Function(_$DatumGetTalentJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatumGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? statusNote = freezed,
    Object? views = freezed,
    Object? totalApplications = freezed,
    Object? conversionRate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? locations = freezed,
    Object? locationsTalent = freezed,
    Object? schedules = freezed,
    Object? scheduleProcesses = freezed,
    Object? roles = freezed,
    Object? closedQuestions = freezed,
    Object? additionalCharge = freezed,
    Object? client = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$DatumGetTalentJobsResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusNote: freezed == statusNote
          ? _value.statusNote
          : statusNote // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      totalApplications: freezed == totalApplications
          ? _value.totalApplications
          : totalApplications // ignore: cast_nullable_to_non_nullable
              as int?,
      conversionRate: freezed == conversionRate
          ? _value.conversionRate
          : conversionRate // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationGetTalentJobsResponse>?,
      locationsTalent: freezed == locationsTalent
          ? _value._locationsTalent
          : locationsTalent // ignore: cast_nullable_to_non_nullable
              as List<LocationGetTalentJobsResponse>?,
      schedules: freezed == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<ScheduleGetTalentJobsResponse>?,
      scheduleProcesses: freezed == scheduleProcesses
          ? _value._scheduleProcesses
          : scheduleProcesses // ignore: cast_nullable_to_non_nullable
              as List<ScheduleGetTalentJobsResponse>?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<RoleGetTalentJobsResponse>?,
      closedQuestions: freezed == closedQuestions
          ? _value._closedQuestions
          : closedQuestions // ignore: cast_nullable_to_non_nullable
              as List<ClosedQuestionGetTalentJobsResponse>?,
      additionalCharge: freezed == additionalCharge
          ? _value._additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientGetTalentJobsResponse?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGetTalentJobsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumGetTalentJobsResponseImpl implements _DatumGetTalentJobsResponse {
  const _$DatumGetTalentJobsResponseImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'status_note') this.statusNote,
      @JsonKey(name: 'views') this.views,
      @JsonKey(name: 'total_applications') this.totalApplications,
      @JsonKey(name: 'conversion_rate') this.conversionRate,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'locations')
      final List<LocationGetTalentJobsResponse>? locations,
      @JsonKey(name: 'locations_talent')
      final List<LocationGetTalentJobsResponse>? locationsTalent,
      @JsonKey(name: 'schedules')
      final List<ScheduleGetTalentJobsResponse>? schedules,
      @JsonKey(name: 'schedule_processes')
      final List<ScheduleGetTalentJobsResponse>? scheduleProcesses,
      @JsonKey(name: 'roles') final List<RoleGetTalentJobsResponse>? roles,
      @JsonKey(name: 'closed_questions')
      final List<ClosedQuestionGetTalentJobsResponse>? closedQuestions,
      @JsonKey(name: 'additional_charge') final List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') this.client,
      @JsonKey(name: 'categories')
      final List<CategoryGetTalentJobsResponse>? categories})
      : _locations = locations,
        _locationsTalent = locationsTalent,
        _schedules = schedules,
        _scheduleProcesses = scheduleProcesses,
        _roles = roles,
        _closedQuestions = closedQuestions,
        _additionalCharge = additionalCharge,
        _categories = categories;

  factory _$DatumGetTalentJobsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DatumGetTalentJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'status_note')
  final String? statusNote;
  @override
  @JsonKey(name: 'views')
  final int? views;
  @override
  @JsonKey(name: 'total_applications')
  final int? totalApplications;
  @override
  @JsonKey(name: 'conversion_rate')
  final int? conversionRate;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  final List<LocationGetTalentJobsResponse>? _locations;
  @override
  @JsonKey(name: 'locations')
  List<LocationGetTalentJobsResponse>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LocationGetTalentJobsResponse>? _locationsTalent;
  @override
  @JsonKey(name: 'locations_talent')
  List<LocationGetTalentJobsResponse>? get locationsTalent {
    final value = _locationsTalent;
    if (value == null) return null;
    if (_locationsTalent is EqualUnmodifiableListView) return _locationsTalent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ScheduleGetTalentJobsResponse>? _schedules;
  @override
  @JsonKey(name: 'schedules')
  List<ScheduleGetTalentJobsResponse>? get schedules {
    final value = _schedules;
    if (value == null) return null;
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ScheduleGetTalentJobsResponse>? _scheduleProcesses;
  @override
  @JsonKey(name: 'schedule_processes')
  List<ScheduleGetTalentJobsResponse>? get scheduleProcesses {
    final value = _scheduleProcesses;
    if (value == null) return null;
    if (_scheduleProcesses is EqualUnmodifiableListView)
      return _scheduleProcesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RoleGetTalentJobsResponse>? _roles;
  @override
  @JsonKey(name: 'roles')
  List<RoleGetTalentJobsResponse>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClosedQuestionGetTalentJobsResponse>? _closedQuestions;
  @override
  @JsonKey(name: 'closed_questions')
  List<ClosedQuestionGetTalentJobsResponse>? get closedQuestions {
    final value = _closedQuestions;
    if (value == null) return null;
    if (_closedQuestions is EqualUnmodifiableListView) return _closedQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _additionalCharge;
  @override
  @JsonKey(name: 'additional_charge')
  List<dynamic>? get additionalCharge {
    final value = _additionalCharge;
    if (value == null) return null;
    if (_additionalCharge is EqualUnmodifiableListView)
      return _additionalCharge;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'client')
  final ClientGetTalentJobsResponse? client;
  final List<CategoryGetTalentJobsResponse>? _categories;
  @override
  @JsonKey(name: 'categories')
  List<CategoryGetTalentJobsResponse>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DatumGetTalentJobsResponse(id: $id, title: $title, description: $description, status: $status, statusNote: $statusNote, views: $views, totalApplications: $totalApplications, conversionRate: $conversionRate, createdAt: $createdAt, updatedAt: $updatedAt, locations: $locations, locationsTalent: $locationsTalent, schedules: $schedules, scheduleProcesses: $scheduleProcesses, roles: $roles, closedQuestions: $closedQuestions, additionalCharge: $additionalCharge, client: $client, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumGetTalentJobsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusNote, statusNote) ||
                other.statusNote == statusNote) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.totalApplications, totalApplications) ||
                other.totalApplications == totalApplications) &&
            (identical(other.conversionRate, conversionRate) ||
                other.conversionRate == conversionRate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality()
                .equals(other._locationsTalent, _locationsTalent) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            const DeepCollectionEquality()
                .equals(other._scheduleProcesses, _scheduleProcesses) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._closedQuestions, _closedQuestions) &&
            const DeepCollectionEquality()
                .equals(other._additionalCharge, _additionalCharge) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        status,
        statusNote,
        views,
        totalApplications,
        conversionRate,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_locations),
        const DeepCollectionEquality().hash(_locationsTalent),
        const DeepCollectionEquality().hash(_schedules),
        const DeepCollectionEquality().hash(_scheduleProcesses),
        const DeepCollectionEquality().hash(_roles),
        const DeepCollectionEquality().hash(_closedQuestions),
        const DeepCollectionEquality().hash(_additionalCharge),
        client,
        const DeepCollectionEquality().hash(_categories)
      ]);

  /// Create a copy of DatumGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumGetTalentJobsResponseImplCopyWith<_$DatumGetTalentJobsResponseImpl>
      get copyWith => __$$DatumGetTalentJobsResponseImplCopyWithImpl<
          _$DatumGetTalentJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumGetTalentJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _DatumGetTalentJobsResponse
    implements DatumGetTalentJobsResponse {
  const factory _DatumGetTalentJobsResponse(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'status_note') final String? statusNote,
      @JsonKey(name: 'views') final int? views,
      @JsonKey(name: 'total_applications') final int? totalApplications,
      @JsonKey(name: 'conversion_rate') final int? conversionRate,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'locations')
      final List<LocationGetTalentJobsResponse>? locations,
      @JsonKey(name: 'locations_talent')
      final List<LocationGetTalentJobsResponse>? locationsTalent,
      @JsonKey(name: 'schedules')
      final List<ScheduleGetTalentJobsResponse>? schedules,
      @JsonKey(name: 'schedule_processes')
      final List<ScheduleGetTalentJobsResponse>? scheduleProcesses,
      @JsonKey(name: 'roles') final List<RoleGetTalentJobsResponse>? roles,
      @JsonKey(name: 'closed_questions')
      final List<ClosedQuestionGetTalentJobsResponse>? closedQuestions,
      @JsonKey(name: 'additional_charge') final List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') final ClientGetTalentJobsResponse? client,
      @JsonKey(name: 'categories')
      final List<CategoryGetTalentJobsResponse>?
          categories}) = _$DatumGetTalentJobsResponseImpl;

  factory _DatumGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =
      _$DatumGetTalentJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'status_note')
  String? get statusNote;
  @override
  @JsonKey(name: 'views')
  int? get views;
  @override
  @JsonKey(name: 'total_applications')
  int? get totalApplications;
  @override
  @JsonKey(name: 'conversion_rate')
  int? get conversionRate;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'locations')
  List<LocationGetTalentJobsResponse>? get locations;
  @override
  @JsonKey(name: 'locations_talent')
  List<LocationGetTalentJobsResponse>? get locationsTalent;
  @override
  @JsonKey(name: 'schedules')
  List<ScheduleGetTalentJobsResponse>? get schedules;
  @override
  @JsonKey(name: 'schedule_processes')
  List<ScheduleGetTalentJobsResponse>? get scheduleProcesses;
  @override
  @JsonKey(name: 'roles')
  List<RoleGetTalentJobsResponse>? get roles;
  @override
  @JsonKey(name: 'closed_questions')
  List<ClosedQuestionGetTalentJobsResponse>? get closedQuestions;
  @override
  @JsonKey(name: 'additional_charge')
  List<dynamic>? get additionalCharge;
  @override
  @JsonKey(name: 'client')
  ClientGetTalentJobsResponse? get client;
  @override
  @JsonKey(name: 'categories')
  List<CategoryGetTalentJobsResponse>? get categories;

  /// Create a copy of DatumGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumGetTalentJobsResponseImplCopyWith<_$DatumGetTalentJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationGetTalentJobsResponse _$LocationGetTalentJobsResponseFromJson(
    Map<String, dynamic> json) {
  return _LocationGetTalentJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationGetTalentJobsResponse {
  @JsonKey(name: 'location_id')
  String? get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_id')
  String? get jobId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationDetailGetTalentJobsResponse? get location =>
      throw _privateConstructorUsedError;

  /// Serializes this LocationGetTalentJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationGetTalentJobsResponseCopyWith<LocationGetTalentJobsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationGetTalentJobsResponseCopyWith<$Res> {
  factory $LocationGetTalentJobsResponseCopyWith(
          LocationGetTalentJobsResponse value,
          $Res Function(LocationGetTalentJobsResponse) then) =
      _$LocationGetTalentJobsResponseCopyWithImpl<$Res,
          LocationGetTalentJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'location_id') String? locationId,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId,
      @JsonKey(name: 'location')
      LocationDetailGetTalentJobsResponse? location});

  $LocationDetailGetTalentJobsResponseCopyWith<$Res>? get location;
}

/// @nodoc
class _$LocationGetTalentJobsResponseCopyWithImpl<$Res,
        $Val extends LocationGetTalentJobsResponse>
    implements $LocationGetTalentJobsResponseCopyWith<$Res> {
  _$LocationGetTalentJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = freezed,
    Object? notes = freezed,
    Object? id = freezed,
    Object? jobId = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDetailGetTalentJobsResponse?,
    ) as $Val);
  }

  /// Create a copy of LocationGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDetailGetTalentJobsResponseCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationDetailGetTalentJobsResponseCopyWith<$Res>(_value.location!,
        (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationGetTalentJobsResponseImplCopyWith<$Res>
    implements $LocationGetTalentJobsResponseCopyWith<$Res> {
  factory _$$LocationGetTalentJobsResponseImplCopyWith(
          _$LocationGetTalentJobsResponseImpl value,
          $Res Function(_$LocationGetTalentJobsResponseImpl) then) =
      __$$LocationGetTalentJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'location_id') String? locationId,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId,
      @JsonKey(name: 'location')
      LocationDetailGetTalentJobsResponse? location});

  @override
  $LocationDetailGetTalentJobsResponseCopyWith<$Res>? get location;
}

/// @nodoc
class __$$LocationGetTalentJobsResponseImplCopyWithImpl<$Res>
    extends _$LocationGetTalentJobsResponseCopyWithImpl<$Res,
        _$LocationGetTalentJobsResponseImpl>
    implements _$$LocationGetTalentJobsResponseImplCopyWith<$Res> {
  __$$LocationGetTalentJobsResponseImplCopyWithImpl(
      _$LocationGetTalentJobsResponseImpl _value,
      $Res Function(_$LocationGetTalentJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = freezed,
    Object? notes = freezed,
    Object? id = freezed,
    Object? jobId = freezed,
    Object? location = freezed,
  }) {
    return _then(_$LocationGetTalentJobsResponseImpl(
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDetailGetTalentJobsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationGetTalentJobsResponseImpl
    implements _LocationGetTalentJobsResponse {
  const _$LocationGetTalentJobsResponseImpl(
      {@JsonKey(name: 'location_id') this.locationId,
      @JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'job_id') this.jobId,
      @JsonKey(name: 'location') this.location});

  factory _$LocationGetTalentJobsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LocationGetTalentJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'location_id')
  final String? locationId;
  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'job_id')
  final String? jobId;
  @override
  @JsonKey(name: 'location')
  final LocationDetailGetTalentJobsResponse? location;

  @override
  String toString() {
    return 'LocationGetTalentJobsResponse(locationId: $locationId, notes: $notes, id: $id, jobId: $jobId, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationGetTalentJobsResponseImpl &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, locationId, notes, id, jobId, location);

  /// Create a copy of LocationGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationGetTalentJobsResponseImplCopyWith<
          _$LocationGetTalentJobsResponseImpl>
      get copyWith => __$$LocationGetTalentJobsResponseImplCopyWithImpl<
          _$LocationGetTalentJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationGetTalentJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _LocationGetTalentJobsResponse
    implements LocationGetTalentJobsResponse {
  const factory _LocationGetTalentJobsResponse(
          {@JsonKey(name: 'location_id') final String? locationId,
          @JsonKey(name: 'notes') final String? notes,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'job_id') final String? jobId,
          @JsonKey(name: 'location')
          final LocationDetailGetTalentJobsResponse? location}) =
      _$LocationGetTalentJobsResponseImpl;

  factory _LocationGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =
      _$LocationGetTalentJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'location_id')
  String? get locationId;
  @override
  @JsonKey(name: 'notes')
  String? get notes;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'job_id')
  String? get jobId;
  @override
  @JsonKey(name: 'location')
  LocationDetailGetTalentJobsResponse? get location;

  /// Create a copy of LocationGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationGetTalentJobsResponseImplCopyWith<
          _$LocationGetTalentJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationDetailGetTalentJobsResponse
    _$LocationDetailGetTalentJobsResponseFromJson(Map<String, dynamic> json) {
  return _LocationDetailGetTalentJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationDetailGetTalentJobsResponse {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this LocationDetailGetTalentJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationDetailGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDetailGetTalentJobsResponseCopyWith<
          LocationDetailGetTalentJobsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailGetTalentJobsResponseCopyWith<$Res> {
  factory $LocationDetailGetTalentJobsResponseCopyWith(
          LocationDetailGetTalentJobsResponse value,
          $Res Function(LocationDetailGetTalentJobsResponse) then) =
      _$LocationDetailGetTalentJobsResponseCopyWithImpl<$Res,
          LocationDetailGetTalentJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$LocationDetailGetTalentJobsResponseCopyWithImpl<$Res,
        $Val extends LocationDetailGetTalentJobsResponse>
    implements $LocationDetailGetTalentJobsResponseCopyWith<$Res> {
  _$LocationDetailGetTalentJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDetailGetTalentJobsResponse
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
abstract class _$$LocationDetailGetTalentJobsResponseImplCopyWith<$Res>
    implements $LocationDetailGetTalentJobsResponseCopyWith<$Res> {
  factory _$$LocationDetailGetTalentJobsResponseImplCopyWith(
          _$LocationDetailGetTalentJobsResponseImpl value,
          $Res Function(_$LocationDetailGetTalentJobsResponseImpl) then) =
      __$$LocationDetailGetTalentJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$LocationDetailGetTalentJobsResponseImplCopyWithImpl<$Res>
    extends _$LocationDetailGetTalentJobsResponseCopyWithImpl<$Res,
        _$LocationDetailGetTalentJobsResponseImpl>
    implements _$$LocationDetailGetTalentJobsResponseImplCopyWith<$Res> {
  __$$LocationDetailGetTalentJobsResponseImplCopyWithImpl(
      _$LocationDetailGetTalentJobsResponseImpl _value,
      $Res Function(_$LocationDetailGetTalentJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationDetailGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
  }) {
    return _then(_$LocationDetailGetTalentJobsResponseImpl(
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
class _$LocationDetailGetTalentJobsResponseImpl
    implements _LocationDetailGetTalentJobsResponse {
  const _$LocationDetailGetTalentJobsResponseImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'id') this.id});

  factory _$LocationDetailGetTalentJobsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LocationDetailGetTalentJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'LocationDetailGetTalentJobsResponse(name: $name, parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDetailGetTalentJobsResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, parentId, id);

  /// Create a copy of LocationDetailGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDetailGetTalentJobsResponseImplCopyWith<
          _$LocationDetailGetTalentJobsResponseImpl>
      get copyWith => __$$LocationDetailGetTalentJobsResponseImplCopyWithImpl<
          _$LocationDetailGetTalentJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDetailGetTalentJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _LocationDetailGetTalentJobsResponse
    implements LocationDetailGetTalentJobsResponse {
  const factory _LocationDetailGetTalentJobsResponse(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'parent_id') final String? parentId,
          @JsonKey(name: 'id') final String? id}) =
      _$LocationDetailGetTalentJobsResponseImpl;

  factory _LocationDetailGetTalentJobsResponse.fromJson(
          Map<String, dynamic> json) =
      _$LocationDetailGetTalentJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of LocationDetailGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDetailGetTalentJobsResponseImplCopyWith<
          _$LocationDetailGetTalentJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RoleGetTalentJobsResponse _$RoleGetTalentJobsResponseFromJson(
    Map<String, dynamic> json) {
  return _RoleGetTalentJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$RoleGetTalentJobsResponse {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_min')
  int? get ageMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_max')
  int? get ageMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_amount')
  String? get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_moderasi')
  String? get paymentModerasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String? get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_needed')
  int? get countNeeded => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_charges')
  List<AdditionalChargeGetTalentJobsResponse>? get additionalCharges =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_id')
  String? get jobId => throw _privateConstructorUsedError;

  /// Serializes this RoleGetTalentJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoleGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleGetTalentJobsResponseCopyWith<RoleGetTalentJobsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleGetTalentJobsResponseCopyWith<$Res> {
  factory $RoleGetTalentJobsResponseCopyWith(RoleGetTalentJobsResponse value,
          $Res Function(RoleGetTalentJobsResponse) then) =
      _$RoleGetTalentJobsResponseCopyWithImpl<$Res, RoleGetTalentJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'age_min') int? ageMin,
      @JsonKey(name: 'age_max') int? ageMax,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'payment_amount') String? paymentAmount,
      @JsonKey(name: 'payment_moderasi') String? paymentModerasi,
      @JsonKey(name: 'payment_type') String? paymentType,
      @JsonKey(name: 'count_needed') int? countNeeded,
      @JsonKey(name: 'additional_charges')
      List<AdditionalChargeGetTalentJobsResponse>? additionalCharges,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId});
}

/// @nodoc
class _$RoleGetTalentJobsResponseCopyWithImpl<$Res,
        $Val extends RoleGetTalentJobsResponse>
    implements $RoleGetTalentJobsResponseCopyWith<$Res> {
  _$RoleGetTalentJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? gender = freezed,
    Object? ageMin = freezed,
    Object? ageMax = freezed,
    Object? description = freezed,
    Object? paymentAmount = freezed,
    Object? paymentModerasi = freezed,
    Object? paymentType = freezed,
    Object? countNeeded = freezed,
    Object? additionalCharges = freezed,
    Object? id = freezed,
    Object? jobId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      ageMin: freezed == ageMin
          ? _value.ageMin
          : ageMin // ignore: cast_nullable_to_non_nullable
              as int?,
      ageMax: freezed == ageMax
          ? _value.ageMax
          : ageMax // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentAmount: freezed == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentModerasi: freezed == paymentModerasi
          ? _value.paymentModerasi
          : paymentModerasi // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      countNeeded: freezed == countNeeded
          ? _value.countNeeded
          : countNeeded // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalCharges: freezed == additionalCharges
          ? _value.additionalCharges
          : additionalCharges // ignore: cast_nullable_to_non_nullable
              as List<AdditionalChargeGetTalentJobsResponse>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleGetTalentJobsResponseImplCopyWith<$Res>
    implements $RoleGetTalentJobsResponseCopyWith<$Res> {
  factory _$$RoleGetTalentJobsResponseImplCopyWith(
          _$RoleGetTalentJobsResponseImpl value,
          $Res Function(_$RoleGetTalentJobsResponseImpl) then) =
      __$$RoleGetTalentJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'age_min') int? ageMin,
      @JsonKey(name: 'age_max') int? ageMax,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'payment_amount') String? paymentAmount,
      @JsonKey(name: 'payment_moderasi') String? paymentModerasi,
      @JsonKey(name: 'payment_type') String? paymentType,
      @JsonKey(name: 'count_needed') int? countNeeded,
      @JsonKey(name: 'additional_charges')
      List<AdditionalChargeGetTalentJobsResponse>? additionalCharges,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId});
}

/// @nodoc
class __$$RoleGetTalentJobsResponseImplCopyWithImpl<$Res>
    extends _$RoleGetTalentJobsResponseCopyWithImpl<$Res,
        _$RoleGetTalentJobsResponseImpl>
    implements _$$RoleGetTalentJobsResponseImplCopyWith<$Res> {
  __$$RoleGetTalentJobsResponseImplCopyWithImpl(
      _$RoleGetTalentJobsResponseImpl _value,
      $Res Function(_$RoleGetTalentJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoleGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? gender = freezed,
    Object? ageMin = freezed,
    Object? ageMax = freezed,
    Object? description = freezed,
    Object? paymentAmount = freezed,
    Object? paymentModerasi = freezed,
    Object? paymentType = freezed,
    Object? countNeeded = freezed,
    Object? additionalCharges = freezed,
    Object? id = freezed,
    Object? jobId = freezed,
  }) {
    return _then(_$RoleGetTalentJobsResponseImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      ageMin: freezed == ageMin
          ? _value.ageMin
          : ageMin // ignore: cast_nullable_to_non_nullable
              as int?,
      ageMax: freezed == ageMax
          ? _value.ageMax
          : ageMax // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentAmount: freezed == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentModerasi: freezed == paymentModerasi
          ? _value.paymentModerasi
          : paymentModerasi // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      countNeeded: freezed == countNeeded
          ? _value.countNeeded
          : countNeeded // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalCharges: freezed == additionalCharges
          ? _value._additionalCharges
          : additionalCharges // ignore: cast_nullable_to_non_nullable
              as List<AdditionalChargeGetTalentJobsResponse>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleGetTalentJobsResponseImpl implements _RoleGetTalentJobsResponse {
  const _$RoleGetTalentJobsResponseImpl(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'age_min') this.ageMin,
      @JsonKey(name: 'age_max') this.ageMax,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'payment_amount') this.paymentAmount,
      @JsonKey(name: 'payment_moderasi') this.paymentModerasi,
      @JsonKey(name: 'payment_type') this.paymentType,
      @JsonKey(name: 'count_needed') this.countNeeded,
      @JsonKey(name: 'additional_charges')
      final List<AdditionalChargeGetTalentJobsResponse>? additionalCharges,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'job_id') this.jobId})
      : _additionalCharges = additionalCharges;

  factory _$RoleGetTalentJobsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleGetTalentJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'age_min')
  final int? ageMin;
  @override
  @JsonKey(name: 'age_max')
  final int? ageMax;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'payment_amount')
  final String? paymentAmount;
  @override
  @JsonKey(name: 'payment_moderasi')
  final String? paymentModerasi;
  @override
  @JsonKey(name: 'payment_type')
  final String? paymentType;
  @override
  @JsonKey(name: 'count_needed')
  final int? countNeeded;
  final List<AdditionalChargeGetTalentJobsResponse>? _additionalCharges;
  @override
  @JsonKey(name: 'additional_charges')
  List<AdditionalChargeGetTalentJobsResponse>? get additionalCharges {
    final value = _additionalCharges;
    if (value == null) return null;
    if (_additionalCharges is EqualUnmodifiableListView)
      return _additionalCharges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'job_id')
  final String? jobId;

  @override
  String toString() {
    return 'RoleGetTalentJobsResponse(title: $title, gender: $gender, ageMin: $ageMin, ageMax: $ageMax, description: $description, paymentAmount: $paymentAmount, paymentModerasi: $paymentModerasi, paymentType: $paymentType, countNeeded: $countNeeded, additionalCharges: $additionalCharges, id: $id, jobId: $jobId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleGetTalentJobsResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.ageMin, ageMin) || other.ageMin == ageMin) &&
            (identical(other.ageMax, ageMax) || other.ageMax == ageMax) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentModerasi, paymentModerasi) ||
                other.paymentModerasi == paymentModerasi) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.countNeeded, countNeeded) ||
                other.countNeeded == countNeeded) &&
            const DeepCollectionEquality()
                .equals(other._additionalCharges, _additionalCharges) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jobId, jobId) || other.jobId == jobId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      gender,
      ageMin,
      ageMax,
      description,
      paymentAmount,
      paymentModerasi,
      paymentType,
      countNeeded,
      const DeepCollectionEquality().hash(_additionalCharges),
      id,
      jobId);

  /// Create a copy of RoleGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleGetTalentJobsResponseImplCopyWith<_$RoleGetTalentJobsResponseImpl>
      get copyWith => __$$RoleGetTalentJobsResponseImplCopyWithImpl<
          _$RoleGetTalentJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleGetTalentJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _RoleGetTalentJobsResponse implements RoleGetTalentJobsResponse {
  const factory _RoleGetTalentJobsResponse(
          {@JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'gender') final String? gender,
          @JsonKey(name: 'age_min') final int? ageMin,
          @JsonKey(name: 'age_max') final int? ageMax,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'payment_amount') final String? paymentAmount,
          @JsonKey(name: 'payment_moderasi') final String? paymentModerasi,
          @JsonKey(name: 'payment_type') final String? paymentType,
          @JsonKey(name: 'count_needed') final int? countNeeded,
          @JsonKey(name: 'additional_charges')
          final List<AdditionalChargeGetTalentJobsResponse>? additionalCharges,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'job_id') final String? jobId}) =
      _$RoleGetTalentJobsResponseImpl;

  factory _RoleGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =
      _$RoleGetTalentJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'age_min')
  int? get ageMin;
  @override
  @JsonKey(name: 'age_max')
  int? get ageMax;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'payment_amount')
  String? get paymentAmount;
  @override
  @JsonKey(name: 'payment_moderasi')
  String? get paymentModerasi;
  @override
  @JsonKey(name: 'payment_type')
  String? get paymentType;
  @override
  @JsonKey(name: 'count_needed')
  int? get countNeeded;
  @override
  @JsonKey(name: 'additional_charges')
  List<AdditionalChargeGetTalentJobsResponse>? get additionalCharges;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'job_id')
  String? get jobId;

  /// Create a copy of RoleGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleGetTalentJobsResponseImplCopyWith<_$RoleGetTalentJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdditionalChargeGetTalentJobsResponse
    _$AdditionalChargeGetTalentJobsResponseFromJson(Map<String, dynamic> json) {
  return _AdditionalChargeGetTalentJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$AdditionalChargeGetTalentJobsResponse {
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;

  /// Serializes this AdditionalChargeGetTalentJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdditionalChargeGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdditionalChargeGetTalentJobsResponseCopyWith<
          AdditionalChargeGetTalentJobsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalChargeGetTalentJobsResponseCopyWith<$Res> {
  factory $AdditionalChargeGetTalentJobsResponseCopyWith(
          AdditionalChargeGetTalentJobsResponse value,
          $Res Function(AdditionalChargeGetTalentJobsResponse) then) =
      _$AdditionalChargeGetTalentJobsResponseCopyWithImpl<$Res,
          AdditionalChargeGetTalentJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
      @JsonKey(name: 'amount') String? amount});
}

/// @nodoc
class _$AdditionalChargeGetTalentJobsResponseCopyWithImpl<$Res,
        $Val extends AdditionalChargeGetTalentJobsResponse>
    implements $AdditionalChargeGetTalentJobsResponseCopyWith<$Res> {
  _$AdditionalChargeGetTalentJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdditionalChargeGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalChargeGetTalentJobsResponseImplCopyWith<$Res>
    implements $AdditionalChargeGetTalentJobsResponseCopyWith<$Res> {
  factory _$$AdditionalChargeGetTalentJobsResponseImplCopyWith(
          _$AdditionalChargeGetTalentJobsResponseImpl value,
          $Res Function(_$AdditionalChargeGetTalentJobsResponseImpl) then) =
      __$$AdditionalChargeGetTalentJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
      @JsonKey(name: 'amount') String? amount});
}

/// @nodoc
class __$$AdditionalChargeGetTalentJobsResponseImplCopyWithImpl<$Res>
    extends _$AdditionalChargeGetTalentJobsResponseCopyWithImpl<$Res,
        _$AdditionalChargeGetTalentJobsResponseImpl>
    implements _$$AdditionalChargeGetTalentJobsResponseImplCopyWith<$Res> {
  __$$AdditionalChargeGetTalentJobsResponseImplCopyWithImpl(
      _$AdditionalChargeGetTalentJobsResponseImpl _value,
      $Res Function(_$AdditionalChargeGetTalentJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalChargeGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$AdditionalChargeGetTalentJobsResponseImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalChargeGetTalentJobsResponseImpl
    implements _AdditionalChargeGetTalentJobsResponse {
  const _$AdditionalChargeGetTalentJobsResponseImpl(
      {@JsonKey(name: 'description') this.description,
      @JsonKey(name: 'amount') this.amount});

  factory _$AdditionalChargeGetTalentJobsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdditionalChargeGetTalentJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'amount')
  final String? amount;

  @override
  String toString() {
    return 'AdditionalChargeGetTalentJobsResponse(description: $description, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalChargeGetTalentJobsResponseImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, amount);

  /// Create a copy of AdditionalChargeGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalChargeGetTalentJobsResponseImplCopyWith<
          _$AdditionalChargeGetTalentJobsResponseImpl>
      get copyWith => __$$AdditionalChargeGetTalentJobsResponseImplCopyWithImpl<
          _$AdditionalChargeGetTalentJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalChargeGetTalentJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _AdditionalChargeGetTalentJobsResponse
    implements AdditionalChargeGetTalentJobsResponse {
  const factory _AdditionalChargeGetTalentJobsResponse(
          {@JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'amount') final String? amount}) =
      _$AdditionalChargeGetTalentJobsResponseImpl;

  factory _AdditionalChargeGetTalentJobsResponse.fromJson(
          Map<String, dynamic> json) =
      _$AdditionalChargeGetTalentJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'amount')
  String? get amount;

  /// Create a copy of AdditionalChargeGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdditionalChargeGetTalentJobsResponseImplCopyWith<
          _$AdditionalChargeGetTalentJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ScheduleGetTalentJobsResponse _$ScheduleGetTalentJobsResponseFromJson(
    Map<String, dynamic> json) {
  return _ScheduleGetTalentJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$ScheduleGetTalentJobsResponse {
  @JsonKey(name: 'schedule_type')
  String? get scheduleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  DateTime? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  DateTime? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_id')
  String? get jobId => throw _privateConstructorUsedError;

  /// Serializes this ScheduleGetTalentJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleGetTalentJobsResponseCopyWith<ScheduleGetTalentJobsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleGetTalentJobsResponseCopyWith<$Res> {
  factory $ScheduleGetTalentJobsResponseCopyWith(
          ScheduleGetTalentJobsResponse value,
          $Res Function(ScheduleGetTalentJobsResponse) then) =
      _$ScheduleGetTalentJobsResponseCopyWithImpl<$Res,
          ScheduleGetTalentJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'schedule_type') String? scheduleType,
      @JsonKey(name: 'start_time') DateTime? startTime,
      @JsonKey(name: 'end_time') DateTime? endTime,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId});
}

/// @nodoc
class _$ScheduleGetTalentJobsResponseCopyWithImpl<$Res,
        $Val extends ScheduleGetTalentJobsResponse>
    implements $ScheduleGetTalentJobsResponseCopyWith<$Res> {
  _$ScheduleGetTalentJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleType = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? notes = freezed,
    Object? id = freezed,
    Object? jobId = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleType: freezed == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleGetTalentJobsResponseImplCopyWith<$Res>
    implements $ScheduleGetTalentJobsResponseCopyWith<$Res> {
  factory _$$ScheduleGetTalentJobsResponseImplCopyWith(
          _$ScheduleGetTalentJobsResponseImpl value,
          $Res Function(_$ScheduleGetTalentJobsResponseImpl) then) =
      __$$ScheduleGetTalentJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'schedule_type') String? scheduleType,
      @JsonKey(name: 'start_time') DateTime? startTime,
      @JsonKey(name: 'end_time') DateTime? endTime,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId});
}

/// @nodoc
class __$$ScheduleGetTalentJobsResponseImplCopyWithImpl<$Res>
    extends _$ScheduleGetTalentJobsResponseCopyWithImpl<$Res,
        _$ScheduleGetTalentJobsResponseImpl>
    implements _$$ScheduleGetTalentJobsResponseImplCopyWith<$Res> {
  __$$ScheduleGetTalentJobsResponseImplCopyWithImpl(
      _$ScheduleGetTalentJobsResponseImpl _value,
      $Res Function(_$ScheduleGetTalentJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleType = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? notes = freezed,
    Object? id = freezed,
    Object? jobId = freezed,
  }) {
    return _then(_$ScheduleGetTalentJobsResponseImpl(
      scheduleType: freezed == scheduleType
          ? _value.scheduleType
          : scheduleType // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleGetTalentJobsResponseImpl
    implements _ScheduleGetTalentJobsResponse {
  const _$ScheduleGetTalentJobsResponseImpl(
      {@JsonKey(name: 'schedule_type') this.scheduleType,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'job_id') this.jobId});

  factory _$ScheduleGetTalentJobsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScheduleGetTalentJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'schedule_type')
  final String? scheduleType;
  @override
  @JsonKey(name: 'start_time')
  final DateTime? startTime;
  @override
  @JsonKey(name: 'end_time')
  final DateTime? endTime;
  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'job_id')
  final String? jobId;

  @override
  String toString() {
    return 'ScheduleGetTalentJobsResponse(scheduleType: $scheduleType, startTime: $startTime, endTime: $endTime, notes: $notes, id: $id, jobId: $jobId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleGetTalentJobsResponseImpl &&
            (identical(other.scheduleType, scheduleType) ||
                other.scheduleType == scheduleType) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jobId, jobId) || other.jobId == jobId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, scheduleType, startTime, endTime, notes, id, jobId);

  /// Create a copy of ScheduleGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleGetTalentJobsResponseImplCopyWith<
          _$ScheduleGetTalentJobsResponseImpl>
      get copyWith => __$$ScheduleGetTalentJobsResponseImplCopyWithImpl<
          _$ScheduleGetTalentJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleGetTalentJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _ScheduleGetTalentJobsResponse
    implements ScheduleGetTalentJobsResponse {
  const factory _ScheduleGetTalentJobsResponse(
          {@JsonKey(name: 'schedule_type') final String? scheduleType,
          @JsonKey(name: 'start_time') final DateTime? startTime,
          @JsonKey(name: 'end_time') final DateTime? endTime,
          @JsonKey(name: 'notes') final String? notes,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'job_id') final String? jobId}) =
      _$ScheduleGetTalentJobsResponseImpl;

  factory _ScheduleGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =
      _$ScheduleGetTalentJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'schedule_type')
  String? get scheduleType;
  @override
  @JsonKey(name: 'start_time')
  DateTime? get startTime;
  @override
  @JsonKey(name: 'end_time')
  DateTime? get endTime;
  @override
  @JsonKey(name: 'notes')
  String? get notes;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'job_id')
  String? get jobId;

  /// Create a copy of ScheduleGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleGetTalentJobsResponseImplCopyWith<
          _$ScheduleGetTalentJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClosedQuestionGetTalentJobsResponse
    _$ClosedQuestionGetTalentJobsResponseFromJson(Map<String, dynamic> json) {
  return _ClosedQuestionGetTalentJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$ClosedQuestionGetTalentJobsResponse {
  @JsonKey(name: 'question')
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'yes_or_no_question')
  bool? get yesOrNoQuestion => throw _privateConstructorUsedError;

  /// Serializes this ClosedQuestionGetTalentJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClosedQuestionGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClosedQuestionGetTalentJobsResponseCopyWith<
          ClosedQuestionGetTalentJobsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClosedQuestionGetTalentJobsResponseCopyWith<$Res> {
  factory $ClosedQuestionGetTalentJobsResponseCopyWith(
          ClosedQuestionGetTalentJobsResponse value,
          $Res Function(ClosedQuestionGetTalentJobsResponse) then) =
      _$ClosedQuestionGetTalentJobsResponseCopyWithImpl<$Res,
          ClosedQuestionGetTalentJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question') String? question,
      @JsonKey(name: 'yes_or_no_question') bool? yesOrNoQuestion});
}

/// @nodoc
class _$ClosedQuestionGetTalentJobsResponseCopyWithImpl<$Res,
        $Val extends ClosedQuestionGetTalentJobsResponse>
    implements $ClosedQuestionGetTalentJobsResponseCopyWith<$Res> {
  _$ClosedQuestionGetTalentJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClosedQuestionGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? yesOrNoQuestion = freezed,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      yesOrNoQuestion: freezed == yesOrNoQuestion
          ? _value.yesOrNoQuestion
          : yesOrNoQuestion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClosedQuestionGetTalentJobsResponseImplCopyWith<$Res>
    implements $ClosedQuestionGetTalentJobsResponseCopyWith<$Res> {
  factory _$$ClosedQuestionGetTalentJobsResponseImplCopyWith(
          _$ClosedQuestionGetTalentJobsResponseImpl value,
          $Res Function(_$ClosedQuestionGetTalentJobsResponseImpl) then) =
      __$$ClosedQuestionGetTalentJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question') String? question,
      @JsonKey(name: 'yes_or_no_question') bool? yesOrNoQuestion});
}

/// @nodoc
class __$$ClosedQuestionGetTalentJobsResponseImplCopyWithImpl<$Res>
    extends _$ClosedQuestionGetTalentJobsResponseCopyWithImpl<$Res,
        _$ClosedQuestionGetTalentJobsResponseImpl>
    implements _$$ClosedQuestionGetTalentJobsResponseImplCopyWith<$Res> {
  __$$ClosedQuestionGetTalentJobsResponseImplCopyWithImpl(
      _$ClosedQuestionGetTalentJobsResponseImpl _value,
      $Res Function(_$ClosedQuestionGetTalentJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClosedQuestionGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? yesOrNoQuestion = freezed,
  }) {
    return _then(_$ClosedQuestionGetTalentJobsResponseImpl(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      yesOrNoQuestion: freezed == yesOrNoQuestion
          ? _value.yesOrNoQuestion
          : yesOrNoQuestion // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClosedQuestionGetTalentJobsResponseImpl
    implements _ClosedQuestionGetTalentJobsResponse {
  const _$ClosedQuestionGetTalentJobsResponseImpl(
      {@JsonKey(name: 'question') this.question,
      @JsonKey(name: 'yes_or_no_question') this.yesOrNoQuestion});

  factory _$ClosedQuestionGetTalentJobsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClosedQuestionGetTalentJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'question')
  final String? question;
  @override
  @JsonKey(name: 'yes_or_no_question')
  final bool? yesOrNoQuestion;

  @override
  String toString() {
    return 'ClosedQuestionGetTalentJobsResponse(question: $question, yesOrNoQuestion: $yesOrNoQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClosedQuestionGetTalentJobsResponseImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.yesOrNoQuestion, yesOrNoQuestion) ||
                other.yesOrNoQuestion == yesOrNoQuestion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, question, yesOrNoQuestion);

  /// Create a copy of ClosedQuestionGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClosedQuestionGetTalentJobsResponseImplCopyWith<
          _$ClosedQuestionGetTalentJobsResponseImpl>
      get copyWith => __$$ClosedQuestionGetTalentJobsResponseImplCopyWithImpl<
          _$ClosedQuestionGetTalentJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClosedQuestionGetTalentJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _ClosedQuestionGetTalentJobsResponse
    implements ClosedQuestionGetTalentJobsResponse {
  const factory _ClosedQuestionGetTalentJobsResponse(
          {@JsonKey(name: 'question') final String? question,
          @JsonKey(name: 'yes_or_no_question') final bool? yesOrNoQuestion}) =
      _$ClosedQuestionGetTalentJobsResponseImpl;

  factory _ClosedQuestionGetTalentJobsResponse.fromJson(
          Map<String, dynamic> json) =
      _$ClosedQuestionGetTalentJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'question')
  String? get question;
  @override
  @JsonKey(name: 'yes_or_no_question')
  bool? get yesOrNoQuestion;

  /// Create a copy of ClosedQuestionGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClosedQuestionGetTalentJobsResponseImplCopyWith<
          _$ClosedQuestionGetTalentJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientGetTalentJobsResponse _$ClientGetTalentJobsResponseFromJson(
    Map<String, dynamic> json) {
  return _ClientGetTalentJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$ClientGetTalentJobsResponse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this ClientGetTalentJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientGetTalentJobsResponseCopyWith<ClientGetTalentJobsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientGetTalentJobsResponseCopyWith<$Res> {
  factory $ClientGetTalentJobsResponseCopyWith(
          ClientGetTalentJobsResponse value,
          $Res Function(ClientGetTalentJobsResponse) then) =
      _$ClientGetTalentJobsResponseCopyWithImpl<$Res,
          ClientGetTalentJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$ClientGetTalentJobsResponseCopyWithImpl<$Res,
        $Val extends ClientGetTalentJobsResponse>
    implements $ClientGetTalentJobsResponseCopyWith<$Res> {
  _$ClientGetTalentJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientGetTalentJobsResponseImplCopyWith<$Res>
    implements $ClientGetTalentJobsResponseCopyWith<$Res> {
  factory _$$ClientGetTalentJobsResponseImplCopyWith(
          _$ClientGetTalentJobsResponseImpl value,
          $Res Function(_$ClientGetTalentJobsResponseImpl) then) =
      __$$ClientGetTalentJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$ClientGetTalentJobsResponseImplCopyWithImpl<$Res>
    extends _$ClientGetTalentJobsResponseCopyWithImpl<$Res,
        _$ClientGetTalentJobsResponseImpl>
    implements _$$ClientGetTalentJobsResponseImplCopyWith<$Res> {
  __$$ClientGetTalentJobsResponseImplCopyWithImpl(
      _$ClientGetTalentJobsResponseImpl _value,
      $Res Function(_$ClientGetTalentJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_$ClientGetTalentJobsResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientGetTalentJobsResponseImpl
    implements _ClientGetTalentJobsResponse {
  const _$ClientGetTalentJobsResponseImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'email') this.email});

  factory _$ClientGetTalentJobsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientGetTalentJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'ClientGetTalentJobsResponse(id: $id, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientGetTalentJobsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  /// Create a copy of ClientGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientGetTalentJobsResponseImplCopyWith<_$ClientGetTalentJobsResponseImpl>
      get copyWith => __$$ClientGetTalentJobsResponseImplCopyWithImpl<
          _$ClientGetTalentJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientGetTalentJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _ClientGetTalentJobsResponse
    implements ClientGetTalentJobsResponse {
  const factory _ClientGetTalentJobsResponse(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'email') final String? email}) =
      _$ClientGetTalentJobsResponseImpl;

  factory _ClientGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =
      _$ClientGetTalentJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'email')
  String? get email;

  /// Create a copy of ClientGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientGetTalentJobsResponseImplCopyWith<_$ClientGetTalentJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryGetTalentJobsResponse _$CategoryGetTalentJobsResponseFromJson(
    Map<String, dynamic> json) {
  return _CategoryGetTalentJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryGetTalentJobsResponse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this CategoryGetTalentJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryGetTalentJobsResponseCopyWith<CategoryGetTalentJobsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryGetTalentJobsResponseCopyWith<$Res> {
  factory $CategoryGetTalentJobsResponseCopyWith(
          CategoryGetTalentJobsResponse value,
          $Res Function(CategoryGetTalentJobsResponse) then) =
      _$CategoryGetTalentJobsResponseCopyWithImpl<$Res,
          CategoryGetTalentJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$CategoryGetTalentJobsResponseCopyWithImpl<$Res,
        $Val extends CategoryGetTalentJobsResponse>
    implements $CategoryGetTalentJobsResponseCopyWith<$Res> {
  _$CategoryGetTalentJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryGetTalentJobsResponseImplCopyWith<$Res>
    implements $CategoryGetTalentJobsResponseCopyWith<$Res> {
  factory _$$CategoryGetTalentJobsResponseImplCopyWith(
          _$CategoryGetTalentJobsResponseImpl value,
          $Res Function(_$CategoryGetTalentJobsResponseImpl) then) =
      __$$CategoryGetTalentJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$CategoryGetTalentJobsResponseImplCopyWithImpl<$Res>
    extends _$CategoryGetTalentJobsResponseCopyWithImpl<$Res,
        _$CategoryGetTalentJobsResponseImpl>
    implements _$$CategoryGetTalentJobsResponseImplCopyWith<$Res> {
  __$$CategoryGetTalentJobsResponseImplCopyWithImpl(
      _$CategoryGetTalentJobsResponseImpl _value,
      $Res Function(_$CategoryGetTalentJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CategoryGetTalentJobsResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryGetTalentJobsResponseImpl
    implements _CategoryGetTalentJobsResponse {
  const _$CategoryGetTalentJobsResponseImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$CategoryGetTalentJobsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CategoryGetTalentJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'CategoryGetTalentJobsResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryGetTalentJobsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CategoryGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryGetTalentJobsResponseImplCopyWith<
          _$CategoryGetTalentJobsResponseImpl>
      get copyWith => __$$CategoryGetTalentJobsResponseImplCopyWithImpl<
          _$CategoryGetTalentJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryGetTalentJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryGetTalentJobsResponse
    implements CategoryGetTalentJobsResponse {
  const factory _CategoryGetTalentJobsResponse(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'name') final String? name}) =
      _$CategoryGetTalentJobsResponseImpl;

  factory _CategoryGetTalentJobsResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryGetTalentJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of CategoryGetTalentJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryGetTalentJobsResponseImplCopyWith<
          _$CategoryGetTalentJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
