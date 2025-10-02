// To parse this JSON data, do
//
//     final getAdminUser = getAdminUserFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_admin_user.freezed.dart';
part 'get_admin_user.g.dart';

@freezed
class GetAdminUser with _$GetAdminUser {
  const factory GetAdminUser({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<DatumGetAdminUser>? data,
  }) = _GetAdminUser;

  factory GetAdminUser.fromJson(Map<String, dynamic> json) =>
      _$GetAdminUserFromJson(json);
}

@freezed
class DatumGetAdminUser with _$DatumGetAdminUser {
  const factory DatumGetAdminUser({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'verification_status') String? verificationStatus,
    @JsonKey(name: 'verification_note') String? verificationNote,
    @JsonKey(name: 'verified_at') DateTime? verifiedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'profile') ProfileGetAdminUser? profile,
  }) = _DatumGetAdminUser;

  factory DatumGetAdminUser.fromJson(Map<String, dynamic> json) =>
      _$DatumGetAdminUserFromJson(json);
}

@freezed
class ProfileGetAdminUser with _$ProfileGetAdminUser {
  const factory ProfileGetAdminUser({
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
    @JsonKey(name: 'location') LocationGetAdminUser? location,
    @JsonKey(name: 'user_language')
    List<UserLanguageGetAdminUser>? userLanguage,
    @JsonKey(name: 'photos') List<PhotoGetAdminUser>? photos,
    @JsonKey(name: 'videos') List<VideoGetAdminUser>? videos,
    @JsonKey(name: 'interest_categories')
    List<InterestCategoryGetAdminUser>? interestCategories,
    @JsonKey(name: 'experiences') List<ExperienceGetAdminUser>? experiences,
  }) = _ProfileGetAdminUser;

  factory ProfileGetAdminUser.fromJson(Map<String, dynamic> json) =>
      _$ProfileGetAdminUserFromJson(json);
}

@freezed
class ExperienceGetAdminUser with _$ExperienceGetAdminUser {
  const factory ExperienceGetAdminUser({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'video_url') String? videoUrl,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'profile_id') String? profileId,
  }) = _ExperienceGetAdminUser;

  factory ExperienceGetAdminUser.fromJson(Map<String, dynamic> json) =>
      _$ExperienceGetAdminUserFromJson(json);
}

@freezed
class InterestCategoryGetAdminUser with _$InterestCategoryGetAdminUser {
  const factory InterestCategoryGetAdminUser({
    @JsonKey(name: 'job_categories_id') String? jobCategoriesId,
    @JsonKey(name: 'budget_min') int? budgetMin,
    @JsonKey(name: 'budget_max') int? budgetMax,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'categories') CategoriesGetAdminUser? categories,
  }) = _InterestCategoryGetAdminUser;

  factory InterestCategoryGetAdminUser.fromJson(Map<String, dynamic> json) =>
      _$InterestCategoryGetAdminUserFromJson(json);
}

@freezed
class CategoriesGetAdminUser with _$CategoriesGetAdminUser {
  const factory CategoriesGetAdminUser({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'id') String? id,
  }) = _CategoriesGetAdminUser;

  factory CategoriesGetAdminUser.fromJson(Map<String, dynamic> json) =>
      _$CategoriesGetAdminUserFromJson(json);
}

@freezed
class LocationGetAdminUser with _$LocationGetAdminUser {
  const factory LocationGetAdminUser({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'id') String? id,
  }) = _LocationGetAdminUser;

  factory LocationGetAdminUser.fromJson(Map<String, dynamic> json) =>
      _$LocationGetAdminUserFromJson(json);
}

@freezed
class PhotoGetAdminUser with _$PhotoGetAdminUser {
  const factory PhotoGetAdminUser({
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'id') String? id,
  }) = _PhotoGetAdminUser;

  factory PhotoGetAdminUser.fromJson(Map<String, dynamic> json) =>
      _$PhotoGetAdminUserFromJson(json);
}

@freezed
class UserLanguageGetAdminUser with _$UserLanguageGetAdminUser {
  const factory UserLanguageGetAdminUser({
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'level') String? level,
    @JsonKey(name: 'id') String? id,
  }) = _UserLanguageGetAdminUser;

  factory UserLanguageGetAdminUser.fromJson(Map<String, dynamic> json) =>
      _$UserLanguageGetAdminUserFromJson(json);
}

@freezed
class VideoGetAdminUser with _$VideoGetAdminUser {
  const factory VideoGetAdminUser({
    @JsonKey(name: 'video_url') String? videoUrl,
    @JsonKey(name: 'id') String? id,
  }) = _VideoGetAdminUser;

  factory VideoGetAdminUser.fromJson(Map<String, dynamic> json) =>
      _$VideoGetAdminUserFromJson(json);
}
