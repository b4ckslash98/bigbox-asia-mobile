enum UserRole {
  admin,
  client,
  talent;

  // Helper method untuk convert dari string
  static UserRole fromString(String? role) {
    if (role == null) return UserRole.client;
    // default

    switch (role.toLowerCase().trim()) {
      case 'admin':
      case 'administrator':
        return UserRole.admin;
      case 'client':
      case 'pembeli':
        // mapping role lama
        return UserRole.client;
      case 'talent':
      case 'penjual':
        // mapping role lama
        return UserRole.talent;
      default:
        return UserRole.client;
      // default ke client
    }
  }

  // Helper method untuk convert ke string
  String get value {
    switch (this) {
      case UserRole.admin:
        return 'admin';
      case UserRole.client:
        return 'client';
      case UserRole.talent:
        return 'talent';
    }
  }

  // Helper untuk display name
  String get displayName {
    switch (this) {
      case UserRole.admin:
        return 'Administrator';
      case UserRole.client:
        return 'Client';
      case UserRole.talent:
        return 'Talent';
    }
  }
}
