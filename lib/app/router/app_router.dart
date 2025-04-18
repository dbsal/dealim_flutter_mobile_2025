import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/main/mainScreen.dart';
import 'package:daelim_2025/presentation/result/result_screen.dart';
import 'package:daelim_2025/presentation/start/Startscreen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: AppRoute.start.topath,
  routes: [
    GoRoute(
      path: AppRoute.start.topath,
      name: AppRoute.start.name,
      builder: (context, state) => Startscreen(),
    ),
    GoRoute(
      path: AppRoute.main.topath,
      name: AppRoute.main.name,
      builder: (context, state) => MainScreen(),
    ),
    GoRoute(
      path: AppRoute.result.topath,
      name: AppRoute.result.name,
      builder: (context, state) {
        final bmi = state.uri.queryParameters['bmi'];
        //가져올 값
        return ResultScreen(bmi: double.parse(bmi!));
      },
    ),
  ],
);
