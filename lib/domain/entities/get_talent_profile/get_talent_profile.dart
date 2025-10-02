// To parse this JSON data, do
//
//     final getTalentProfile = getTalentProfileFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_talent_profile.freezed.dart';
part 'get_talent_profile.g.dart';

@freezed
class GetTalentProfile with _$GetTalentProfile {
  const factory GetTalentProfile({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') TalentData? data,
  }) = _GetTalentProfile;

  factory GetTalentProfile.fromJson(Map<String, dynamic> json) =>
      _$GetTalentProfileFromJson(json);
}

@freezed
class TalentData with _$TalentData {
  const factory TalentData({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'verification_status') String? verificationStatus,
    @JsonKey(name: 'verification_note') String? verificationNote,
    @JsonKey(name: 'verified_at') DateTime? verifiedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'payment_status') bool? paymentStatus,
    @JsonKey(name: 'profile') DataGetTalentProfile? profile,
  }) = _TalentData;

  factory TalentData.fromJson(Map<String, dynamic> json) =>
      _$TalentDataFromJson(json);
}

@freezed
class DataGetTalentProfile with _$DataGetTalentProfile {
  const factory DataGetTalentProfile({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'birth_date', fromJson: _fromJsonDate, toJson: _toJsonDate)
    DateTime? birthDate,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'age_casting_min') int? ageCastingMin,
    @JsonKey(name: 'age_casting_max') int? ageCastingMax,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'weight') int? weight,
    @JsonKey(name: 'ukuran_baju') String? ukuranBaju,
    @JsonKey(name: 'ukuran_celana') int? ukuranCelana,
    @JsonKey(name: 'ukuran_sepatu') int? ukuranSepatu,
    @JsonKey(name: 'suku') String? suku,
    @JsonKey(name: 'warna_kulit') String? warnaKulit,
    @JsonKey(name: 'instagram_username') String? instagramUsername,
    @JsonKey(name: 'instagram_follower') String? instagramFollower,
    @JsonKey(name: 'tiktok_username') String? tiktokUsername,
    @JsonKey(name: 'tiktok_follower') String? tiktokFollower,
    @JsonKey(name: 'youtube_username') String? youtubeUsername,
    @JsonKey(name: 'youtube_follower') String? youtubeFollower,
    @JsonKey(name: 'is_passport') bool? isPassport,
    @JsonKey(name: 'is_npwp') bool? isNpwp,
    @JsonKey(name: 'photo_profile') String? photoProfile,
    @JsonKey(name: 'location_id') String? locationId,
    @JsonKey(name: 'id') String? profileId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'location')
    LocationGetTalentProfile? location, // Properti baru
    @JsonKey(name: 'user_language')
    List<UserLanguageGetTalentProfile>? userLanguage,
    @JsonKey(name: 'photos') List<PhotoGetTalentProfile>? photos,
    @JsonKey(name: 'videos') List<VideoGetTalentProfile>? videos,
    @JsonKey(name: 'interest_categories')
    List<InterestCategoryGetTalentProfile>? interestCategories,
    @JsonKey(name: 'experiences') List<ExperienceGetTalentProfile>? experiences,
  }) = _DataGetTalentProfile;

  factory DataGetTalentProfile.fromJson(Map<String, dynamic> json) =>
      _$DataGetTalentProfileFromJson(json);
}

@freezed
class LocationGetTalentProfile with _$LocationGetTalentProfile {
  const factory LocationGetTalentProfile({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'id') String? id,
  }) = _LocationGetTalentProfile;

  factory LocationGetTalentProfile.fromJson(Map<String, dynamic> json) =>
      _$LocationGetTalentProfileFromJson(json);
}

@freezed
class PhotoGetTalentProfile with _$PhotoGetTalentProfile {
  const factory PhotoGetTalentProfile({
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'id') String? id,
  }) = _PhotoGetTalentProfile;

  factory PhotoGetTalentProfile.fromJson(Map<String, dynamic> json) =>
      _$PhotoGetTalentProfileFromJson(json);
}

@freezed
class VideoGetTalentProfile with _$VideoGetTalentProfile {
  const factory VideoGetTalentProfile({
    @JsonKey(name: 'video_url') String? videoUrl,
    @JsonKey(name: 'id') String? id,
  }) = _VideoGetTalentProfile;

  factory VideoGetTalentProfile.fromJson(Map<String, dynamic> json) =>
      _$VideoGetTalentProfileFromJson(json);
}

@freezed
class UserLanguageGetTalentProfile with _$UserLanguageGetTalentProfile {
  const factory UserLanguageGetTalentProfile({
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'level') String? level,
    @JsonKey(name: 'id') String? id,
  }) = _UserLanguageGetTalentProfile;

  factory UserLanguageGetTalentProfile.fromJson(Map<String, dynamic> json) =>
      _$UserLanguageGetTalentProfileFromJson(json);
}

@freezed
class InterestCategoryGetTalentProfile with _$InterestCategoryGetTalentProfile {
  const factory InterestCategoryGetTalentProfile({
    @JsonKey(name: 'job_categories_id') String? jobCategoriesId,
    @JsonKey(name: 'budget_min') int? budgetMin,
    @JsonKey(name: 'budget_max') int? budgetMax,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'categories') CategoriesGetTalentProfile? categories,
  }) = _InterestCategoryGetTalentProfile;

  factory InterestCategoryGetTalentProfile.fromJson(
          Map<String, dynamic> json) =>
      _$InterestCategoryGetTalentProfileFromJson(json);
}

@freezed
class CategoriesGetTalentProfile with _$CategoriesGetTalentProfile {
  const factory CategoriesGetTalentProfile({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'id') String? id,
  }) = _CategoriesGetTalentProfile;

  factory CategoriesGetTalentProfile.fromJson(Map<String, dynamic> json) =>
      _$CategoriesGetTalentProfileFromJson(json);
}

@freezed
class ExperienceGetTalentProfile with _$ExperienceGetTalentProfile {
  const factory ExperienceGetTalentProfile({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'video_url') String? videoUrl,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'profile_id') String? profileId,
  }) = _ExperienceGetTalentProfile;

  factory ExperienceGetTalentProfile.fromJson(Map<String, dynamic> json) =>
      _$ExperienceGetTalentProfileFromJson(json);
}

// Konverter untuk birth_date
DateTime? _fromJsonDate(String? date) =>
    date != null ? DateTime.parse(date) : null;

String? _toJsonDate(DateTime? date) => date?.toIso8601String();
