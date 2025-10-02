// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_add_talent_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminAddTalentStateImpl _$$AdminAddTalentStateImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminAddTalentStateImpl(
      fcmToken: json['fcmToken'] as String?,
      isLoading: json['isLoading'] as bool? ?? false,
      paymentCodes: (json['paymentCodes'] as List<dynamic>?)
              ?.map((e) =>
                  DatumMasterPaymentCode.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedPaymentCodeId: json['selectedPaymentCodeId'] as String?,
      isAddingTalent: json['isAddingTalent'] as bool? ?? false,
    );

Map<String, dynamic> _$$AdminAddTalentStateImplToJson(
        _$AdminAddTalentStateImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'isLoading': instance.isLoading,
      'paymentCodes': instance.paymentCodes.map((e) => e.toJson()).toList(),
      'selectedPaymentCodeId': instance.selectedPaymentCodeId,
      'isAddingTalent': instance.isAddingTalent,
    };
