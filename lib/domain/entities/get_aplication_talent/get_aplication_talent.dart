// To parse this JSON data, do
//
//     final getAplicationTalent = getAplicationTalentFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_aplication_talent.freezed.dart';
part 'get_aplication_talent.g.dart';

@freezed
class GetAplicationTalent with _$GetAplicationTalent {
  const factory GetAplicationTalent({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<DatumGetAplicationTalent>? data,
  }) = _GetAplicationTalent;

  factory GetAplicationTalent.fromJson(Map<String, dynamic> json) =>
      _$GetAplicationTalentFromJson(json);
}

@freezed
class DatumGetAplicationTalent with _$DatumGetAplicationTalent {
  const factory DatumGetAplicationTalent({
    @JsonKey(name: 'id') String? applicationId,
    @JsonKey(name: 'job_id') String? jobId,
    @JsonKey(name: 'job_role_id') String? jobRoleId,
    @JsonKey(name: 'status') String? statusApplication,
    @JsonKey(name: 'user') UserGetAplicationTalent? user,
  }) = _DatumGetAplicationTalent;

  factory DatumGetAplicationTalent.fromJson(Map<String, dynamic> json) =>
      _$DatumGetAplicationTalentFromJson(json);
}

@freezed
class UserGetAplicationTalent with _$UserGetAplicationTalent {
  const factory UserGetAplicationTalent({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'verification_status') String? verificationStatus,
    @JsonKey(name: 'verification_note') String? verificationNote,
    @JsonKey(name: 'verified_at') DateTime? verifiedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'profile') ProfileGetAplicationTalent? profile,
  }) = _UserGetAplicationTalent;

  factory UserGetAplicationTalent.fromJson(Map<String, dynamic> json) =>
      _$UserGetAplicationTalentFromJson(json);
}

@freezed
class ProfileGetAplicationTalent with _$ProfileGetAplicationTalent {
  const factory ProfileGetAplicationTalent({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'birth_date') DateTime? birthDate,
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
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'location') LocationGetAplicationTalent? location,
    @JsonKey(name: 'user_language')
    List<UserLanguageGetAplicationTalent>? userLanguage,
    @JsonKey(name: 'photos') List<PhotoGetAplicationTalent>? photos,
    @JsonKey(name: 'videos') List<VideoGetAplicationTalent>? videos,
    @JsonKey(name: 'interest_categories')
    List<InterestCategoryGetAplicationTalent>? interestCategories,
    @JsonKey(name: 'experiences')
    List<ExperienceGetAplicationTalent>? experiences,
  }) = _ProfileGetAplicationTalent;

  factory ProfileGetAplicationTalent.fromJson(Map<String, dynamic> json) =>
      _$ProfileGetAplicationTalentFromJson(json);
}

@freezed
class ExperienceGetAplicationTalent with _$ExperienceGetAplicationTalent {
  const factory ExperienceGetAplicationTalent({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'video_url') String? videoUrl,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'profile_id') String? profileId,
  }) = _ExperienceGetAplicationTalent;

  factory ExperienceGetAplicationTalent.fromJson(Map<String, dynamic> json) =>
      _$ExperienceGetAplicationTalentFromJson(json);
}

@freezed
class InterestCategoryGetAplicationTalent
    with _$InterestCategoryGetAplicationTalent {
  const factory InterestCategoryGetAplicationTalent({
    @JsonKey(name: 'job_categories_id') String? jobCategoriesId,
    @JsonKey(name: 'budget_min') int? budgetMin,
    @JsonKey(name: 'budget_max') int? budgetMax,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'categories') CategoriesGetAplicationTalent? categories,
  }) = _InterestCategoryGetAplicationTalent;

  factory InterestCategoryGetAplicationTalent.fromJson(
          Map<String, dynamic> json) =>
      _$InterestCategoryGetAplicationTalentFromJson(json);
}

@freezed
class CategoriesGetAplicationTalent with _$CategoriesGetAplicationTalent {
  const factory CategoriesGetAplicationTalent({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'id') String? id,
  }) = _CategoriesGetAplicationTalent;

  factory CategoriesGetAplicationTalent.fromJson(Map<String, dynamic> json) =>
      _$CategoriesGetAplicationTalentFromJson(json);
}

@freezed
class LocationGetAplicationTalent with _$LocationGetAplicationTalent {
  const factory LocationGetAplicationTalent({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'parent_id') dynamic parentId,
    @JsonKey(name: 'id') String? id,
  }) = _LocationGetAplicationTalent;

  factory LocationGetAplicationTalent.fromJson(Map<String, dynamic> json) =>
      _$LocationGetAplicationTalentFromJson(json);
}

@freezed
class PhotoGetAplicationTalent with _$PhotoGetAplicationTalent {
  const factory PhotoGetAplicationTalent({
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'id') String? id,
  }) = _PhotoGetAplicationTalent;

  factory PhotoGetAplicationTalent.fromJson(Map<String, dynamic> json) =>
      _$PhotoGetAplicationTalentFromJson(json);
}

@freezed
class UserLanguageGetAplicationTalent with _$UserLanguageGetAplicationTalent {
  const factory UserLanguageGetAplicationTalent({
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'level') String? level,
    @JsonKey(name: 'id') String? id,
  }) = _UserLanguageGetAplicationTalent;

  factory UserLanguageGetAplicationTalent.fromJson(Map<String, dynamic> json) =>
      _$UserLanguageGetAplicationTalentFromJson(json);
}

@freezed
class VideoGetAplicationTalent with _$VideoGetAplicationTalent {
  const factory VideoGetAplicationTalent({
    @JsonKey(name: 'video_url') String? videoUrl,
    @JsonKey(name: 'id') String? id,
  }) = _VideoGetAplicationTalent;

  factory VideoGetAplicationTalent.fromJson(Map<String, dynamic> json) =>
      _$VideoGetAplicationTalentFromJson(json);
}
