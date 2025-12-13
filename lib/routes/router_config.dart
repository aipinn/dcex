import 'package:dcex/routes/router.dart';
import 'package:dcex/routes/router_consts.dart';
import 'package:dcex/routes/widgets/error_page.dart';
import 'package:dcex/features/home/presentation/screens/home_screen.dart';
import 'package:dcex/routes/widgets/main_bottom_tabbar.dart';
import 'package:dcex/features/search/presentation/screens/search_screen.dart';
import 'package:dcex/features/settings/presentation/screens/settings_screen.dart';
import 'package:go_router/go_router.dart';

final gorouter = GoRouter(
  initialLocation: RouterConsts.home,
  debugLogDiagnostics: true,
  errorBuilder: (context, state) => ErrorPage(),
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          MainBottomTabbar(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterConsts.home,
              builder: (context, state) => const HomeScreen(),
              routes: homeRoutes,
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterConsts.search,
              builder: (context, state) => const SearchScreen(),
              routes: searchRoutes,
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterConsts.settings,
              builder: (context, state) => const SettingsScreen(),
              routes: settingsRoutes,
            ),
          ],
        ),
      ],
    ),
  ],
);
