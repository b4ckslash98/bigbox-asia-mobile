import 'package:dartz/dartz.dart';

import '../../../lib.dart';

abstract class TalentHomeRepository {
  Future<Either<Failure, GetScheduleTalent>> talentGetSchedule();
  Future<Either<Failure, bool>> talentCreateSchedule(Map<String, dynamic> data);
}
