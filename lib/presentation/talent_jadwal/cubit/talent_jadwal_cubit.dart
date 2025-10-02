import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';
import 'cubit.dart';

class TalentJadwalCubit extends HydratedCubit<TalentJadwalState> {
  TalentJadwalCubit(
      this._getScheduleTalentUsecase, this._postCreateScheduleTalentUsecase)
      : super(TalentJadwalState()) {}

  final GetScheduleTaletUsecase _getScheduleTalentUsecase;
  final PostCreateScheduleTalentUsecase _postCreateScheduleTalentUsecase;

  Future<void> postCreateScheduleTalentUsecase(
      Map<String, dynamic> data) async {
    final result = await _postCreateScheduleTalentUsecase(
      PostCreateScheduleTalentUsecaseParam(data: data),
    );
    result.fold(
      (failure) {
        Fluttertoast.showToast(msg: failure.message);
        print('Error creating schedule talent: ${failure.message}');
      },
      (success) {
        Fluttertoast.showToast(msg: 'Schedule created successfully');
        print('Schedule created successfully');
      },
    );
  }

  Future<void> getScheduleTalentUsecase() async {
    final result = await _getScheduleTalentUsecase(NoParams());
    result.fold(
      (failure) {
        Fluttertoast.showToast(msg: failure.message);
        print('Error fetching schedule talent: ${failure.message}');
      },
      (scheduleTalent) => emit(state.copyWith(scheduleTalent: scheduleTalent)),
    );
  }

  @override
  TalentJadwalState? fromJson(Map<String, dynamic> json) {
    return TalentJadwalState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TalentJadwalState state) {
    return state.toJson();
  }
}
