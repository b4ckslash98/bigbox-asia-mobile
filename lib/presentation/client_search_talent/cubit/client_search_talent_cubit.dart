import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';
import 'client_search_talent_state.dart';

class ClientSearchTalentCubit extends HydratedCubit<ClientSearchTalentState> {
  ClientSearchTalentCubit(
    this._getClientSearchTalentUsecase,
  ) : super(ClientSearchTalentState());
  final GetClientSearchTalentUsecase _getClientSearchTalentUsecase;

  Future<void> searchTalent() async {
    final result = await _getClientSearchTalentUsecase(NoParams());

    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to search talent.');
      },
      (r) async {
        emit(state.copyWith(talentResults: r));
      },
    );
  }

  @override
  ClientSearchTalentState? fromJson(Map<String, dynamic> json) {
    return ClientSearchTalentState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ClientSearchTalentState state) {
    return state.toJson();
  }
}
