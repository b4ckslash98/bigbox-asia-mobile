import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'admin_detail_users_card_state.freezed.dart';
part 'admin_detail_users_card_state.g.dart';

@freezed
class AdminDetailUsersCardState with _$AdminDetailUsersCardState {
  const AdminDetailUsersCardState._();

  factory AdminDetailUsersCardState({
    String? fcmToken,
    GetAdminUser? adminUser,
    GetTalentProfile? talentProfile,
  }) = _AdminDetailUsersCardState;

  factory AdminDetailUsersCardState.fromJson(Map<String, dynamic> json) =>
      _$AdminDetailUsersCardStateFromJson(json);
}
