import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../lib.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  factory AuthState({
    LocalUser? user,
    String? fcmToken,
    GetTalentProfile? profile,
    GetLocation? location,
    GetCategoriesResponse? categories,
    String? convertedName,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);

  // Basic auth check
  bool get isAuthenticated => user != null;

  // Role getters (perbaikan di sini)
  UserRole? get currentRole {
    if (user == null) return null;
    return UserRole.fromString(user!.roleStatus);
  }

  bool get isAdmin => currentRole == UserRole.admin;
  bool get isClient => currentRole == UserRole.client;
  bool get isTalent => currentRole == UserRole.talent;

  // // Untuk backward compatibility
  // bool get isSellerMode => isModel; // Model sebagai pengganti seller
  // bool get isBuyer => isClient; // Client sebagai pengganti buyer

  // User info getters

  String? get currentUserRole => user?.roleStatus;
  String? get currentUserDisplayRole => currentRole?.displayName;
}
