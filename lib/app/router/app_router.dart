import 'package:dealim_flutter_mobile_2025/app/router/app_route.dart';
import 'package:dealim_flutter_mobile_2025/presentaion/main/main_screen.dart';
import 'package:dealim_flutter_mobile_2025/presentaion/start/start_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: AppRoute.start.toPath,
  routes: [
    GoRoute(
      path: AppRoute.start.toPath,
      builder: (context, state) => StartScreen(),
    ),
    GoRoute(
      path: AppRoute.main.toPath,
      builder: (context, state) => MainScreen(),
    ),
  ],
);
