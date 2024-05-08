import 'package:go_router/go_router.dart';
import 'package:widget_all/presentation/screens/progress/screens.dart';
import 'package:widget_all/presentation/snack/snack_screen.dart';

final GoRouter appRouter = GoRouter(initialLocation: "/", routes: <RouteBase>[
  GoRoute(path: "/", name: "home", builder: (context, state) => const Home()),
  GoRoute(
      path: "/buttons",
      name: "butttons",
      builder: (context, state) => const ButtonScreen()),
  GoRoute(
      path: "/card",
      name: "card",
      builder: (context, state) => const CardScreen()),
  GoRoute(
    path: "/progress",
    name: "progress",
    builder: (context, state) => const ProgressScreen(),
  ),
  GoRoute(
    path: "/snack",
    name: "snack",
    builder: (context, state) => const SnackScreen(),
  ),
  GoRoute(
    path: "/control",
    name: "control",
    builder: (context, state) => const ControlScreen(),
  ),
  GoRoute(
    path: "/infinity",
    name: "infinity",
    builder: (context, state) => const InfinityScreen(),
  ),
  GoRoute(
    path: "/counter",
    name: "counter",
    builder: (context, state) => const CounterScreen(),
  )
]);
