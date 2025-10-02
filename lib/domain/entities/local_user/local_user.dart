import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../lib.dart';

part 'local_user.freezed.dart';
part 'local_user.g.dart';

@freezed
class LocalUser with _$LocalUser {
  const LocalUser._();
  factory LocalUser({
    @JsonKey(name: 'user_id') String? userId,
    // @JsonKey(name: 'name') String? name,
    // @JsonKey(name: 'email') String? email,
    // @JsonKey(name: 'seller_status') String? sellerStatus, // Buat nullable
    // @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'access_token') String? token,
    @JsonKey(name: 'role') String? roleStatus,
    @JsonKey(name: 'role_id') int? roleId,
    @JsonKey(name: 'token_type') String? tokenType, // Buat nullable
    @JsonKey(name: 'payment_status') bool? paymentStatus,
  }) = _LocalUser;

  factory LocalUser.fromJson(Map<String, dynamic> json) =>
      _$LocalUserFromJson(json);

  UserRole get role => UserRole.fromString(roleStatus);
}
