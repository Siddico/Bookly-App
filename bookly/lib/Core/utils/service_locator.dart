import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Features/home/data/repos/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(getIt.get<ApiService>()),
  );
  // getIt.registerSingleton<AuthRepo>(
  //   AuthRepo(
  //     getIt.get<ApiService>(),
  //   ),
  // );
}

// class AuthRepo {
//   final ApiService apiService;
//   AuthRepo(this.apiService);
// }
