// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_aplication_talent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAplicationTalentImpl _$$GetAplicationTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAplicationTalentImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              DatumGetAplicationTalent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAplicationTalentImplToJson(
        _$GetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DatumGetAplicationTalentImpl _$$DatumGetAplicationTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$DatumGetAplicationTalentImpl(
      applicationId: json['id'] as String?,
      jobId: json['job_id'] as String?,
      jobRoleId: json['job_role_id'] as String?,
      statusApplication: json['status'] as String?,
      user: json['user'] == null
          ? null
          : UserGetAplicationTalent.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DatumGetAplicationTalentImplToJson(
        _$DatumGetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'id': instance.applicationId,
      'job_id': instance.jobId,
      'job_role_id': instance.jobRoleId,
      'status': instance.statusApplication,
      'user': instance.user?.toJson(),
    };

_$UserGetAplicationTalentImpl _$$UserGetAplicationTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$UserGetAplicationTalentImpl(
      email: json['email'] as String?,
      role: json['role'] as String?,
      id: json['id'] as String?,
      isActive: json['is_active'] as bool?,
      verificationStatus: json['verification_status'] as String?,
      verificationNote: json['verification_note'] as String?,
      verifiedAt: json['verified_at'] == null
          ? null
          : DateTime.parse(json['verified_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      profile: json['profile'] == null
          ? null
          : ProfileGetAplicationTalent.fromJson(
              json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserGetAplicationTalentImplToJson(
        _$UserGetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'role': instance.role,
      'id': instance.id,
      'is_active': instance.isActive,
      'verification_status': instance.verificationStatus,
      'verification_note': instance.verificationNote,
      'verified_at': instance.verifiedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'profile': instance.profile?.toJson(),
    };

_$ProfileGetAplicationTalentImpl _$$ProfileGetAplicationTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileGetAplicationTalentImpl(
      name: json['name'] as String?,
      username: json['username'] as String?,
      birthDate: json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
      gender: json['gender'] as String?,
      phone: json['phone'] as String?,
      age: (json['age'] as num?)?.toInt(),
      ageCastingMin: (json['age_casting_min'] as num?)?.toInt(),
      ageCastingMax: (json['age_casting_max'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
      ukuranBaju: json['ukuran_baju'] as String?,
      ukuranCelana: (json['ukuran_celana'] as num?)?.toInt(),
      ukuranSepatu: (json['ukuran_sepatu'] as num?)?.toInt(),
      suku: json['suku'] as String?,
      warnaKulit: json['warna_kulit'] as String?,
      instagramUsername: json['instagram_username'] as String?,
      instagramFollower: json['instagram_follower'] as String?,
      tiktokUsername: json['tiktok_username'] as String?,
      tiktokFollower: json['tiktok_follower'] as String?,
      youtubeUsername: json['youtube_username'] as String?,
      youtubeFollower: json['youtube_follower'] as String?,
      isPassport: json['is_passport'] as bool?,
      isNpwp: json['is_npwp'] as bool?,
      photoProfile: json['photo_profile'] as String?,
      locationId: json['location_id'] as String?,
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      location: json['location'] == null
          ? null
          : LocationGetAplicationTalent.fromJson(
              json['location'] as Map<String, dynamic>),
      userLanguage: (json['user_language'] as List<dynamic>?)
          ?.map((e) => UserLanguageGetAplicationTalent.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) =>
              PhotoGetAplicationTalent.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) =>
              VideoGetAplicationTalent.fromJson(e as Map<String, dynamic>))
          .toList(),
      interestCategories: (json['interest_categories'] as List<dynamic>?)
          ?.map((e) => InterestCategoryGetAplicationTalent.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      experiences: (json['experiences'] as List<dynamic>?)
          ?.map((e) =>
              ExperienceGetAplicationTalent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileGetAplicationTalentImplToJson(
        _$ProfileGetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'birth_date': instance.birthDate?.toIso8601String(),
      'gender': instance.gender,
      'phone': instance.phone,
      'age': instance.age,
      'age_casting_min': instance.ageCastingMin,
      'age_casting_max': instance.ageCastingMax,
      'height': instance.height,
      'weight': instance.weight,
      'ukuran_baju': instance.ukuranBaju,
      'ukuran_celana': instance.ukuranCelana,
      'ukuran_sepatu': instance.ukuranSepatu,
      'suku': instance.suku,
      'warna_kulit': instance.warnaKulit,
      'instagram_username': instance.instagramUsername,
      'instagram_follower': instance.instagramFollower,
      'tiktok_username': instance.tiktokUsername,
      'tiktok_follower': instance.tiktokFollower,
      'youtube_username': instance.youtubeUsername,
      'youtube_follower': instance.youtubeFollower,
      'is_passport': instance.isPassport,
      'is_npwp': instance.isNpwp,
      'photo_profile': instance.photoProfile,
      'location_id': instance.locationId,
      'id': instance.id,
      'user_id': instance.userId,
      'location': instance.location?.toJson(),
      'user_language': instance.userLanguage?.map((e) => e.toJson()).toList(),
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'videos': instance.videos?.map((e) => e.toJson()).toList(),
      'interest_categories':
          instance.interestCategories?.map((e) => e.toJson()).toList(),
      'experiences': instance.experiences?.map((e) => e.toJson()).toList(),
    };

_$ExperienceGetAplicationTalentImpl
    _$$ExperienceGetAplicationTalentImplFromJson(Map<String, dynamic> json) =>
        _$ExperienceGetAplicationTalentImpl(
          title: json['title'] as String?,
          description: json['description'] as String?,
          videoUrl: json['video_url'] as String?,
          id: json['id'] as String?,
          profileId: json['profile_id'] as String?,
        );

Map<String, dynamic> _$$ExperienceGetAplicationTalentImplToJson(
        _$ExperienceGetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'video_url': instance.videoUrl,
      'id': instance.id,
      'profile_id': instance.profileId,
    };

_$InterestCategoryGetAplicationTalentImpl
    _$$InterestCategoryGetAplicationTalentImplFromJson(
            Map<String, dynamic> json) =>
        _$InterestCategoryGetAplicationTalentImpl(
          jobCategoriesId: json['job_categories_id'] as String?,
          budgetMin: (json['budget_min'] as num?)?.toInt(),
          budgetMax: (json['budget_max'] as num?)?.toInt(),
          id: json['id'] as String?,
          categories: json['categories'] == null
              ? null
              : CategoriesGetAplicationTalent.fromJson(
                  json['categories'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$InterestCategoryGetAplicationTalentImplToJson(
        _$InterestCategoryGetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'job_categories_id': instance.jobCategoriesId,
      'budget_min': instance.budgetMin,
      'budget_max': instance.budgetMax,
      'id': instance.id,
      'categories': instance.categories?.toJson(),
    };

_$CategoriesGetAplicationTalentImpl
    _$$CategoriesGetAplicationTalentImplFromJson(Map<String, dynamic> json) =>
        _$CategoriesGetAplicationTalentImpl(
          name: json['name'] as String?,
          isActive: json['is_active'] as bool?,
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$CategoriesGetAplicationTalentImplToJson(
        _$CategoriesGetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'is_active': instance.isActive,
      'id': instance.id,
    };

_$LocationGetAplicationTalentImpl _$$LocationGetAplicationTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationGetAplicationTalentImpl(
      name: json['name'] as String?,
      parentId: json['parent_id'],
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$LocationGetAplicationTalentImplToJson(
        _$LocationGetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parent_id': instance.parentId,
      'id': instance.id,
    };

_$PhotoGetAplicationTalentImpl _$$PhotoGetAplicationTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$PhotoGetAplicationTalentImpl(
      photoUrl: json['photo_url'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$PhotoGetAplicationTalentImplToJson(
        _$PhotoGetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'photo_url': instance.photoUrl,
      'id': instance.id,
    };

_$UserLanguageGetAplicationTalentImpl
    _$$UserLanguageGetAplicationTalentImplFromJson(Map<String, dynamic> json) =>
        _$UserLanguageGetAplicationTalentImpl(
          language: json['language'] as String?,
          level: json['level'] as String?,
          id: json['id'] as String?,
        );

Map<String, dynamic> _$$UserLanguageGetAplicationTalentImplToJson(
        _$UserLanguageGetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'level': instance.level,
      'id': instance.id,
    };

_$VideoGetAplicationTalentImpl _$$VideoGetAplicationTalentImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoGetAplicationTalentImpl(
      videoUrl: json['video_url'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$VideoGetAplicationTalentImplToJson(
        _$VideoGetAplicationTalentImpl instance) =>
    <String, dynamic>{
      'video_url': instance.videoUrl,
      'id': instance.id,
    };
