import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'users_state.freezed.dart';
part 'users_state.g.dart';

@freezed
class UsersState with _$UsersState {
  const UsersState._();

  factory UsersState({
    String? fcmToken,
    GetAdminUser? adminUser,
    GetTalentProfile? talentProfile,
  }) = _UsersState;

  factory UsersState.fromJson(Map<String, dynamic> json) =>
      _$UsersStateFromJson(json);
}
