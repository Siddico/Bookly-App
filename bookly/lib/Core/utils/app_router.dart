import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => SplashView()),
    GoRoute(path: KHomeView, builder: (context, state) => HomeView()),
  ]);
}