import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'admin_add_talent_state.freezed.dart';
part 'admin_add_talent_state.g.dart';

@freezed
class AdminAddTalentState with _$AdminAddTalentState {
  const AdminAddTalentState._();

  factory AdminAddTalentState({
    String? fcmToken,
    @Default(false) bool isLoading,
    @Default([]) List<DatumMasterPaymentCode> paymentCodes,
    String? selectedPaymentCodeId,
    @Default(false) bool isAddingTalent,
  }) = _AdminAddTalentState;

  factory AdminAddTalentState.fromJson(Map<String, dynamic> json) =>
      _$AdminAddTalentStateFromJson(json);
}
