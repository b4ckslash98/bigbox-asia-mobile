import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../lib.dart';

part 'admin_kelola_client_state.freezed.dart';
part 'admin_kelola_client_state.g.dart';

@freezed
class AdminKelolaClientState with _$AdminKelolaClientState {
  const AdminKelolaClientState._();

  factory AdminKelolaClientState({
    String? fcmToken,
    GetAdminClient? adminClient,
  }) = _AdminKelolaClientState;

  factory AdminKelolaClientState.fromJson(Map<String, dynamic> json) =>
      _$AdminKelolaClientStateFromJson(json);
}
