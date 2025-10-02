enum VerificationStatus {
  approved,
  in_review,
  rejected,
}

extension VerificationStatusExtension on VerificationStatus {
  static VerificationStatus fromString(String? status) {
    switch (status?.toLowerCase()) {
      case 'approved':
        return VerificationStatus.approved;
      case 'in_review':
        return VerificationStatus.in_review;
      case 'rejected':
        return VerificationStatus.rejected;
      default:
        return VerificationStatus.in_review;
    }
  }

  String get value {
    switch (this) {
      case VerificationStatus.approved:
        return 'approved';
      case VerificationStatus.in_review:
        return 'in_review';
      case VerificationStatus.rejected:
        return 'rejected';
    }
  }
}
