// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_client_detail_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDetailJobsResponse _$GetDetailJobsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetDetailJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetDetailJobsResponse {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  GetDetailJobsResponseData? get data => throw _privateConstructorUsedError;

  /// Serializes this GetDetailJobsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDetailJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDetailJobsResponseCopyWith<GetDetailJobsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailJobsResponseCopyWith<$Res> {
  factory $GetDetailJobsResponseCopyWith(GetDetailJobsResponse value,
          $Res Function(GetDetailJobsResponse) then) =
      _$GetDetailJobsResponseCopyWithImpl<$Res, GetDetailJobsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') GetDetailJobsResponseData? data});

  $GetDetailJobsResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetDetailJobsResponseCopyWithImpl<$Res,
        $Val extends GetDetailJobsResponse>
    implements $GetDetailJobsResponseCopyWith<$Res> {
  _$GetDetailJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDetailJobsResponse
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
              as GetDetailJobsResponseData?,
    ) as $Val);
  }

  /// Create a copy of GetDetailJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetDetailJobsResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetDetailJobsResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetDetailJobsResponseImplCopyWith<$Res>
    implements $GetDetailJobsResponseCopyWith<$Res> {
  factory _$$GetDetailJobsResponseImplCopyWith(
          _$GetDetailJobsResponseImpl value,
          $Res Function(_$GetDetailJobsResponseImpl) then) =
      __$$GetDetailJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') GetDetailJobsResponseData? data});

  @override
  $GetDetailJobsResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetDetailJobsResponseImplCopyWithImpl<$Res>
    extends _$GetDetailJobsResponseCopyWithImpl<$Res,
        _$GetDetailJobsResponseImpl>
    implements _$$GetDetailJobsResponseImplCopyWith<$Res> {
  __$$GetDetailJobsResponseImplCopyWithImpl(_$GetDetailJobsResponseImpl _value,
      $Res Function(_$GetDetailJobsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDetailJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetDetailJobsResponseImpl(
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
              as GetDetailJobsResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDetailJobsResponseImpl implements _GetDetailJobsResponse {
  const _$GetDetailJobsResponseImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$GetDetailJobsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDetailJobsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final GetDetailJobsResponseData? data;

  @override
  String toString() {
    return 'GetDetailJobsResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailJobsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetDetailJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailJobsResponseImplCopyWith<_$GetDetailJobsResponseImpl>
      get copyWith => __$$GetDetailJobsResponseImplCopyWithImpl<
          _$GetDetailJobsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetDetailJobsResponse implements GetDetailJobsResponse {
  const factory _GetDetailJobsResponse(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final GetDetailJobsResponseData? data}) =
      _$GetDetailJobsResponseImpl;

  factory _GetDetailJobsResponse.fromJson(Map<String, dynamic> json) =
      _$GetDetailJobsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  GetDetailJobsResponseData? get data;

  /// Create a copy of GetDetailJobsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailJobsResponseImplCopyWith<_$GetDetailJobsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDetailJobsResponseData _$GetDetailJobsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _GetDetailJobsResponseData.fromJson(json);
}

/// @nodoc
mixin _$GetDetailJobsResponseData {
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
  List<GetDetailJobsResponseLocationElement>? get locations =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'locations_talent')
  List<GetDetailJobsResponseLocationElement>? get locationsTalent =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'schedules')
  List<GetDetailJobsResponseSchedule>? get schedules =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_processes')
  List<GetDetailJobsResponseSchedule>? get scheduleProcesses =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'roles')
  List<GetDetailJobsResponseRole>? get roles =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'closed_questions')
  List<GetDetailJobsResponseClosedQuestion>? get closedQuestions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_charge')
  List<dynamic>? get additionalCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'client')
  GetDetailJobsResponseClient? get client => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<GetDetailJobsResponseCategory>? get categories =>
      throw _privateConstructorUsedError;

  /// Serializes this GetDetailJobsResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDetailJobsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDetailJobsResponseDataCopyWith<GetDetailJobsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailJobsResponseDataCopyWith<$Res> {
  factory $GetDetailJobsResponseDataCopyWith(GetDetailJobsResponseData value,
          $Res Function(GetDetailJobsResponseData) then) =
      _$GetDetailJobsResponseDataCopyWithImpl<$Res, GetDetailJobsResponseData>;
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
      List<GetDetailJobsResponseLocationElement>? locations,
      @JsonKey(name: 'locations_talent')
      List<GetDetailJobsResponseLocationElement>? locationsTalent,
      @JsonKey(name: 'schedules')
      List<GetDetailJobsResponseSchedule>? schedules,
      @JsonKey(name: 'schedule_processes')
      List<GetDetailJobsResponseSchedule>? scheduleProcesses,
      @JsonKey(name: 'roles') List<GetDetailJobsResponseRole>? roles,
      @JsonKey(name: 'closed_questions')
      List<GetDetailJobsResponseClosedQuestion>? closedQuestions,
      @JsonKey(name: 'additional_charge') List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') GetDetailJobsResponseClient? client,
      @JsonKey(name: 'categories')
      List<GetDetailJobsResponseCategory>? categories});

  $GetDetailJobsResponseClientCopyWith<$Res>? get client;
}

/// @nodoc
class _$GetDetailJobsResponseDataCopyWithImpl<$Res,
        $Val extends GetDetailJobsResponseData>
    implements $GetDetailJobsResponseDataCopyWith<$Res> {
  _$GetDetailJobsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDetailJobsResponseData
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
              as List<GetDetailJobsResponseLocationElement>?,
      locationsTalent: freezed == locationsTalent
          ? _value.locationsTalent
          : locationsTalent // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseLocationElement>?,
      schedules: freezed == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseSchedule>?,
      scheduleProcesses: freezed == scheduleProcesses
          ? _value.scheduleProcesses
          : scheduleProcesses // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseSchedule>?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseRole>?,
      closedQuestions: freezed == closedQuestions
          ? _value.closedQuestions
          : closedQuestions // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseClosedQuestion>?,
      additionalCharge: freezed == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as GetDetailJobsResponseClient?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseCategory>?,
    ) as $Val);
  }

  /// Create a copy of GetDetailJobsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetDetailJobsResponseClientCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $GetDetailJobsResponseClientCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetDetailJobsResponseDataImplCopyWith<$Res>
    implements $GetDetailJobsResponseDataCopyWith<$Res> {
  factory _$$GetDetailJobsResponseDataImplCopyWith(
          _$GetDetailJobsResponseDataImpl value,
          $Res Function(_$GetDetailJobsResponseDataImpl) then) =
      __$$GetDetailJobsResponseDataImplCopyWithImpl<$Res>;
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
      List<GetDetailJobsResponseLocationElement>? locations,
      @JsonKey(name: 'locations_talent')
      List<GetDetailJobsResponseLocationElement>? locationsTalent,
      @JsonKey(name: 'schedules')
      List<GetDetailJobsResponseSchedule>? schedules,
      @JsonKey(name: 'schedule_processes')
      List<GetDetailJobsResponseSchedule>? scheduleProcesses,
      @JsonKey(name: 'roles') List<GetDetailJobsResponseRole>? roles,
      @JsonKey(name: 'closed_questions')
      List<GetDetailJobsResponseClosedQuestion>? closedQuestions,
      @JsonKey(name: 'additional_charge') List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') GetDetailJobsResponseClient? client,
      @JsonKey(name: 'categories')
      List<GetDetailJobsResponseCategory>? categories});

  @override
  $GetDetailJobsResponseClientCopyWith<$Res>? get client;
}

/// @nodoc
class __$$GetDetailJobsResponseDataImplCopyWithImpl<$Res>
    extends _$GetDetailJobsResponseDataCopyWithImpl<$Res,
        _$GetDetailJobsResponseDataImpl>
    implements _$$GetDetailJobsResponseDataImplCopyWith<$Res> {
  __$$GetDetailJobsResponseDataImplCopyWithImpl(
      _$GetDetailJobsResponseDataImpl _value,
      $Res Function(_$GetDetailJobsResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDetailJobsResponseData
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
    return _then(_$GetDetailJobsResponseDataImpl(
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
              as List<GetDetailJobsResponseLocationElement>?,
      locationsTalent: freezed == locationsTalent
          ? _value._locationsTalent
          : locationsTalent // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseLocationElement>?,
      schedules: freezed == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseSchedule>?,
      scheduleProcesses: freezed == scheduleProcesses
          ? _value._scheduleProcesses
          : scheduleProcesses // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseSchedule>?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseRole>?,
      closedQuestions: freezed == closedQuestions
          ? _value._closedQuestions
          : closedQuestions // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseClosedQuestion>?,
      additionalCharge: freezed == additionalCharge
          ? _value._additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as GetDetailJobsResponseClient?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GetDetailJobsResponseCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDetailJobsResponseDataImpl implements _GetDetailJobsResponseData {
  const _$GetDetailJobsResponseDataImpl(
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
      final List<GetDetailJobsResponseLocationElement>? locations,
      @JsonKey(name: 'locations_talent')
      final List<GetDetailJobsResponseLocationElement>? locationsTalent,
      @JsonKey(name: 'schedules')
      final List<GetDetailJobsResponseSchedule>? schedules,
      @JsonKey(name: 'schedule_processes')
      final List<GetDetailJobsResponseSchedule>? scheduleProcesses,
      @JsonKey(name: 'roles') final List<GetDetailJobsResponseRole>? roles,
      @JsonKey(name: 'closed_questions')
      final List<GetDetailJobsResponseClosedQuestion>? closedQuestions,
      @JsonKey(name: 'additional_charge') final List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') this.client,
      @JsonKey(name: 'categories')
      final List<GetDetailJobsResponseCategory>? categories})
      : _locations = locations,
        _locationsTalent = locationsTalent,
        _schedules = schedules,
        _scheduleProcesses = scheduleProcesses,
        _roles = roles,
        _closedQuestions = closedQuestions,
        _additionalCharge = additionalCharge,
        _categories = categories;

  factory _$GetDetailJobsResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDetailJobsResponseDataImplFromJson(json);

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
  final List<GetDetailJobsResponseLocationElement>? _locations;
  @override
  @JsonKey(name: 'locations')
  List<GetDetailJobsResponseLocationElement>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetDetailJobsResponseLocationElement>? _locationsTalent;
  @override
  @JsonKey(name: 'locations_talent')
  List<GetDetailJobsResponseLocationElement>? get locationsTalent {
    final value = _locationsTalent;
    if (value == null) return null;
    if (_locationsTalent is EqualUnmodifiableListView) return _locationsTalent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetDetailJobsResponseSchedule>? _schedules;
  @override
  @JsonKey(name: 'schedules')
  List<GetDetailJobsResponseSchedule>? get schedules {
    final value = _schedules;
    if (value == null) return null;
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetDetailJobsResponseSchedule>? _scheduleProcesses;
  @override
  @JsonKey(name: 'schedule_processes')
  List<GetDetailJobsResponseSchedule>? get scheduleProcesses {
    final value = _scheduleProcesses;
    if (value == null) return null;
    if (_scheduleProcesses is EqualUnmodifiableListView)
      return _scheduleProcesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetDetailJobsResponseRole>? _roles;
  @override
  @JsonKey(name: 'roles')
  List<GetDetailJobsResponseRole>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetDetailJobsResponseClosedQuestion>? _closedQuestions;
  @override
  @JsonKey(name: 'closed_questions')
  List<GetDetailJobsResponseClosedQuestion>? get closedQuestions {
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
  final GetDetailJobsResponseClient? client;
  final List<GetDetailJobsResponseCategory>? _categories;
  @override
  @JsonKey(name: 'categories')
  List<GetDetailJobsResponseCategory>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetDetailJobsResponseData(id: $id, title: $title, description: $description, status: $status, statusNote: $statusNote, views: $views, totalApplications: $totalApplications, conversionRate: $conversionRate, createdAt: $createdAt, updatedAt: $updatedAt, locations: $locations, locationsTalent: $locationsTalent, schedules: $schedules, scheduleProcesses: $scheduleProcesses, roles: $roles, closedQuestions: $closedQuestions, additionalCharge: $additionalCharge, client: $client, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailJobsResponseDataImpl &&
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

  /// Create a copy of GetDetailJobsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailJobsResponseDataImplCopyWith<_$GetDetailJobsResponseDataImpl>
      get copyWith => __$$GetDetailJobsResponseDataImplCopyWithImpl<
          _$GetDetailJobsResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailJobsResponseDataImplToJson(
      this,
    );
  }
}

abstract class _GetDetailJobsResponseData implements GetDetailJobsResponseData {
  const factory _GetDetailJobsResponseData(
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
      final List<GetDetailJobsResponseLocationElement>? locations,
      @JsonKey(name: 'locations_talent')
      final List<GetDetailJobsResponseLocationElement>? locationsTalent,
      @JsonKey(name: 'schedules')
      final List<GetDetailJobsResponseSchedule>? schedules,
      @JsonKey(name: 'schedule_processes')
      final List<GetDetailJobsResponseSchedule>? scheduleProcesses,
      @JsonKey(name: 'roles') final List<GetDetailJobsResponseRole>? roles,
      @JsonKey(name: 'closed_questions')
      final List<GetDetailJobsResponseClosedQuestion>? closedQuestions,
      @JsonKey(name: 'additional_charge') final List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') final GetDetailJobsResponseClient? client,
      @JsonKey(name: 'categories')
      final List<GetDetailJobsResponseCategory>?
          categories}) = _$GetDetailJobsResponseDataImpl;

  factory _GetDetailJobsResponseData.fromJson(Map<String, dynamic> json) =
      _$GetDetailJobsResponseDataImpl.fromJson;

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
  List<GetDetailJobsResponseLocationElement>? get locations;
  @override
  @JsonKey(name: 'locations_talent')
  List<GetDetailJobsResponseLocationElement>? get locationsTalent;
  @override
  @JsonKey(name: 'schedules')
  List<GetDetailJobsResponseSchedule>? get schedules;
  @override
  @JsonKey(name: 'schedule_processes')
  List<GetDetailJobsResponseSchedule>? get scheduleProcesses;
  @override
  @JsonKey(name: 'roles')
  List<GetDetailJobsResponseRole>? get roles;
  @override
  @JsonKey(name: 'closed_questions')
  List<GetDetailJobsResponseClosedQuestion>? get closedQuestions;
  @override
  @JsonKey(name: 'additional_charge')
  List<dynamic>? get additionalCharge;
  @override
  @JsonKey(name: 'client')
  GetDetailJobsResponseClient? get client;
  @override
  @JsonKey(name: 'categories')
  List<GetDetailJobsResponseCategory>? get categories;

  /// Create a copy of GetDetailJobsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailJobsResponseDataImplCopyWith<_$GetDetailJobsResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDetailJobsResponseCategory _$GetDetailJobsResponseCategoryFromJson(
    Map<String, dynamic> json) {
  return _GetDetailJobsResponseCategory.fromJson(json);
}

/// @nodoc
mixin _$GetDetailJobsResponseCategory {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this GetDetailJobsResponseCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDetailJobsResponseCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDetailJobsResponseCategoryCopyWith<GetDetailJobsResponseCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailJobsResponseCategoryCopyWith<$Res> {
  factory $GetDetailJobsResponseCategoryCopyWith(
          GetDetailJobsResponseCategory value,
          $Res Function(GetDetailJobsResponseCategory) then) =
      _$GetDetailJobsResponseCategoryCopyWithImpl<$Res,
          GetDetailJobsResponseCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$GetDetailJobsResponseCategoryCopyWithImpl<$Res,
        $Val extends GetDetailJobsResponseCategory>
    implements $GetDetailJobsResponseCategoryCopyWith<$Res> {
  _$GetDetailJobsResponseCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDetailJobsResponseCategory
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
abstract class _$$GetDetailJobsResponseCategoryImplCopyWith<$Res>
    implements $GetDetailJobsResponseCategoryCopyWith<$Res> {
  factory _$$GetDetailJobsResponseCategoryImplCopyWith(
          _$GetDetailJobsResponseCategoryImpl value,
          $Res Function(_$GetDetailJobsResponseCategoryImpl) then) =
      __$$GetDetailJobsResponseCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$GetDetailJobsResponseCategoryImplCopyWithImpl<$Res>
    extends _$GetDetailJobsResponseCategoryCopyWithImpl<$Res,
        _$GetDetailJobsResponseCategoryImpl>
    implements _$$GetDetailJobsResponseCategoryImplCopyWith<$Res> {
  __$$GetDetailJobsResponseCategoryImplCopyWithImpl(
      _$GetDetailJobsResponseCategoryImpl _value,
      $Res Function(_$GetDetailJobsResponseCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDetailJobsResponseCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$GetDetailJobsResponseCategoryImpl(
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
class _$GetDetailJobsResponseCategoryImpl
    implements _GetDetailJobsResponseCategory {
  const _$GetDetailJobsResponseCategoryImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$GetDetailJobsResponseCategoryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetDetailJobsResponseCategoryImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'GetDetailJobsResponseCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailJobsResponseCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GetDetailJobsResponseCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailJobsResponseCategoryImplCopyWith<
          _$GetDetailJobsResponseCategoryImpl>
      get copyWith => __$$GetDetailJobsResponseCategoryImplCopyWithImpl<
          _$GetDetailJobsResponseCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailJobsResponseCategoryImplToJson(
      this,
    );
  }
}

abstract class _GetDetailJobsResponseCategory
    implements GetDetailJobsResponseCategory {
  const factory _GetDetailJobsResponseCategory(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'name') final String? name}) =
      _$GetDetailJobsResponseCategoryImpl;

  factory _GetDetailJobsResponseCategory.fromJson(Map<String, dynamic> json) =
      _$GetDetailJobsResponseCategoryImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of GetDetailJobsResponseCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailJobsResponseCategoryImplCopyWith<
          _$GetDetailJobsResponseCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDetailJobsResponseClient _$GetDetailJobsResponseClientFromJson(
    Map<String, dynamic> json) {
  return _GetDetailJobsResponseClient.fromJson(json);
}

/// @nodoc
mixin _$GetDetailJobsResponseClient {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this GetDetailJobsResponseClient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDetailJobsResponseClient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDetailJobsResponseClientCopyWith<GetDetailJobsResponseClient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailJobsResponseClientCopyWith<$Res> {
  factory $GetDetailJobsResponseClientCopyWith(
          GetDetailJobsResponseClient value,
          $Res Function(GetDetailJobsResponseClient) then) =
      _$GetDetailJobsResponseClientCopyWithImpl<$Res,
          GetDetailJobsResponseClient>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$GetDetailJobsResponseClientCopyWithImpl<$Res,
        $Val extends GetDetailJobsResponseClient>
    implements $GetDetailJobsResponseClientCopyWith<$Res> {
  _$GetDetailJobsResponseClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDetailJobsResponseClient
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
abstract class _$$GetDetailJobsResponseClientImplCopyWith<$Res>
    implements $GetDetailJobsResponseClientCopyWith<$Res> {
  factory _$$GetDetailJobsResponseClientImplCopyWith(
          _$GetDetailJobsResponseClientImpl value,
          $Res Function(_$GetDetailJobsResponseClientImpl) then) =
      __$$GetDetailJobsResponseClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$GetDetailJobsResponseClientImplCopyWithImpl<$Res>
    extends _$GetDetailJobsResponseClientCopyWithImpl<$Res,
        _$GetDetailJobsResponseClientImpl>
    implements _$$GetDetailJobsResponseClientImplCopyWith<$Res> {
  __$$GetDetailJobsResponseClientImplCopyWithImpl(
      _$GetDetailJobsResponseClientImpl _value,
      $Res Function(_$GetDetailJobsResponseClientImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDetailJobsResponseClient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_$GetDetailJobsResponseClientImpl(
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
class _$GetDetailJobsResponseClientImpl
    implements _GetDetailJobsResponseClient {
  const _$GetDetailJobsResponseClientImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'email') this.email});

  factory _$GetDetailJobsResponseClientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetDetailJobsResponseClientImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'GetDetailJobsResponseClient(id: $id, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailJobsResponseClientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  /// Create a copy of GetDetailJobsResponseClient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailJobsResponseClientImplCopyWith<_$GetDetailJobsResponseClientImpl>
      get copyWith => __$$GetDetailJobsResponseClientImplCopyWithImpl<
          _$GetDetailJobsResponseClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailJobsResponseClientImplToJson(
      this,
    );
  }
}

abstract class _GetDetailJobsResponseClient
    implements GetDetailJobsResponseClient {
  const factory _GetDetailJobsResponseClient(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'email') final String? email}) =
      _$GetDetailJobsResponseClientImpl;

  factory _GetDetailJobsResponseClient.fromJson(Map<String, dynamic> json) =
      _$GetDetailJobsResponseClientImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'email')
  String? get email;

  /// Create a copy of GetDetailJobsResponseClient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailJobsResponseClientImplCopyWith<_$GetDetailJobsResponseClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDetailJobsResponseClosedQuestion
    _$GetDetailJobsResponseClosedQuestionFromJson(Map<String, dynamic> json) {
  return _GetDetailJobsResponseClosedQuestion.fromJson(json);
}

/// @nodoc
mixin _$GetDetailJobsResponseClosedQuestion {
  @JsonKey(name: 'question')
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'yes_or_no_question')
  bool? get yesOrNoQuestion => throw _privateConstructorUsedError;

  /// Serializes this GetDetailJobsResponseClosedQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDetailJobsResponseClosedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDetailJobsResponseClosedQuestionCopyWith<
          GetDetailJobsResponseClosedQuestion>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailJobsResponseClosedQuestionCopyWith<$Res> {
  factory $GetDetailJobsResponseClosedQuestionCopyWith(
          GetDetailJobsResponseClosedQuestion value,
          $Res Function(GetDetailJobsResponseClosedQuestion) then) =
      _$GetDetailJobsResponseClosedQuestionCopyWithImpl<$Res,
          GetDetailJobsResponseClosedQuestion>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question') String? question,
      @JsonKey(name: 'yes_or_no_question') bool? yesOrNoQuestion});
}

/// @nodoc
class _$GetDetailJobsResponseClosedQuestionCopyWithImpl<$Res,
        $Val extends GetDetailJobsResponseClosedQuestion>
    implements $GetDetailJobsResponseClosedQuestionCopyWith<$Res> {
  _$GetDetailJobsResponseClosedQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDetailJobsResponseClosedQuestion
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
abstract class _$$GetDetailJobsResponseClosedQuestionImplCopyWith<$Res>
    implements $GetDetailJobsResponseClosedQuestionCopyWith<$Res> {
  factory _$$GetDetailJobsResponseClosedQuestionImplCopyWith(
          _$GetDetailJobsResponseClosedQuestionImpl value,
          $Res Function(_$GetDetailJobsResponseClosedQuestionImpl) then) =
      __$$GetDetailJobsResponseClosedQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question') String? question,
      @JsonKey(name: 'yes_or_no_question') bool? yesOrNoQuestion});
}

/// @nodoc
class __$$GetDetailJobsResponseClosedQuestionImplCopyWithImpl<$Res>
    extends _$GetDetailJobsResponseClosedQuestionCopyWithImpl<$Res,
        _$GetDetailJobsResponseClosedQuestionImpl>
    implements _$$GetDetailJobsResponseClosedQuestionImplCopyWith<$Res> {
  __$$GetDetailJobsResponseClosedQuestionImplCopyWithImpl(
      _$GetDetailJobsResponseClosedQuestionImpl _value,
      $Res Function(_$GetDetailJobsResponseClosedQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDetailJobsResponseClosedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? yesOrNoQuestion = freezed,
  }) {
    return _then(_$GetDetailJobsResponseClosedQuestionImpl(
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
class _$GetDetailJobsResponseClosedQuestionImpl
    implements _GetDetailJobsResponseClosedQuestion {
  const _$GetDetailJobsResponseClosedQuestionImpl(
      {@JsonKey(name: 'question') this.question,
      @JsonKey(name: 'yes_or_no_question') this.yesOrNoQuestion});

  factory _$GetDetailJobsResponseClosedQuestionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetDetailJobsResponseClosedQuestionImplFromJson(json);

  @override
  @JsonKey(name: 'question')
  final String? question;
  @override
  @JsonKey(name: 'yes_or_no_question')
  final bool? yesOrNoQuestion;

  @override
  String toString() {
    return 'GetDetailJobsResponseClosedQuestion(question: $question, yesOrNoQuestion: $yesOrNoQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailJobsResponseClosedQuestionImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.yesOrNoQuestion, yesOrNoQuestion) ||
                other.yesOrNoQuestion == yesOrNoQuestion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, question, yesOrNoQuestion);

  /// Create a copy of GetDetailJobsResponseClosedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailJobsResponseClosedQuestionImplCopyWith<
          _$GetDetailJobsResponseClosedQuestionImpl>
      get copyWith => __$$GetDetailJobsResponseClosedQuestionImplCopyWithImpl<
          _$GetDetailJobsResponseClosedQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailJobsResponseClosedQuestionImplToJson(
      this,
    );
  }
}

abstract class _GetDetailJobsResponseClosedQuestion
    implements GetDetailJobsResponseClosedQuestion {
  const factory _GetDetailJobsResponseClosedQuestion(
          {@JsonKey(name: 'question') final String? question,
          @JsonKey(name: 'yes_or_no_question') final bool? yesOrNoQuestion}) =
      _$GetDetailJobsResponseClosedQuestionImpl;

  factory _GetDetailJobsResponseClosedQuestion.fromJson(
          Map<String, dynamic> json) =
      _$GetDetailJobsResponseClosedQuestionImpl.fromJson;

  @override
  @JsonKey(name: 'question')
  String? get question;
  @override
  @JsonKey(name: 'yes_or_no_question')
  bool? get yesOrNoQuestion;

  /// Create a copy of GetDetailJobsResponseClosedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailJobsResponseClosedQuestionImplCopyWith<
          _$GetDetailJobsResponseClosedQuestionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDetailJobsResponseLocationElement
    _$GetDetailJobsResponseLocationElementFromJson(Map<String, dynamic> json) {
  return _GetDetailJobsResponseLocationElement.fromJson(json);
}

/// @nodoc
mixin _$GetDetailJobsResponseLocationElement {
  @JsonKey(name: 'location_id')
  String? get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_id')
  String? get jobId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  GetDetailJobsResponseLocationLocation? get location =>
      throw _privateConstructorUsedError;

  /// Serializes this GetDetailJobsResponseLocationElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDetailJobsResponseLocationElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDetailJobsResponseLocationElementCopyWith<
          GetDetailJobsResponseLocationElement>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailJobsResponseLocationElementCopyWith<$Res> {
  factory $GetDetailJobsResponseLocationElementCopyWith(
          GetDetailJobsResponseLocationElement value,
          $Res Function(GetDetailJobsResponseLocationElement) then) =
      _$GetDetailJobsResponseLocationElementCopyWithImpl<$Res,
          GetDetailJobsResponseLocationElement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'location_id') String? locationId,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId,
      @JsonKey(name: 'location')
      GetDetailJobsResponseLocationLocation? location});

  $GetDetailJobsResponseLocationLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$GetDetailJobsResponseLocationElementCopyWithImpl<$Res,
        $Val extends GetDetailJobsResponseLocationElement>
    implements $GetDetailJobsResponseLocationElementCopyWith<$Res> {
  _$GetDetailJobsResponseLocationElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDetailJobsResponseLocationElement
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
              as GetDetailJobsResponseLocationLocation?,
    ) as $Val);
  }

  /// Create a copy of GetDetailJobsResponseLocationElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetDetailJobsResponseLocationLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $GetDetailJobsResponseLocationLocationCopyWith<$Res>(
        _value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetDetailJobsResponseLocationElementImplCopyWith<$Res>
    implements $GetDetailJobsResponseLocationElementCopyWith<$Res> {
  factory _$$GetDetailJobsResponseLocationElementImplCopyWith(
          _$GetDetailJobsResponseLocationElementImpl value,
          $Res Function(_$GetDetailJobsResponseLocationElementImpl) then) =
      __$$GetDetailJobsResponseLocationElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'location_id') String? locationId,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId,
      @JsonKey(name: 'location')
      GetDetailJobsResponseLocationLocation? location});

  @override
  $GetDetailJobsResponseLocationLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$GetDetailJobsResponseLocationElementImplCopyWithImpl<$Res>
    extends _$GetDetailJobsResponseLocationElementCopyWithImpl<$Res,
        _$GetDetailJobsResponseLocationElementImpl>
    implements _$$GetDetailJobsResponseLocationElementImplCopyWith<$Res> {
  __$$GetDetailJobsResponseLocationElementImplCopyWithImpl(
      _$GetDetailJobsResponseLocationElementImpl _value,
      $Res Function(_$GetDetailJobsResponseLocationElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDetailJobsResponseLocationElement
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
    return _then(_$GetDetailJobsResponseLocationElementImpl(
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
              as GetDetailJobsResponseLocationLocation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDetailJobsResponseLocationElementImpl
    implements _GetDetailJobsResponseLocationElement {
  const _$GetDetailJobsResponseLocationElementImpl(
      {@JsonKey(name: 'location_id') this.locationId,
      @JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'job_id') this.jobId,
      @JsonKey(name: 'location') this.location});

  factory _$GetDetailJobsResponseLocationElementImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetDetailJobsResponseLocationElementImplFromJson(json);

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
  final GetDetailJobsResponseLocationLocation? location;

  @override
  String toString() {
    return 'GetDetailJobsResponseLocationElement(locationId: $locationId, notes: $notes, id: $id, jobId: $jobId, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailJobsResponseLocationElementImpl &&
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

  /// Create a copy of GetDetailJobsResponseLocationElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailJobsResponseLocationElementImplCopyWith<
          _$GetDetailJobsResponseLocationElementImpl>
      get copyWith => __$$GetDetailJobsResponseLocationElementImplCopyWithImpl<
          _$GetDetailJobsResponseLocationElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailJobsResponseLocationElementImplToJson(
      this,
    );
  }
}

abstract class _GetDetailJobsResponseLocationElement
    implements GetDetailJobsResponseLocationElement {
  const factory _GetDetailJobsResponseLocationElement(
          {@JsonKey(name: 'location_id') final String? locationId,
          @JsonKey(name: 'notes') final String? notes,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'job_id') final String? jobId,
          @JsonKey(name: 'location')
          final GetDetailJobsResponseLocationLocation? location}) =
      _$GetDetailJobsResponseLocationElementImpl;

  factory _GetDetailJobsResponseLocationElement.fromJson(
          Map<String, dynamic> json) =
      _$GetDetailJobsResponseLocationElementImpl.fromJson;

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
  GetDetailJobsResponseLocationLocation? get location;

  /// Create a copy of GetDetailJobsResponseLocationElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailJobsResponseLocationElementImplCopyWith<
          _$GetDetailJobsResponseLocationElementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDetailJobsResponseLocationLocation
    _$GetDetailJobsResponseLocationLocationFromJson(Map<String, dynamic> json) {
  return _GetDetailJobsResponseLocationLocation.fromJson(json);
}

/// @nodoc
mixin _$GetDetailJobsResponseLocationLocation {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  dynamic get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this GetDetailJobsResponseLocationLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDetailJobsResponseLocationLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDetailJobsResponseLocationLocationCopyWith<
          GetDetailJobsResponseLocationLocation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailJobsResponseLocationLocationCopyWith<$Res> {
  factory $GetDetailJobsResponseLocationLocationCopyWith(
          GetDetailJobsResponseLocationLocation value,
          $Res Function(GetDetailJobsResponseLocationLocation) then) =
      _$GetDetailJobsResponseLocationLocationCopyWithImpl<$Res,
          GetDetailJobsResponseLocationLocation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') dynamic parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$GetDetailJobsResponseLocationLocationCopyWithImpl<$Res,
        $Val extends GetDetailJobsResponseLocationLocation>
    implements $GetDetailJobsResponseLocationLocationCopyWith<$Res> {
  _$GetDetailJobsResponseLocationLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDetailJobsResponseLocationLocation
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
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDetailJobsResponseLocationLocationImplCopyWith<$Res>
    implements $GetDetailJobsResponseLocationLocationCopyWith<$Res> {
  factory _$$GetDetailJobsResponseLocationLocationImplCopyWith(
          _$GetDetailJobsResponseLocationLocationImpl value,
          $Res Function(_$GetDetailJobsResponseLocationLocationImpl) then) =
      __$$GetDetailJobsResponseLocationLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') dynamic parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$GetDetailJobsResponseLocationLocationImplCopyWithImpl<$Res>
    extends _$GetDetailJobsResponseLocationLocationCopyWithImpl<$Res,
        _$GetDetailJobsResponseLocationLocationImpl>
    implements _$$GetDetailJobsResponseLocationLocationImplCopyWith<$Res> {
  __$$GetDetailJobsResponseLocationLocationImplCopyWithImpl(
      _$GetDetailJobsResponseLocationLocationImpl _value,
      $Res Function(_$GetDetailJobsResponseLocationLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDetailJobsResponseLocationLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
  }) {
    return _then(_$GetDetailJobsResponseLocationLocationImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDetailJobsResponseLocationLocationImpl
    implements _GetDetailJobsResponseLocationLocation {
  const _$GetDetailJobsResponseLocationLocationImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'id') this.id});

  factory _$GetDetailJobsResponseLocationLocationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetDetailJobsResponseLocationLocationImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'parent_id')
  final dynamic parentId;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'GetDetailJobsResponseLocationLocation(name: $name, parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailJobsResponseLocationLocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(parentId), id);

  /// Create a copy of GetDetailJobsResponseLocationLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailJobsResponseLocationLocationImplCopyWith<
          _$GetDetailJobsResponseLocationLocationImpl>
      get copyWith => __$$GetDetailJobsResponseLocationLocationImplCopyWithImpl<
          _$GetDetailJobsResponseLocationLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailJobsResponseLocationLocationImplToJson(
      this,
    );
  }
}

abstract class _GetDetailJobsResponseLocationLocation
    implements GetDetailJobsResponseLocationLocation {
  const factory _GetDetailJobsResponseLocationLocation(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'parent_id') final dynamic parentId,
          @JsonKey(name: 'id') final String? id}) =
      _$GetDetailJobsResponseLocationLocationImpl;

  factory _GetDetailJobsResponseLocationLocation.fromJson(
          Map<String, dynamic> json) =
      _$GetDetailJobsResponseLocationLocationImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'parent_id')
  dynamic get parentId;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of GetDetailJobsResponseLocationLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailJobsResponseLocationLocationImplCopyWith<
          _$GetDetailJobsResponseLocationLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDetailJobsResponseRole _$GetDetailJobsResponseRoleFromJson(
    Map<String, dynamic> json) {
  return _GetDetailJobsResponseRole.fromJson(json);
}

/// @nodoc
mixin _$GetDetailJobsResponseRole {
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
  List<dynamic>? get additionalCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_id')
  String? get jobId => throw _privateConstructorUsedError;

  /// Serializes this GetDetailJobsResponseRole to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDetailJobsResponseRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDetailJobsResponseRoleCopyWith<GetDetailJobsResponseRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailJobsResponseRoleCopyWith<$Res> {
  factory $GetDetailJobsResponseRoleCopyWith(GetDetailJobsResponseRole value,
          $Res Function(GetDetailJobsResponseRole) then) =
      _$GetDetailJobsResponseRoleCopyWithImpl<$Res, GetDetailJobsResponseRole>;
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
      @JsonKey(name: 'additional_charges') List<dynamic>? additionalCharges,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId});
}

/// @nodoc
class _$GetDetailJobsResponseRoleCopyWithImpl<$Res,
        $Val extends GetDetailJobsResponseRole>
    implements $GetDetailJobsResponseRoleCopyWith<$Res> {
  _$GetDetailJobsResponseRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDetailJobsResponseRole
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
              as List<dynamic>?,
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
abstract class _$$GetDetailJobsResponseRoleImplCopyWith<$Res>
    implements $GetDetailJobsResponseRoleCopyWith<$Res> {
  factory _$$GetDetailJobsResponseRoleImplCopyWith(
          _$GetDetailJobsResponseRoleImpl value,
          $Res Function(_$GetDetailJobsResponseRoleImpl) then) =
      __$$GetDetailJobsResponseRoleImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'additional_charges') List<dynamic>? additionalCharges,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId});
}

/// @nodoc
class __$$GetDetailJobsResponseRoleImplCopyWithImpl<$Res>
    extends _$GetDetailJobsResponseRoleCopyWithImpl<$Res,
        _$GetDetailJobsResponseRoleImpl>
    implements _$$GetDetailJobsResponseRoleImplCopyWith<$Res> {
  __$$GetDetailJobsResponseRoleImplCopyWithImpl(
      _$GetDetailJobsResponseRoleImpl _value,
      $Res Function(_$GetDetailJobsResponseRoleImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDetailJobsResponseRole
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
    return _then(_$GetDetailJobsResponseRoleImpl(
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
              as List<dynamic>?,
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
class _$GetDetailJobsResponseRoleImpl implements _GetDetailJobsResponseRole {
  const _$GetDetailJobsResponseRoleImpl(
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
      final List<dynamic>? additionalCharges,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'job_id') this.jobId})
      : _additionalCharges = additionalCharges;

  factory _$GetDetailJobsResponseRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDetailJobsResponseRoleImplFromJson(json);

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
  final List<dynamic>? _additionalCharges;
  @override
  @JsonKey(name: 'additional_charges')
  List<dynamic>? get additionalCharges {
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
    return 'GetDetailJobsResponseRole(title: $title, gender: $gender, ageMin: $ageMin, ageMax: $ageMax, description: $description, paymentAmount: $paymentAmount, paymentModerasi: $paymentModerasi, paymentType: $paymentType, countNeeded: $countNeeded, additionalCharges: $additionalCharges, id: $id, jobId: $jobId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailJobsResponseRoleImpl &&
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

  /// Create a copy of GetDetailJobsResponseRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailJobsResponseRoleImplCopyWith<_$GetDetailJobsResponseRoleImpl>
      get copyWith => __$$GetDetailJobsResponseRoleImplCopyWithImpl<
          _$GetDetailJobsResponseRoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailJobsResponseRoleImplToJson(
      this,
    );
  }
}

abstract class _GetDetailJobsResponseRole implements GetDetailJobsResponseRole {
  const factory _GetDetailJobsResponseRole(
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
          final List<dynamic>? additionalCharges,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'job_id') final String? jobId}) =
      _$GetDetailJobsResponseRoleImpl;

  factory _GetDetailJobsResponseRole.fromJson(Map<String, dynamic> json) =
      _$GetDetailJobsResponseRoleImpl.fromJson;

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
  List<dynamic>? get additionalCharges;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'job_id')
  String? get jobId;

  /// Create a copy of GetDetailJobsResponseRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailJobsResponseRoleImplCopyWith<_$GetDetailJobsResponseRoleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDetailJobsResponseSchedule _$GetDetailJobsResponseScheduleFromJson(
    Map<String, dynamic> json) {
  return _GetDetailJobsResponseSchedule.fromJson(json);
}

/// @nodoc
mixin _$GetDetailJobsResponseSchedule {
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

  /// Serializes this GetDetailJobsResponseSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDetailJobsResponseSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDetailJobsResponseScheduleCopyWith<GetDetailJobsResponseSchedule>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailJobsResponseScheduleCopyWith<$Res> {
  factory $GetDetailJobsResponseScheduleCopyWith(
          GetDetailJobsResponseSchedule value,
          $Res Function(GetDetailJobsResponseSchedule) then) =
      _$GetDetailJobsResponseScheduleCopyWithImpl<$Res,
          GetDetailJobsResponseSchedule>;
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
class _$GetDetailJobsResponseScheduleCopyWithImpl<$Res,
        $Val extends GetDetailJobsResponseSchedule>
    implements $GetDetailJobsResponseScheduleCopyWith<$Res> {
  _$GetDetailJobsResponseScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDetailJobsResponseSchedule
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
abstract class _$$GetDetailJobsResponseScheduleImplCopyWith<$Res>
    implements $GetDetailJobsResponseScheduleCopyWith<$Res> {
  factory _$$GetDetailJobsResponseScheduleImplCopyWith(
          _$GetDetailJobsResponseScheduleImpl value,
          $Res Function(_$GetDetailJobsResponseScheduleImpl) then) =
      __$$GetDetailJobsResponseScheduleImplCopyWithImpl<$Res>;
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
class __$$GetDetailJobsResponseScheduleImplCopyWithImpl<$Res>
    extends _$GetDetailJobsResponseScheduleCopyWithImpl<$Res,
        _$GetDetailJobsResponseScheduleImpl>
    implements _$$GetDetailJobsResponseScheduleImplCopyWith<$Res> {
  __$$GetDetailJobsResponseScheduleImplCopyWithImpl(
      _$GetDetailJobsResponseScheduleImpl _value,
      $Res Function(_$GetDetailJobsResponseScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDetailJobsResponseSchedule
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
    return _then(_$GetDetailJobsResponseScheduleImpl(
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
class _$GetDetailJobsResponseScheduleImpl
    implements _GetDetailJobsResponseSchedule {
  const _$GetDetailJobsResponseScheduleImpl(
      {@JsonKey(name: 'schedule_type') this.scheduleType,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'job_id') this.jobId});

  factory _$GetDetailJobsResponseScheduleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetDetailJobsResponseScheduleImplFromJson(json);

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
    return 'GetDetailJobsResponseSchedule(scheduleType: $scheduleType, startTime: $startTime, endTime: $endTime, notes: $notes, id: $id, jobId: $jobId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailJobsResponseScheduleImpl &&
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

  /// Create a copy of GetDetailJobsResponseSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailJobsResponseScheduleImplCopyWith<
          _$GetDetailJobsResponseScheduleImpl>
      get copyWith => __$$GetDetailJobsResponseScheduleImplCopyWithImpl<
          _$GetDetailJobsResponseScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailJobsResponseScheduleImplToJson(
      this,
    );
  }
}

abstract class _GetDetailJobsResponseSchedule
    implements GetDetailJobsResponseSchedule {
  const factory _GetDetailJobsResponseSchedule(
          {@JsonKey(name: 'schedule_type') final String? scheduleType,
          @JsonKey(name: 'start_time') final DateTime? startTime,
          @JsonKey(name: 'end_time') final DateTime? endTime,
          @JsonKey(name: 'notes') final String? notes,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'job_id') final String? jobId}) =
      _$GetDetailJobsResponseScheduleImpl;

  factory _GetDetailJobsResponseSchedule.fromJson(Map<String, dynamic> json) =
      _$GetDetailJobsResponseScheduleImpl.fromJson;

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

  /// Create a copy of GetDetailJobsResponseSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailJobsResponseScheduleImplCopyWith<
          _$GetDetailJobsResponseScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
