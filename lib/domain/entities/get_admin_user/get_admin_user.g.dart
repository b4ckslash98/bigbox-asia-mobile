// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_admin_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAdminUserImpl _$$GetAdminUserImplFromJson(Map<String, dynamic> json) =>
    _$GetAdminUserImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DatumGetAdminUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAdminUserImplToJson(_$GetAdminUserImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DatumGetAdminUserImpl _$$DatumGetAdminUserImplFromJson(
        Map<String, dynamic> json) =>
    _$DatumGetAdminUserImpl(
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
          : ProfileGetAdminUser.fromJson(
              json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DatumGetAdminUserImplToJson(
        _$DatumGetAdminUserImpl instance) =>
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

_$ProfileGetAdminUserImpl _$$ProfileGetAdminUserImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileGetAdminUserImpl(
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
          : LocationGetAdminUser.fromJson(
              json['location'] as Map<String, dynamic>),
      userLanguage: (json['user_language'] as List<dynamic>?)
          ?.map((e) =>
              UserLanguageGetAdminUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => PhotoGetAdminUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => VideoGetAdminUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      interestCategories: (json['interest_categories'] as List<dynamic>?)
          ?.map((e) =>
              InterestCategoryGetAdminUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      experiences: (json['experiences'] as List<dynamic>?)
          ?.map(
              (e) => ExperienceGetAdminUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileGetAdminUserImplToJson(
        _$ProfileGetAdminUserImpl instance) =>
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

_$ExperienceGetAdminUserImpl _$$ExperienceGetAdminUserImplFromJson(
        Map<String, dynamic> json) =>
    _$ExperienceGetAdminUserImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      videoUrl: json['video_url'] as String?,
      id: json['id'] as String?,
      profileId: json['profile_id'] as String?,
    );

Map<String, dynamic> _$$ExperienceGetAdminUserImplToJson(
        _$ExperienceGetAdminUserImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'video_url': instance.videoUrl,
      'id': instance.id,
      'profile_id': instance.profileId,
    };

_$InterestCategoryGetAdminUserImpl _$$InterestCategoryGetAdminUserImplFromJson(
        Map<String, dynamic> json) =>
    _$InterestCategoryGetAdminUserImpl(
      jobCategoriesId: json['job_categories_id'] as String?,
      budgetMin: (json['budget_min'] as num?)?.toInt(),
      budgetMax: (json['budget_max'] as num?)?.toInt(),
      id: json['id'] as String?,
      categories: json['categories'] == null
          ? null
          : CategoriesGetAdminUser.fromJson(
              json['categories'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InterestCategoryGetAdminUserImplToJson(
        _$InterestCategoryGetAdminUserImpl instance) =>
    <String, dynamic>{
      'job_categories_id': instance.jobCategoriesId,
      'budget_min': instance.budgetMin,
      'budget_max': instance.budgetMax,
      'id': instance.id,
      'categories': instance.categories?.toJson(),
    };

_$CategoriesGetAdminUserImpl _$$CategoriesGetAdminUserImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesGetAdminUserImpl(
      name: json['name'] as String?,
      isActive: json['is_active'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$CategoriesGetAdminUserImplToJson(
        _$CategoriesGetAdminUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'is_active': instance.isActive,
      'id': instance.id,
    };

_$LocationGetAdminUserImpl _$$LocationGetAdminUserImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationGetAdminUserImpl(
      name: json['name'] as String?,
      parentId: json['parent_id'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$LocationGetAdminUserImplToJson(
        _$LocationGetAdminUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parent_id': instance.parentId,
      'id': instance.id,
    };

_$PhotoGetAdminUserImpl _$$PhotoGetAdminUserImplFromJson(
        Map<String, dynamic> json) =>
    _$PhotoGetAdminUserImpl(
      photoUrl: json['photo_url'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$PhotoGetAdminUserImplToJson(
        _$PhotoGetAdminUserImpl instance) =>
    <String, dynamic>{
      'photo_url': instance.photoUrl,
      'id': instance.id,
    };

_$UserLanguageGetAdminUserImpl _$$UserLanguageGetAdminUserImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLanguageGetAdminUserImpl(
      language: json['language'] as String?,
      level: json['level'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$UserLanguageGetAdminUserImplToJson(
        _$UserLanguageGetAdminUserImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'level': instance.level,
      'id': instance.id,
    };

_$VideoGetAdminUserImpl _$$VideoGetAdminUserImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoGetAdminUserImpl(
      videoUrl: json['video_url'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$VideoGetAdminUserImplToJson(
        _$VideoGetAdminUserImpl instance) =>
    <String, dynamic>{
      'video_url': instance.videoUrl,
      'id': instance.id,
    };
