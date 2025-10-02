import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'payment_state.freezed.dart';
part 'payment_state.g.dart';

@freezed
class PaymentState with _$PaymentState {
  const PaymentState._();

  factory PaymentState({
    String? fcmToken,
    GetListPaymentMethod? listPaymentMethod,
    GetFeeRegisterTalent? feeRegisterTalent,
    GetChargeVirtualAccountPaymentSucces? chargeVirtualAccountPaymentSucces,
    GetTalentProfile? profile,
  }) = _PaymentState;

  factory PaymentState.fromJson(Map<String, dynamic> json) =>
      _$PaymentStateFromJson(json);
}
