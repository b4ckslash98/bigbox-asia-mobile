import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../../../lib.dart';

class ClientPostingJobCubit extends HydratedCubit<ClientPostingJobState> {
  ClientPostingJobCubit(
    this._clientCreateJobsUsecase,
    this._getLocationUsecase,
    this._getCategoriesUsecase,
  ) : super(ClientPostingJobState());

  final ClientCreateJobsUsecase _clientCreateJobsUsecase;
  final GetLocationUsecase _getLocationUsecase;
  final GetCategoriesUsecase _getCategoriesUsecase;
  Future<void> getCategories() async {
    final result = await _getCategoriesUsecase(NoParams());

    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to fetch categories.');
      },
      (r) async {
        emit(state.copyWith(categories: r));
      },
    );
  }

  Future<void> getLocation() async {
    final result = await _getLocationUsecase(NoParams());

    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to fetch location.');
      },
      (r) async {
        print('Location fetched: ${r}');
        emit(state.copyWith(getLocation: r));
      },
    );
  }

  Future<void> createJob(Map<String, dynamic> data) async {
    final params = ClientCreateJobsParam(data: data);
    final result = await _clientCreateJobsUsecase(params);

    result.fold(
      (l) async {
        Fluttertoast.showToast(msg: 'Failed to create job.');
      },
      (r) async {
        if (r) {
          Fluttertoast.showToast(msg: 'Job created successfully.');
          return;
        }
      },
    );
  }

  @override
  ClientPostingJobState? fromJson(Map<String, dynamic> json) {
    return ClientPostingJobState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ClientPostingJobState state) {
    return state.toJson();
  }
}
