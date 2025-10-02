import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'admin_moderasi_budget_state.freezed.dart';
part 'admin_moderasi_budget_state.g.dart';

@freezed
class AdminModerasiBudgetState with _$AdminModerasiBudgetState {
  const AdminModerasiBudgetState._();

  factory AdminModerasiBudgetState({
    String? fcmToken,
    // Tambahkan ini
  }) = _AdminModerasiBudgetState;

  factory AdminModerasiBudgetState.fromJson(Map<String, dynamic> json) =>
      _$AdminModerasiBudgetStateFromJson(json);
}
