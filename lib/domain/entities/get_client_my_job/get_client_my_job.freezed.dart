// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_client_my_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetClientMyJobModel _$GetClientMyJobModelFromJson(Map<String, dynamic> json) {
  return _GetClientMyJobModel.fromJson(json);
}

/// @nodoc
mixin _$GetClientMyJobModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<GetClientMyJobModelDatum>? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this GetClientMyJobModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientMyJobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientMyJobModelCopyWith<GetClientMyJobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientMyJobModelCopyWith<$Res> {
  factory $GetClientMyJobModelCopyWith(
          GetClientMyJobModel value, $Res Function(GetClientMyJobModel) then) =
      _$GetClientMyJobModelCopyWithImpl<$Res, GetClientMyJobModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<GetClientMyJobModelDatum>? data});
}

/// @nodoc
class _$GetClientMyJobModelCopyWithImpl<$Res, $Val extends GetClientMyJobModel>
    implements $GetClientMyJobModelCopyWith<$Res> {
  _$GetClientMyJobModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientMyJobModel
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
              as List<GetClientMyJobModelDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetClientMyJobModelImplCopyWith<$Res>
    implements $GetClientMyJobModelCopyWith<$Res> {
  factory _$$GetClientMyJobModelImplCopyWith(_$GetClientMyJobModelImpl value,
          $Res Function(_$GetClientMyJobModelImpl) then) =
      __$$GetClientMyJobModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<GetClientMyJobModelDatum>? data});
}

/// @nodoc
class __$$GetClientMyJobModelImplCopyWithImpl<$Res>
    extends _$GetClientMyJobModelCopyWithImpl<$Res, _$GetClientMyJobModelImpl>
    implements _$$GetClientMyJobModelImplCopyWith<$Res> {
  __$$GetClientMyJobModelImplCopyWithImpl(_$GetClientMyJobModelImpl _value,
      $Res Function(_$GetClientMyJobModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientMyJobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetClientMyJobModelImpl(
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
              as List<GetClientMyJobModelDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetClientMyJobModelImpl implements _GetClientMyJobModel {
  const _$GetClientMyJobModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<GetClientMyJobModelDatum>? data})
      : _data = data;

  factory _$GetClientMyJobModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetClientMyJobModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<GetClientMyJobModelDatum>? _data;
  @override
  @JsonKey(name: 'data')
  List<GetClientMyJobModelDatum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetClientMyJobModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientMyJobModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetClientMyJobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientMyJobModelImplCopyWith<_$GetClientMyJobModelImpl> get copyWith =>
      __$$GetClientMyJobModelImplCopyWithImpl<_$GetClientMyJobModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientMyJobModelImplToJson(
      this,
    );
  }
}

abstract class _GetClientMyJobModel implements GetClientMyJobModel {
  const factory _GetClientMyJobModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<GetClientMyJobModelDatum>? data}) =
      _$GetClientMyJobModelImpl;

  factory _GetClientMyJobModel.fromJson(Map<String, dynamic> json) =
      _$GetClientMyJobModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<GetClientMyJobModelDatum>? get data;

  /// Create a copy of GetClientMyJobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientMyJobModelImplCopyWith<_$GetClientMyJobModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetClientMyJobModelDatum _$GetClientMyJobModelDatumFromJson(
    Map<String, dynamic> json) {
  return _GetClientMyJobModelDatum.fromJson(json);
}

/// @nodoc
mixin _$GetClientMyJobModelDatum {
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
  List<GetClientMyJobModelLocationElement>? get locations =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'locations_talent')
  List<GetClientMyJobModelLocationElement>? get locationsTalent =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'schedules')
  List<GetClientMyJobModelSchedule>? get schedules =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_processes')
  List<GetClientMyJobModelSchedule>? get scheduleProcesses =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'roles')
  List<GetClientMyJobModelRole>? get roles =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'closed_questions')
  List<GetClientMyJobModelClosedQuestion>? get closedQuestions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_charge')
  List<dynamic>? get additionalCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'client')
  GetClientMyJobModelClient? get client => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<GetClientMyJobModelCategory>? get categories =>
      throw _privateConstructorUsedError;

  /// Serializes this GetClientMyJobModelDatum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientMyJobModelDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientMyJobModelDatumCopyWith<GetClientMyJobModelDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientMyJobModelDatumCopyWith<$Res> {
  factory $GetClientMyJobModelDatumCopyWith(GetClientMyJobModelDatum value,
          $Res Function(GetClientMyJobModelDatum) then) =
      _$GetClientMyJobModelDatumCopyWithImpl<$Res, GetClientMyJobModelDatum>;
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
      List<GetClientMyJobModelLocationElement>? locations,
      @JsonKey(name: 'locations_talent')
      List<GetClientMyJobModelLocationElement>? locationsTalent,
      @JsonKey(name: 'schedules') List<GetClientMyJobModelSchedule>? schedules,
      @JsonKey(name: 'schedule_processes')
      List<GetClientMyJobModelSchedule>? scheduleProcesses,
      @JsonKey(name: 'roles') List<GetClientMyJobModelRole>? roles,
      @JsonKey(name: 'closed_questions')
      List<GetClientMyJobModelClosedQuestion>? closedQuestions,
      @JsonKey(name: 'additional_charge') List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') GetClientMyJobModelClient? client,
      @JsonKey(name: 'categories')
      List<GetClientMyJobModelCategory>? categories});

  $GetClientMyJobModelClientCopyWith<$Res>? get client;
}

/// @nodoc
class _$GetClientMyJobModelDatumCopyWithImpl<$Res,
        $Val extends GetClientMyJobModelDatum>
    implements $GetClientMyJobModelDatumCopyWith<$Res> {
  _$GetClientMyJobModelDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientMyJobModelDatum
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
              as List<GetClientMyJobModelLocationElement>?,
      locationsTalent: freezed == locationsTalent
          ? _value.locationsTalent
          : locationsTalent // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelLocationElement>?,
      schedules: freezed == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelSchedule>?,
      scheduleProcesses: freezed == scheduleProcesses
          ? _value.scheduleProcesses
          : scheduleProcesses // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelSchedule>?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelRole>?,
      closedQuestions: freezed == closedQuestions
          ? _value.closedQuestions
          : closedQuestions // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelClosedQuestion>?,
      additionalCharge: freezed == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as GetClientMyJobModelClient?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelCategory>?,
    ) as $Val);
  }

  /// Create a copy of GetClientMyJobModelDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetClientMyJobModelClientCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $GetClientMyJobModelClientCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetClientMyJobModelDatumImplCopyWith<$Res>
    implements $GetClientMyJobModelDatumCopyWith<$Res> {
  factory _$$GetClientMyJobModelDatumImplCopyWith(
          _$GetClientMyJobModelDatumImpl value,
          $Res Function(_$GetClientMyJobModelDatumImpl) then) =
      __$$GetClientMyJobModelDatumImplCopyWithImpl<$Res>;
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
      List<GetClientMyJobModelLocationElement>? locations,
      @JsonKey(name: 'locations_talent')
      List<GetClientMyJobModelLocationElement>? locationsTalent,
      @JsonKey(name: 'schedules') List<GetClientMyJobModelSchedule>? schedules,
      @JsonKey(name: 'schedule_processes')
      List<GetClientMyJobModelSchedule>? scheduleProcesses,
      @JsonKey(name: 'roles') List<GetClientMyJobModelRole>? roles,
      @JsonKey(name: 'closed_questions')
      List<GetClientMyJobModelClosedQuestion>? closedQuestions,
      @JsonKey(name: 'additional_charge') List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') GetClientMyJobModelClient? client,
      @JsonKey(name: 'categories')
      List<GetClientMyJobModelCategory>? categories});

  @override
  $GetClientMyJobModelClientCopyWith<$Res>? get client;
}

/// @nodoc
class __$$GetClientMyJobModelDatumImplCopyWithImpl<$Res>
    extends _$GetClientMyJobModelDatumCopyWithImpl<$Res,
        _$GetClientMyJobModelDatumImpl>
    implements _$$GetClientMyJobModelDatumImplCopyWith<$Res> {
  __$$GetClientMyJobModelDatumImplCopyWithImpl(
      _$GetClientMyJobModelDatumImpl _value,
      $Res Function(_$GetClientMyJobModelDatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientMyJobModelDatum
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
    return _then(_$GetClientMyJobModelDatumImpl(
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
              as List<GetClientMyJobModelLocationElement>?,
      locationsTalent: freezed == locationsTalent
          ? _value._locationsTalent
          : locationsTalent // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelLocationElement>?,
      schedules: freezed == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelSchedule>?,
      scheduleProcesses: freezed == scheduleProcesses
          ? _value._scheduleProcesses
          : scheduleProcesses // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelSchedule>?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelRole>?,
      closedQuestions: freezed == closedQuestions
          ? _value._closedQuestions
          : closedQuestions // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelClosedQuestion>?,
      additionalCharge: freezed == additionalCharge
          ? _value._additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as GetClientMyJobModelClient?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GetClientMyJobModelCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetClientMyJobModelDatumImpl implements _GetClientMyJobModelDatum {
  const _$GetClientMyJobModelDatumImpl(
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
      final List<GetClientMyJobModelLocationElement>? locations,
      @JsonKey(name: 'locations_talent')
      final List<GetClientMyJobModelLocationElement>? locationsTalent,
      @JsonKey(name: 'schedules')
      final List<GetClientMyJobModelSchedule>? schedules,
      @JsonKey(name: 'schedule_processes')
      final List<GetClientMyJobModelSchedule>? scheduleProcesses,
      @JsonKey(name: 'roles') final List<GetClientMyJobModelRole>? roles,
      @JsonKey(name: 'closed_questions')
      final List<GetClientMyJobModelClosedQuestion>? closedQuestions,
      @JsonKey(name: 'additional_charge') final List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') this.client,
      @JsonKey(name: 'categories')
      final List<GetClientMyJobModelCategory>? categories})
      : _locations = locations,
        _locationsTalent = locationsTalent,
        _schedules = schedules,
        _scheduleProcesses = scheduleProcesses,
        _roles = roles,
        _closedQuestions = closedQuestions,
        _additionalCharge = additionalCharge,
        _categories = categories;

  factory _$GetClientMyJobModelDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetClientMyJobModelDatumImplFromJson(json);

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
  final List<GetClientMyJobModelLocationElement>? _locations;
  @override
  @JsonKey(name: 'locations')
  List<GetClientMyJobModelLocationElement>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetClientMyJobModelLocationElement>? _locationsTalent;
  @override
  @JsonKey(name: 'locations_talent')
  List<GetClientMyJobModelLocationElement>? get locationsTalent {
    final value = _locationsTalent;
    if (value == null) return null;
    if (_locationsTalent is EqualUnmodifiableListView) return _locationsTalent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetClientMyJobModelSchedule>? _schedules;
  @override
  @JsonKey(name: 'schedules')
  List<GetClientMyJobModelSchedule>? get schedules {
    final value = _schedules;
    if (value == null) return null;
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetClientMyJobModelSchedule>? _scheduleProcesses;
  @override
  @JsonKey(name: 'schedule_processes')
  List<GetClientMyJobModelSchedule>? get scheduleProcesses {
    final value = _scheduleProcesses;
    if (value == null) return null;
    if (_scheduleProcesses is EqualUnmodifiableListView)
      return _scheduleProcesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetClientMyJobModelRole>? _roles;
  @override
  @JsonKey(name: 'roles')
  List<GetClientMyJobModelRole>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GetClientMyJobModelClosedQuestion>? _closedQuestions;
  @override
  @JsonKey(name: 'closed_questions')
  List<GetClientMyJobModelClosedQuestion>? get closedQuestions {
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
  final GetClientMyJobModelClient? client;
  final List<GetClientMyJobModelCategory>? _categories;
  @override
  @JsonKey(name: 'categories')
  List<GetClientMyJobModelCategory>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetClientMyJobModelDatum(id: $id, title: $title, description: $description, status: $status, statusNote: $statusNote, views: $views, totalApplications: $totalApplications, conversionRate: $conversionRate, createdAt: $createdAt, updatedAt: $updatedAt, locations: $locations, locationsTalent: $locationsTalent, schedules: $schedules, scheduleProcesses: $scheduleProcesses, roles: $roles, closedQuestions: $closedQuestions, additionalCharge: $additionalCharge, client: $client, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientMyJobModelDatumImpl &&
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

  /// Create a copy of GetClientMyJobModelDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientMyJobModelDatumImplCopyWith<_$GetClientMyJobModelDatumImpl>
      get copyWith => __$$GetClientMyJobModelDatumImplCopyWithImpl<
          _$GetClientMyJobModelDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientMyJobModelDatumImplToJson(
      this,
    );
  }
}

abstract class _GetClientMyJobModelDatum implements GetClientMyJobModelDatum {
  const factory _GetClientMyJobModelDatum(
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
      final List<GetClientMyJobModelLocationElement>? locations,
      @JsonKey(name: 'locations_talent')
      final List<GetClientMyJobModelLocationElement>? locationsTalent,
      @JsonKey(name: 'schedules')
      final List<GetClientMyJobModelSchedule>? schedules,
      @JsonKey(name: 'schedule_processes')
      final List<GetClientMyJobModelSchedule>? scheduleProcesses,
      @JsonKey(name: 'roles') final List<GetClientMyJobModelRole>? roles,
      @JsonKey(name: 'closed_questions')
      final List<GetClientMyJobModelClosedQuestion>? closedQuestions,
      @JsonKey(name: 'additional_charge') final List<dynamic>? additionalCharge,
      @JsonKey(name: 'client') final GetClientMyJobModelClient? client,
      @JsonKey(name: 'categories')
      final List<GetClientMyJobModelCategory>?
          categories}) = _$GetClientMyJobModelDatumImpl;

  factory _GetClientMyJobModelDatum.fromJson(Map<String, dynamic> json) =
      _$GetClientMyJobModelDatumImpl.fromJson;

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
  List<GetClientMyJobModelLocationElement>? get locations;
  @override
  @JsonKey(name: 'locations_talent')
  List<GetClientMyJobModelLocationElement>? get locationsTalent;
  @override
  @JsonKey(name: 'schedules')
  List<GetClientMyJobModelSchedule>? get schedules;
  @override
  @JsonKey(name: 'schedule_processes')
  List<GetClientMyJobModelSchedule>? get scheduleProcesses;
  @override
  @JsonKey(name: 'roles')
  List<GetClientMyJobModelRole>? get roles;
  @override
  @JsonKey(name: 'closed_questions')
  List<GetClientMyJobModelClosedQuestion>? get closedQuestions;
  @override
  @JsonKey(name: 'additional_charge')
  List<dynamic>? get additionalCharge;
  @override
  @JsonKey(name: 'client')
  GetClientMyJobModelClient? get client;
  @override
  @JsonKey(name: 'categories')
  List<GetClientMyJobModelCategory>? get categories;

  /// Create a copy of GetClientMyJobModelDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientMyJobModelDatumImplCopyWith<_$GetClientMyJobModelDatumImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetClientMyJobModelCategory _$GetClientMyJobModelCategoryFromJson(
    Map<String, dynamic> json) {
  return _GetClientMyJobModelCategory.fromJson(json);
}

/// @nodoc
mixin _$GetClientMyJobModelCategory {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this GetClientMyJobModelCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientMyJobModelCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientMyJobModelCategoryCopyWith<GetClientMyJobModelCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientMyJobModelCategoryCopyWith<$Res> {
  factory $GetClientMyJobModelCategoryCopyWith(
          GetClientMyJobModelCategory value,
          $Res Function(GetClientMyJobModelCategory) then) =
      _$GetClientMyJobModelCategoryCopyWithImpl<$Res,
          GetClientMyJobModelCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$GetClientMyJobModelCategoryCopyWithImpl<$Res,
        $Val extends GetClientMyJobModelCategory>
    implements $GetClientMyJobModelCategoryCopyWith<$Res> {
  _$GetClientMyJobModelCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientMyJobModelCategory
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
abstract class _$$GetClientMyJobModelCategoryImplCopyWith<$Res>
    implements $GetClientMyJobModelCategoryCopyWith<$Res> {
  factory _$$GetClientMyJobModelCategoryImplCopyWith(
          _$GetClientMyJobModelCategoryImpl value,
          $Res Function(_$GetClientMyJobModelCategoryImpl) then) =
      __$$GetClientMyJobModelCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$GetClientMyJobModelCategoryImplCopyWithImpl<$Res>
    extends _$GetClientMyJobModelCategoryCopyWithImpl<$Res,
        _$GetClientMyJobModelCategoryImpl>
    implements _$$GetClientMyJobModelCategoryImplCopyWith<$Res> {
  __$$GetClientMyJobModelCategoryImplCopyWithImpl(
      _$GetClientMyJobModelCategoryImpl _value,
      $Res Function(_$GetClientMyJobModelCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientMyJobModelCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$GetClientMyJobModelCategoryImpl(
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
class _$GetClientMyJobModelCategoryImpl
    implements _GetClientMyJobModelCategory {
  const _$GetClientMyJobModelCategoryImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$GetClientMyJobModelCategoryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetClientMyJobModelCategoryImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'GetClientMyJobModelCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientMyJobModelCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GetClientMyJobModelCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientMyJobModelCategoryImplCopyWith<_$GetClientMyJobModelCategoryImpl>
      get copyWith => __$$GetClientMyJobModelCategoryImplCopyWithImpl<
          _$GetClientMyJobModelCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientMyJobModelCategoryImplToJson(
      this,
    );
  }
}

abstract class _GetClientMyJobModelCategory
    implements GetClientMyJobModelCategory {
  const factory _GetClientMyJobModelCategory(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'name') final String? name}) =
      _$GetClientMyJobModelCategoryImpl;

  factory _GetClientMyJobModelCategory.fromJson(Map<String, dynamic> json) =
      _$GetClientMyJobModelCategoryImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of GetClientMyJobModelCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientMyJobModelCategoryImplCopyWith<_$GetClientMyJobModelCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetClientMyJobModelClient _$GetClientMyJobModelClientFromJson(
    Map<String, dynamic> json) {
  return _GetClientMyJobModelClient.fromJson(json);
}

/// @nodoc
mixin _$GetClientMyJobModelClient {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this GetClientMyJobModelClient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientMyJobModelClient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientMyJobModelClientCopyWith<GetClientMyJobModelClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientMyJobModelClientCopyWith<$Res> {
  factory $GetClientMyJobModelClientCopyWith(GetClientMyJobModelClient value,
          $Res Function(GetClientMyJobModelClient) then) =
      _$GetClientMyJobModelClientCopyWithImpl<$Res, GetClientMyJobModelClient>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$GetClientMyJobModelClientCopyWithImpl<$Res,
        $Val extends GetClientMyJobModelClient>
    implements $GetClientMyJobModelClientCopyWith<$Res> {
  _$GetClientMyJobModelClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientMyJobModelClient
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
abstract class _$$GetClientMyJobModelClientImplCopyWith<$Res>
    implements $GetClientMyJobModelClientCopyWith<$Res> {
  factory _$$GetClientMyJobModelClientImplCopyWith(
          _$GetClientMyJobModelClientImpl value,
          $Res Function(_$GetClientMyJobModelClientImpl) then) =
      __$$GetClientMyJobModelClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$GetClientMyJobModelClientImplCopyWithImpl<$Res>
    extends _$GetClientMyJobModelClientCopyWithImpl<$Res,
        _$GetClientMyJobModelClientImpl>
    implements _$$GetClientMyJobModelClientImplCopyWith<$Res> {
  __$$GetClientMyJobModelClientImplCopyWithImpl(
      _$GetClientMyJobModelClientImpl _value,
      $Res Function(_$GetClientMyJobModelClientImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientMyJobModelClient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_$GetClientMyJobModelClientImpl(
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
class _$GetClientMyJobModelClientImpl implements _GetClientMyJobModelClient {
  const _$GetClientMyJobModelClientImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'email') this.email});

  factory _$GetClientMyJobModelClientImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetClientMyJobModelClientImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'GetClientMyJobModelClient(id: $id, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientMyJobModelClientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  /// Create a copy of GetClientMyJobModelClient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientMyJobModelClientImplCopyWith<_$GetClientMyJobModelClientImpl>
      get copyWith => __$$GetClientMyJobModelClientImplCopyWithImpl<
          _$GetClientMyJobModelClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientMyJobModelClientImplToJson(
      this,
    );
  }
}

abstract class _GetClientMyJobModelClient implements GetClientMyJobModelClient {
  const factory _GetClientMyJobModelClient(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'email') final String? email}) =
      _$GetClientMyJobModelClientImpl;

  factory _GetClientMyJobModelClient.fromJson(Map<String, dynamic> json) =
      _$GetClientMyJobModelClientImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'email')
  String? get email;

  /// Create a copy of GetClientMyJobModelClient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientMyJobModelClientImplCopyWith<_$GetClientMyJobModelClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetClientMyJobModelClosedQuestion _$GetClientMyJobModelClosedQuestionFromJson(
    Map<String, dynamic> json) {
  return _GetClientMyJobModelClosedQuestion.fromJson(json);
}

/// @nodoc
mixin _$GetClientMyJobModelClosedQuestion {
  @JsonKey(name: 'question')
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'yes_or_no_question')
  bool? get yesOrNoQuestion => throw _privateConstructorUsedError;

  /// Serializes this GetClientMyJobModelClosedQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientMyJobModelClosedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientMyJobModelClosedQuestionCopyWith<GetClientMyJobModelClosedQuestion>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientMyJobModelClosedQuestionCopyWith<$Res> {
  factory $GetClientMyJobModelClosedQuestionCopyWith(
          GetClientMyJobModelClosedQuestion value,
          $Res Function(GetClientMyJobModelClosedQuestion) then) =
      _$GetClientMyJobModelClosedQuestionCopyWithImpl<$Res,
          GetClientMyJobModelClosedQuestion>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question') String? question,
      @JsonKey(name: 'yes_or_no_question') bool? yesOrNoQuestion});
}

/// @nodoc
class _$GetClientMyJobModelClosedQuestionCopyWithImpl<$Res,
        $Val extends GetClientMyJobModelClosedQuestion>
    implements $GetClientMyJobModelClosedQuestionCopyWith<$Res> {
  _$GetClientMyJobModelClosedQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientMyJobModelClosedQuestion
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
abstract class _$$GetClientMyJobModelClosedQuestionImplCopyWith<$Res>
    implements $GetClientMyJobModelClosedQuestionCopyWith<$Res> {
  factory _$$GetClientMyJobModelClosedQuestionImplCopyWith(
          _$GetClientMyJobModelClosedQuestionImpl value,
          $Res Function(_$GetClientMyJobModelClosedQuestionImpl) then) =
      __$$GetClientMyJobModelClosedQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question') String? question,
      @JsonKey(name: 'yes_or_no_question') bool? yesOrNoQuestion});
}

/// @nodoc
class __$$GetClientMyJobModelClosedQuestionImplCopyWithImpl<$Res>
    extends _$GetClientMyJobModelClosedQuestionCopyWithImpl<$Res,
        _$GetClientMyJobModelClosedQuestionImpl>
    implements _$$GetClientMyJobModelClosedQuestionImplCopyWith<$Res> {
  __$$GetClientMyJobModelClosedQuestionImplCopyWithImpl(
      _$GetClientMyJobModelClosedQuestionImpl _value,
      $Res Function(_$GetClientMyJobModelClosedQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientMyJobModelClosedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? yesOrNoQuestion = freezed,
  }) {
    return _then(_$GetClientMyJobModelClosedQuestionImpl(
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
class _$GetClientMyJobModelClosedQuestionImpl
    implements _GetClientMyJobModelClosedQuestion {
  const _$GetClientMyJobModelClosedQuestionImpl(
      {@JsonKey(name: 'question') this.question,
      @JsonKey(name: 'yes_or_no_question') this.yesOrNoQuestion});

  factory _$GetClientMyJobModelClosedQuestionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetClientMyJobModelClosedQuestionImplFromJson(json);

  @override
  @JsonKey(name: 'question')
  final String? question;
  @override
  @JsonKey(name: 'yes_or_no_question')
  final bool? yesOrNoQuestion;

  @override
  String toString() {
    return 'GetClientMyJobModelClosedQuestion(question: $question, yesOrNoQuestion: $yesOrNoQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientMyJobModelClosedQuestionImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.yesOrNoQuestion, yesOrNoQuestion) ||
                other.yesOrNoQuestion == yesOrNoQuestion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, question, yesOrNoQuestion);

  /// Create a copy of GetClientMyJobModelClosedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientMyJobModelClosedQuestionImplCopyWith<
          _$GetClientMyJobModelClosedQuestionImpl>
      get copyWith => __$$GetClientMyJobModelClosedQuestionImplCopyWithImpl<
          _$GetClientMyJobModelClosedQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientMyJobModelClosedQuestionImplToJson(
      this,
    );
  }
}

abstract class _GetClientMyJobModelClosedQuestion
    implements GetClientMyJobModelClosedQuestion {
  const factory _GetClientMyJobModelClosedQuestion(
          {@JsonKey(name: 'question') final String? question,
          @JsonKey(name: 'yes_or_no_question') final bool? yesOrNoQuestion}) =
      _$GetClientMyJobModelClosedQuestionImpl;

  factory _GetClientMyJobModelClosedQuestion.fromJson(
          Map<String, dynamic> json) =
      _$GetClientMyJobModelClosedQuestionImpl.fromJson;

  @override
  @JsonKey(name: 'question')
  String? get question;
  @override
  @JsonKey(name: 'yes_or_no_question')
  bool? get yesOrNoQuestion;

  /// Create a copy of GetClientMyJobModelClosedQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientMyJobModelClosedQuestionImplCopyWith<
          _$GetClientMyJobModelClosedQuestionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetClientMyJobModelLocationElement _$GetClientMyJobModelLocationElementFromJson(
    Map<String, dynamic> json) {
  return _GetClientMyJobModelLocationElement.fromJson(json);
}

/// @nodoc
mixin _$GetClientMyJobModelLocationElement {
  @JsonKey(name: 'location_id')
  String? get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_id')
  String? get jobId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  GetClientMyJobModelLocationLocation? get location =>
      throw _privateConstructorUsedError;

  /// Serializes this GetClientMyJobModelLocationElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientMyJobModelLocationElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientMyJobModelLocationElementCopyWith<
          GetClientMyJobModelLocationElement>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientMyJobModelLocationElementCopyWith<$Res> {
  factory $GetClientMyJobModelLocationElementCopyWith(
          GetClientMyJobModelLocationElement value,
          $Res Function(GetClientMyJobModelLocationElement) then) =
      _$GetClientMyJobModelLocationElementCopyWithImpl<$Res,
          GetClientMyJobModelLocationElement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'location_id') String? locationId,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId,
      @JsonKey(name: 'location')
      GetClientMyJobModelLocationLocation? location});

  $GetClientMyJobModelLocationLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$GetClientMyJobModelLocationElementCopyWithImpl<$Res,
        $Val extends GetClientMyJobModelLocationElement>
    implements $GetClientMyJobModelLocationElementCopyWith<$Res> {
  _$GetClientMyJobModelLocationElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientMyJobModelLocationElement
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
              as GetClientMyJobModelLocationLocation?,
    ) as $Val);
  }

  /// Create a copy of GetClientMyJobModelLocationElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetClientMyJobModelLocationLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $GetClientMyJobModelLocationLocationCopyWith<$Res>(_value.location!,
        (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetClientMyJobModelLocationElementImplCopyWith<$Res>
    implements $GetClientMyJobModelLocationElementCopyWith<$Res> {
  factory _$$GetClientMyJobModelLocationElementImplCopyWith(
          _$GetClientMyJobModelLocationElementImpl value,
          $Res Function(_$GetClientMyJobModelLocationElementImpl) then) =
      __$$GetClientMyJobModelLocationElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'location_id') String? locationId,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId,
      @JsonKey(name: 'location')
      GetClientMyJobModelLocationLocation? location});

  @override
  $GetClientMyJobModelLocationLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$GetClientMyJobModelLocationElementImplCopyWithImpl<$Res>
    extends _$GetClientMyJobModelLocationElementCopyWithImpl<$Res,
        _$GetClientMyJobModelLocationElementImpl>
    implements _$$GetClientMyJobModelLocationElementImplCopyWith<$Res> {
  __$$GetClientMyJobModelLocationElementImplCopyWithImpl(
      _$GetClientMyJobModelLocationElementImpl _value,
      $Res Function(_$GetClientMyJobModelLocationElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientMyJobModelLocationElement
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
    return _then(_$GetClientMyJobModelLocationElementImpl(
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
              as GetClientMyJobModelLocationLocation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetClientMyJobModelLocationElementImpl
    implements _GetClientMyJobModelLocationElement {
  const _$GetClientMyJobModelLocationElementImpl(
      {@JsonKey(name: 'location_id') this.locationId,
      @JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'job_id') this.jobId,
      @JsonKey(name: 'location') this.location});

  factory _$GetClientMyJobModelLocationElementImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetClientMyJobModelLocationElementImplFromJson(json);

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
  final GetClientMyJobModelLocationLocation? location;

  @override
  String toString() {
    return 'GetClientMyJobModelLocationElement(locationId: $locationId, notes: $notes, id: $id, jobId: $jobId, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientMyJobModelLocationElementImpl &&
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

  /// Create a copy of GetClientMyJobModelLocationElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientMyJobModelLocationElementImplCopyWith<
          _$GetClientMyJobModelLocationElementImpl>
      get copyWith => __$$GetClientMyJobModelLocationElementImplCopyWithImpl<
          _$GetClientMyJobModelLocationElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientMyJobModelLocationElementImplToJson(
      this,
    );
  }
}

abstract class _GetClientMyJobModelLocationElement
    implements GetClientMyJobModelLocationElement {
  const factory _GetClientMyJobModelLocationElement(
          {@JsonKey(name: 'location_id') final String? locationId,
          @JsonKey(name: 'notes') final String? notes,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'job_id') final String? jobId,
          @JsonKey(name: 'location')
          final GetClientMyJobModelLocationLocation? location}) =
      _$GetClientMyJobModelLocationElementImpl;

  factory _GetClientMyJobModelLocationElement.fromJson(
          Map<String, dynamic> json) =
      _$GetClientMyJobModelLocationElementImpl.fromJson;

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
  GetClientMyJobModelLocationLocation? get location;

  /// Create a copy of GetClientMyJobModelLocationElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientMyJobModelLocationElementImplCopyWith<
          _$GetClientMyJobModelLocationElementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetClientMyJobModelLocationLocation
    _$GetClientMyJobModelLocationLocationFromJson(Map<String, dynamic> json) {
  return _GetClientMyJobModelLocationLocation.fromJson(json);
}

/// @nodoc
mixin _$GetClientMyJobModelLocationLocation {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this GetClientMyJobModelLocationLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientMyJobModelLocationLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientMyJobModelLocationLocationCopyWith<
          GetClientMyJobModelLocationLocation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientMyJobModelLocationLocationCopyWith<$Res> {
  factory $GetClientMyJobModelLocationLocationCopyWith(
          GetClientMyJobModelLocationLocation value,
          $Res Function(GetClientMyJobModelLocationLocation) then) =
      _$GetClientMyJobModelLocationLocationCopyWithImpl<$Res,
          GetClientMyJobModelLocationLocation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$GetClientMyJobModelLocationLocationCopyWithImpl<$Res,
        $Val extends GetClientMyJobModelLocationLocation>
    implements $GetClientMyJobModelLocationLocationCopyWith<$Res> {
  _$GetClientMyJobModelLocationLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientMyJobModelLocationLocation
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
abstract class _$$GetClientMyJobModelLocationLocationImplCopyWith<$Res>
    implements $GetClientMyJobModelLocationLocationCopyWith<$Res> {
  factory _$$GetClientMyJobModelLocationLocationImplCopyWith(
          _$GetClientMyJobModelLocationLocationImpl value,
          $Res Function(_$GetClientMyJobModelLocationLocationImpl) then) =
      __$$GetClientMyJobModelLocationLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$GetClientMyJobModelLocationLocationImplCopyWithImpl<$Res>
    extends _$GetClientMyJobModelLocationLocationCopyWithImpl<$Res,
        _$GetClientMyJobModelLocationLocationImpl>
    implements _$$GetClientMyJobModelLocationLocationImplCopyWith<$Res> {
  __$$GetClientMyJobModelLocationLocationImplCopyWithImpl(
      _$GetClientMyJobModelLocationLocationImpl _value,
      $Res Function(_$GetClientMyJobModelLocationLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientMyJobModelLocationLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
  }) {
    return _then(_$GetClientMyJobModelLocationLocationImpl(
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
class _$GetClientMyJobModelLocationLocationImpl
    implements _GetClientMyJobModelLocationLocation {
  const _$GetClientMyJobModelLocationLocationImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'id') this.id});

  factory _$GetClientMyJobModelLocationLocationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetClientMyJobModelLocationLocationImplFromJson(json);

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
    return 'GetClientMyJobModelLocationLocation(name: $name, parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientMyJobModelLocationLocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, parentId, id);

  /// Create a copy of GetClientMyJobModelLocationLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientMyJobModelLocationLocationImplCopyWith<
          _$GetClientMyJobModelLocationLocationImpl>
      get copyWith => __$$GetClientMyJobModelLocationLocationImplCopyWithImpl<
          _$GetClientMyJobModelLocationLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientMyJobModelLocationLocationImplToJson(
      this,
    );
  }
}

abstract class _GetClientMyJobModelLocationLocation
    implements GetClientMyJobModelLocationLocation {
  const factory _GetClientMyJobModelLocationLocation(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'parent_id') final String? parentId,
          @JsonKey(name: 'id') final String? id}) =
      _$GetClientMyJobModelLocationLocationImpl;

  factory _GetClientMyJobModelLocationLocation.fromJson(
          Map<String, dynamic> json) =
      _$GetClientMyJobModelLocationLocationImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  @JsonKey(name: 'id')
  String? get id;

  /// Create a copy of GetClientMyJobModelLocationLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientMyJobModelLocationLocationImplCopyWith<
          _$GetClientMyJobModelLocationLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetClientMyJobModelRole _$GetClientMyJobModelRoleFromJson(
    Map<String, dynamic> json) {
  return _GetClientMyJobModelRole.fromJson(json);
}

/// @nodoc
mixin _$GetClientMyJobModelRole {
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
  List<GetClientMyJobModelAdditionalCharge>? get additionalCharges =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_id')
  String? get jobId => throw _privateConstructorUsedError;

  /// Serializes this GetClientMyJobModelRole to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientMyJobModelRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientMyJobModelRoleCopyWith<GetClientMyJobModelRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientMyJobModelRoleCopyWith<$Res> {
  factory $GetClientMyJobModelRoleCopyWith(GetClientMyJobModelRole value,
          $Res Function(GetClientMyJobModelRole) then) =
      _$GetClientMyJobModelRoleCopyWithImpl<$Res, GetClientMyJobModelRole>;
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
      List<GetClientMyJobModelAdditionalCharge>? additionalCharges,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId});
}

/// @nodoc
class _$GetClientMyJobModelRoleCopyWithImpl<$Res,
        $Val extends GetClientMyJobModelRole>
    implements $GetClientMyJobModelRoleCopyWith<$Res> {
  _$GetClientMyJobModelRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientMyJobModelRole
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
              as List<GetClientMyJobModelAdditionalCharge>?,
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
abstract class _$$GetClientMyJobModelRoleImplCopyWith<$Res>
    implements $GetClientMyJobModelRoleCopyWith<$Res> {
  factory _$$GetClientMyJobModelRoleImplCopyWith(
          _$GetClientMyJobModelRoleImpl value,
          $Res Function(_$GetClientMyJobModelRoleImpl) then) =
      __$$GetClientMyJobModelRoleImplCopyWithImpl<$Res>;
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
      List<GetClientMyJobModelAdditionalCharge>? additionalCharges,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'job_id') String? jobId});
}

/// @nodoc
class __$$GetClientMyJobModelRoleImplCopyWithImpl<$Res>
    extends _$GetClientMyJobModelRoleCopyWithImpl<$Res,
        _$GetClientMyJobModelRoleImpl>
    implements _$$GetClientMyJobModelRoleImplCopyWith<$Res> {
  __$$GetClientMyJobModelRoleImplCopyWithImpl(
      _$GetClientMyJobModelRoleImpl _value,
      $Res Function(_$GetClientMyJobModelRoleImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientMyJobModelRole
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
    return _then(_$GetClientMyJobModelRoleImpl(
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
              as List<GetClientMyJobModelAdditionalCharge>?,
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
class _$GetClientMyJobModelRoleImpl implements _GetClientMyJobModelRole {
  const _$GetClientMyJobModelRoleImpl(
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
      final List<GetClientMyJobModelAdditionalCharge>? additionalCharges,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'job_id') this.jobId})
      : _additionalCharges = additionalCharges;

  factory _$GetClientMyJobModelRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetClientMyJobModelRoleImplFromJson(json);

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
  final List<GetClientMyJobModelAdditionalCharge>? _additionalCharges;
  @override
  @JsonKey(name: 'additional_charges')
  List<GetClientMyJobModelAdditionalCharge>? get additionalCharges {
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
    return 'GetClientMyJobModelRole(title: $title, gender: $gender, ageMin: $ageMin, ageMax: $ageMax, description: $description, paymentAmount: $paymentAmount, paymentModerasi: $paymentModerasi, paymentType: $paymentType, countNeeded: $countNeeded, additionalCharges: $additionalCharges, id: $id, jobId: $jobId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientMyJobModelRoleImpl &&
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

  /// Create a copy of GetClientMyJobModelRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientMyJobModelRoleImplCopyWith<_$GetClientMyJobModelRoleImpl>
      get copyWith => __$$GetClientMyJobModelRoleImplCopyWithImpl<
          _$GetClientMyJobModelRoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientMyJobModelRoleImplToJson(
      this,
    );
  }
}

abstract class _GetClientMyJobModelRole implements GetClientMyJobModelRole {
  const factory _GetClientMyJobModelRole(
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
          final List<GetClientMyJobModelAdditionalCharge>? additionalCharges,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'job_id') final String? jobId}) =
      _$GetClientMyJobModelRoleImpl;

  factory _GetClientMyJobModelRole.fromJson(Map<String, dynamic> json) =
      _$GetClientMyJobModelRoleImpl.fromJson;

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
  List<GetClientMyJobModelAdditionalCharge>? get additionalCharges;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'job_id')
  String? get jobId;

  /// Create a copy of GetClientMyJobModelRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientMyJobModelRoleImplCopyWith<_$GetClientMyJobModelRoleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetClientMyJobModelAdditionalCharge
    _$GetClientMyJobModelAdditionalChargeFromJson(Map<String, dynamic> json) {
  return _GetClientMyJobModelAdditionalCharge.fromJson(json);
}

/// @nodoc
mixin _$GetClientMyJobModelAdditionalCharge {
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;

  /// Serializes this GetClientMyJobModelAdditionalCharge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientMyJobModelAdditionalCharge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientMyJobModelAdditionalChargeCopyWith<
          GetClientMyJobModelAdditionalCharge>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientMyJobModelAdditionalChargeCopyWith<$Res> {
  factory $GetClientMyJobModelAdditionalChargeCopyWith(
          GetClientMyJobModelAdditionalCharge value,
          $Res Function(GetClientMyJobModelAdditionalCharge) then) =
      _$GetClientMyJobModelAdditionalChargeCopyWithImpl<$Res,
          GetClientMyJobModelAdditionalCharge>;
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
      @JsonKey(name: 'amount') String? amount});
}

/// @nodoc
class _$GetClientMyJobModelAdditionalChargeCopyWithImpl<$Res,
        $Val extends GetClientMyJobModelAdditionalCharge>
    implements $GetClientMyJobModelAdditionalChargeCopyWith<$Res> {
  _$GetClientMyJobModelAdditionalChargeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientMyJobModelAdditionalCharge
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
abstract class _$$GetClientMyJobModelAdditionalChargeImplCopyWith<$Res>
    implements $GetClientMyJobModelAdditionalChargeCopyWith<$Res> {
  factory _$$GetClientMyJobModelAdditionalChargeImplCopyWith(
          _$GetClientMyJobModelAdditionalChargeImpl value,
          $Res Function(_$GetClientMyJobModelAdditionalChargeImpl) then) =
      __$$GetClientMyJobModelAdditionalChargeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
      @JsonKey(name: 'amount') String? amount});
}

/// @nodoc
class __$$GetClientMyJobModelAdditionalChargeImplCopyWithImpl<$Res>
    extends _$GetClientMyJobModelAdditionalChargeCopyWithImpl<$Res,
        _$GetClientMyJobModelAdditionalChargeImpl>
    implements _$$GetClientMyJobModelAdditionalChargeImplCopyWith<$Res> {
  __$$GetClientMyJobModelAdditionalChargeImplCopyWithImpl(
      _$GetClientMyJobModelAdditionalChargeImpl _value,
      $Res Function(_$GetClientMyJobModelAdditionalChargeImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientMyJobModelAdditionalCharge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$GetClientMyJobModelAdditionalChargeImpl(
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
class _$GetClientMyJobModelAdditionalChargeImpl
    implements _GetClientMyJobModelAdditionalCharge {
  const _$GetClientMyJobModelAdditionalChargeImpl(
      {@JsonKey(name: 'description') this.description,
      @JsonKey(name: 'amount') this.amount});

  factory _$GetClientMyJobModelAdditionalChargeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetClientMyJobModelAdditionalChargeImplFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'amount')
  final String? amount;

  @override
  String toString() {
    return 'GetClientMyJobModelAdditionalCharge(description: $description, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientMyJobModelAdditionalChargeImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, amount);

  /// Create a copy of GetClientMyJobModelAdditionalCharge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientMyJobModelAdditionalChargeImplCopyWith<
          _$GetClientMyJobModelAdditionalChargeImpl>
      get copyWith => __$$GetClientMyJobModelAdditionalChargeImplCopyWithImpl<
          _$GetClientMyJobModelAdditionalChargeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientMyJobModelAdditionalChargeImplToJson(
      this,
    );
  }
}

abstract class _GetClientMyJobModelAdditionalCharge
    implements GetClientMyJobModelAdditionalCharge {
  const factory _GetClientMyJobModelAdditionalCharge(
          {@JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'amount') final String? amount}) =
      _$GetClientMyJobModelAdditionalChargeImpl;

  factory _GetClientMyJobModelAdditionalCharge.fromJson(
          Map<String, dynamic> json) =
      _$GetClientMyJobModelAdditionalChargeImpl.fromJson;

  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'amount')
  String? get amount;

  /// Create a copy of GetClientMyJobModelAdditionalCharge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientMyJobModelAdditionalChargeImplCopyWith<
          _$GetClientMyJobModelAdditionalChargeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetClientMyJobModelSchedule _$GetClientMyJobModelScheduleFromJson(
    Map<String, dynamic> json) {
  return _GetClientMyJobModelSchedule.fromJson(json);
}

/// @nodoc
mixin _$GetClientMyJobModelSchedule {
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

  /// Serializes this GetClientMyJobModelSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClientMyJobModelSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClientMyJobModelScheduleCopyWith<GetClientMyJobModelSchedule>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientMyJobModelScheduleCopyWith<$Res> {
  factory $GetClientMyJobModelScheduleCopyWith(
          GetClientMyJobModelSchedule value,
          $Res Function(GetClientMyJobModelSchedule) then) =
      _$GetClientMyJobModelScheduleCopyWithImpl<$Res,
          GetClientMyJobModelSchedule>;
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
class _$GetClientMyJobModelScheduleCopyWithImpl<$Res,
        $Val extends GetClientMyJobModelSchedule>
    implements $GetClientMyJobModelScheduleCopyWith<$Res> {
  _$GetClientMyJobModelScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClientMyJobModelSchedule
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
abstract class _$$GetClientMyJobModelScheduleImplCopyWith<$Res>
    implements $GetClientMyJobModelScheduleCopyWith<$Res> {
  factory _$$GetClientMyJobModelScheduleImplCopyWith(
          _$GetClientMyJobModelScheduleImpl value,
          $Res Function(_$GetClientMyJobModelScheduleImpl) then) =
      __$$GetClientMyJobModelScheduleImplCopyWithImpl<$Res>;
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
class __$$GetClientMyJobModelScheduleImplCopyWithImpl<$Res>
    extends _$GetClientMyJobModelScheduleCopyWithImpl<$Res,
        _$GetClientMyJobModelScheduleImpl>
    implements _$$GetClientMyJobModelScheduleImplCopyWith<$Res> {
  __$$GetClientMyJobModelScheduleImplCopyWithImpl(
      _$GetClientMyJobModelScheduleImpl _value,
      $Res Function(_$GetClientMyJobModelScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClientMyJobModelSchedule
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
    return _then(_$GetClientMyJobModelScheduleImpl(
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
class _$GetClientMyJobModelScheduleImpl
    implements _GetClientMyJobModelSchedule {
  const _$GetClientMyJobModelScheduleImpl(
      {@JsonKey(name: 'schedule_type') this.scheduleType,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'job_id') this.jobId});

  factory _$GetClientMyJobModelScheduleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetClientMyJobModelScheduleImplFromJson(json);

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
    return 'GetClientMyJobModelSchedule(scheduleType: $scheduleType, startTime: $startTime, endTime: $endTime, notes: $notes, id: $id, jobId: $jobId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientMyJobModelScheduleImpl &&
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

  /// Create a copy of GetClientMyJobModelSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientMyJobModelScheduleImplCopyWith<_$GetClientMyJobModelScheduleImpl>
      get copyWith => __$$GetClientMyJobModelScheduleImplCopyWithImpl<
          _$GetClientMyJobModelScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClientMyJobModelScheduleImplToJson(
      this,
    );
  }
}

abstract class _GetClientMyJobModelSchedule
    implements GetClientMyJobModelSchedule {
  const factory _GetClientMyJobModelSchedule(
          {@JsonKey(name: 'schedule_type') final String? scheduleType,
          @JsonKey(name: 'start_time') final DateTime? startTime,
          @JsonKey(name: 'end_time') final DateTime? endTime,
          @JsonKey(name: 'notes') final String? notes,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'job_id') final String? jobId}) =
      _$GetClientMyJobModelScheduleImpl;

  factory _GetClientMyJobModelSchedule.fromJson(Map<String, dynamic> json) =
      _$GetClientMyJobModelScheduleImpl.fromJson;

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

  /// Create a copy of GetClientMyJobModelSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClientMyJobModelScheduleImplCopyWith<_$GetClientMyJobModelScheduleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
