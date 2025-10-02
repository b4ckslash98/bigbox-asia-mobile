import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../config.dart';
import '../lib.dart';
import '../presentation/users/cubit/cubit.dart';

final di = GetIt.I;
Future<void> setupInjection() async {
  try {
    _utils();
    _datasources();
    _repositories();
    _useCases();
    _cubits();
  } catch (e) {
    print(e);
  }
}

void _utils() {
  di.registerLazySingleton(() => Connectivity());
  di.registerSingleton<AppRouter>(AppRouter());
  di.registerSingleton<NetworkInfo>(NetworkInfoImpl(di()));
  di.registerLazySingleton(
    () {
      final dio = Dio();
      dio.options.baseUrl = AppConfig.baseURL;
      dio.interceptors.add(DioTokenInterceptor(di.call, di()));
      dio.interceptors.add(LogInterceptor());
      return dio;
    },
  );
}

void _datasources() {
  di.registerSingleton<AuthApi>(AuthApiImpl(di()));
  di.registerSingleton<ClientJobsApi>(ClientJobsApiImpl(di()));
  di.registerSingleton<LocationApi>(LocationApiImpl(di()));
  di.registerSingleton<CategoriesApi>(CategoriesApiImpl(di()));
  di.registerSingleton<UploadApi>(UploadApiImpl(di()));
  di.registerSingleton<AdminJobsApi>(AdminJobsApiImpl(di()));
  di.registerSingleton<TalentJobsApi>(TalentJobsApiImpl(di()));
  di.registerSingleton<AdminHomeApi>(AdminHomeApiImpl(di()));
  di.registerSingleton<TalentProfileApi>(TalentProfileApiImpl(di()));
  di.registerSingleton<ClientHomeApi>(ClientHomeApiImpl(di()));
  di.registerSingleton<AdminUserApi>(AdminUserApiImpl(di()));
  di.registerSingleton<PaymentApi>(PaymentApiImpl(di()));
  di.registerSingleton<TalentHomeApi>(TalentHomeApiImpl(di()));
}

void _repositories() {
  di.registerSingleton<AuthRepository>(AuthRepositoryImpl(di(), di()));
  di.registerSingleton<ClientJobsRepository>(
      ClientJobsRepositoryImpl(di(), di()));
  di.registerSingleton<LocationRepository>(LocationRepositoryImpl(di(), di()));
  di.registerSingleton<CategoriesRepository>(
      CategoriesRepositoryImpl(di(), di()));
  di.registerSingleton<UploadRepository>(PostUploadRepositoryImpl(di(), di()));
  di.registerSingleton<AdminJobsRepository>(
      AdminJobsRepositoryImpl(di(), di()));
  di.registerSingleton<TalentJobsRepository>(
      TalentJobsRepositoryImpl(di(), di()));
  di.registerSingleton<AdminHomeRepository>(
      AdminHomeRepositoryImpl(di(), di()));
  di.registerSingleton<ClientHomeRepository>(
      ClientHomeRepositoryImpl(di(), di()));
  di.registerSingleton<AdminUserRepository>(
      AdminUserRepositoryImpl(di(), di()));
  di.registerSingleton<PaymentRepository>(PaymentRepositoryImpl(di(), di()));
  di.registerSingleton<TalentHomeRepository>(
      TalentHomeRepositoryImpl(di(), di()));
}

void _useCases() {
  di.registerSingleton<LoginUseCase>(LoginUseCase(di()));
  di.registerSingleton<CompleteProfileTalentUseCase>(
      CompleteProfileTalentUseCase(di()));
  di.registerSingleton<GetTalentProfileUsecase>(GetTalentProfileUsecase(di()));
  di.registerSingleton<ClientCreateJobsUsecase>(ClientCreateJobsUsecase(di()));
  di.registerSingleton<GetLocationUsecase>(GetLocationUsecase(di()));
  di.registerSingleton<PostUploadUsecase>(PostUploadUsecase(di()));
  di.registerSingleton<GetCategoriesUsecase>(GetCategoriesUsecase(di()));
  di.registerSingleton<RegisterUsecase>(RegisterUsecase(di()));
  di.registerSingleton<GetClientUpdateJobUsecase>(
      GetClientUpdateJobUsecase(di()));
  di.registerSingleton<GetClientJobDetailUsecase>(
      GetClientJobDetailUsecase(di()));
  di.registerSingleton<GetClientMyJobUsecase>(GetClientMyJobUsecase(di()));
  di.registerSingleton<AdminApproveJobsUsecase>(AdminApproveJobsUsecase(di()));
  di.registerSingleton<GetTalentJobsUsecase>(GetTalentJobsUsecase(di()));
  di.registerSingleton<TalentApplyJobsUsecase>(TalentApplyJobsUsecase(di()));
  di.registerSingleton<GetAdminTotalClientUsecase>(
      GetAdminTotalClientUsecase(di()));
  di.registerSingleton<GetAdminTotalJobUsecase>(GetAdminTotalJobUsecase(di()));
  di.registerSingleton<GetAdminTotalJobPendingUsecase>(
      GetAdminTotalJobPendingUsecase(di()));
  di.registerSingleton<GetAdminTotalTalentUsecase>(
      GetAdminTotalTalentUsecase(di()));
  di.registerSingleton<GetClientSearchTalentUsecase>(
      GetClientSearchTalentUsecase(di()));
  di.registerSingleton<GetClientTotalApplicationUsecase>(
      GetClientTotalApplicationUsecase(di()));
  di.registerSingleton<GetClientTotalJobsUsecase>(
      GetClientTotalJobsUsecase(di()));
  di.registerSingleton<GetAdminTalentUsecase>(GetAdminTalentUsecase(di()));
  di.registerSingleton<GetAdminClientUsecase>(GetAdminClientUsecase(di()));
  di.registerSingleton<PutAdminChangeStatusTalentUsecase>(
      PutAdminChangeStatusTalentUsecase(di()));
  di.registerSingleton<PutAdminClientApproveUsecase>(
      PutAdminClientApproveUsecase(di()));
  di.registerSingleton<GetAdminDetailTalentUsecase>(
      GetAdminDetailTalentUsecase(di()));
  di.registerSingleton<PutAdminModerasiBudgetJobsUsecase>(
      PutAdminModerasiBudgetJobsUsecase(di()));
  di.registerSingleton<GetAplicationClientJobUsecase>(
      GetAplicationClientJobUsecase(di()));
  di.registerSingleton<PutClientChangeStatusApplicationUsecase>(
      PutClientChangeStatusApplicationUsecase(di()));
  di.registerSingleton<PostAdminAddTalentUsecase>(
      PostAdminAddTalentUsecase(di()));
  di.registerSingleton<GetMasterPaymentCodeUsecase>(
      GetMasterPaymentCodeUsecase(di()));
  di.registerSingleton<GetFeeRegisterTalentUsecase>(
      GetFeeRegisterTalentUsecase(di()));
  di.registerSingleton<GetListPaymentMethodUsecase>(
      GetListPaymentMethodUsecase(di()));
  di.registerSingleton<PostSetPaymentChargeUsecase>(
      PostSetPaymentChargeUsecase(di()));
  di.registerSingleton<GetScheduleTaletUsecase>(GetScheduleTaletUsecase(di()));
  di.registerSingleton<PostCreateScheduleTalentUsecase>(
      PostCreateScheduleTalentUsecase(di()));
  di.registerSingleton<PostConvertStringNameUsecase>(
      PostConvertStringNameUsecase(di()));
}

void _cubits() {
  di.registerFactory(
      () => AuthCubit(di(), di(), di(), di(), di(), di(), di(), di()));
  di.registerFactory(
      () => HomeCubit(di(), di(), di(), di(), di(), di(), di(), di(), di()));
  di.registerFactory(() => ClientPostingJobCubit(di(), di(), di()));
  di.registerFactory(
      () => JobsCubit(di(), di(), di(), di(), di(), di(), di(), di()));
  di.registerFactory(() => ClientSearchTalentCubit(
        di(),
      ));
  di.registerFactory(() => AdminKelolaClientCubit(di(), di()));
  di.registerFactory(() => UsersCubit(di(), di(), di()));
  di.registerFactory(() => AdminDetailUsersCardCubit(di()));
  di.registerFactory(() => AdminModerasiBudgetCubit(di()));
  di.registerFactory(() => AdminDetailJobCardCubit(di()));
  di.registerFactory(() => TalentDetailJobCardCubit(di()));
  di.registerFactory(() => ClientDetailJobCardCubit(di(), di(), di()));
  di.registerFactory(() => AdminAddTalentCubit(di(), di()));
  di.registerFactory(() => PaymentCubit(di(), di(), di(), di()));
  di.registerFactory(() => TalentJadwalCubit(di(), di()));
}
