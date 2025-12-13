import 'package:dcex/features/search/presentation/screens/search_screen.dart';
import 'package:dcex/features/settings/presentation/screens/settings_exchange_screen.dart';
import 'package:dcex/features/settings/presentation/screens/settings_language_screen.dart';
import 'package:dcex/features/settings/presentation/screens/settings_pairs_screen.dart';
import 'package:dcex/features/settings/presentation/screens/settings_screen.dart';
import 'package:dcex/features/settings/presentation/screens/settings_theme_screen.dart';
import 'package:dcex/routes/router_consts.dart';
import 'package:dcex/features/details/presentation/screens/detail_screen.dart';
import 'package:dcex/features/home/presentation/screens/home_screen.dart';
import 'package:dcex/routes/widgets/error_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

Page<void> _buildPageWithAnimation({
  required Widget child,
  required GoRouterState state,
  Offset begin = const Offset(1.0, 0.0),
  Offset end = Offset.zero,
  Curve curve = Curves.easeInOut,
}) {
  return CustomTransitionPage(
    // key: state.pageKey,
    child: child,
    barrierColor: Colors.amber,
    barrierLabel: "barrierLabel",
    transitionDuration: Duration(seconds: 2),
    transitionsBuilder:
        (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) {
          var tween = Tween(
            begin: begin,
            end: end,
          ).chain(CurveTween(curve: curve));

          var offsetAnimation = animation.drive(tween);
          return SlideTransition(position: offsetAnimation, child: child);
        },
  );
}

List<RouteBase> get homeRoutes => $homePageRouter.routes;
List<RouteBase> get settingsRoutes => $settingsPageRouter.routes;
List<RouteBase> get searchRoutes => $searchPageRouter.routes;
List<RouteBase> get errorRoutes => $errorPageRouter.routes;

@TypedGoRoute<HomePageRouter>(
  path: RouterConsts.home,
  routes: <TypedRoute>[
    TypedGoRoute<PairDetailRouter>(path: RouterConsts.pairDetail),
  ],
)
@immutable
class HomePageRouter extends GoRouteData with _$HomePageRouter {
  const HomePageRouter();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return _buildPageWithAnimation(child: const HomeScreen(), state: state);
  }
}

@immutable
class PairDetailRouter extends GoRouteData with _$PairDetailRouter {
  final String symbol;
  const PairDetailRouter({required this.symbol});

  // @override
  // Page<void> buildPage(BuildContext context, GoRouterState state) {
  //   return _buildPageWithAnimation(
  //     child: DetailsPage(symbol: symbol),
  //     state: state,
  //   );
  // }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailsScreen(symbol: symbol);
  }
}

@TypedGoRoute<SettingsPageRouter>(
  path: RouterConsts.settings,
  routes: <TypedRoute>[
    TypedGoRoute<SettingsLanuageRouter>(path: RouterConsts.language),
    TypedGoRoute<SettingsExchangeRouter>(path: RouterConsts.favoriteExchange),
    TypedGoRoute<SettingsPairRouter>(path: RouterConsts.favoritePair),
    TypedGoRoute<SettingsThemeRouter>(path: RouterConsts.theme),
  ],
)
@immutable
class SettingsPageRouter extends GoRouteData with _$SettingsPageRouter {
  const SettingsPageRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsScreen();
  }
}

class SettingsLanuageRouter extends GoRouteData with _$SettingsLanuageRouter {
  const SettingsLanuageRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsLanguageScreen();
  }
}

class SettingsExchangeRouter extends GoRouteData with _$SettingsExchangeRouter {
  const SettingsExchangeRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsExchangeScreen();
  }
}

class SettingsThemeRouter extends GoRouteData with _$SettingsThemeRouter {
  const SettingsThemeRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsThemeScreen();
  }
}

class SettingsPairRouter extends GoRouteData with _$SettingsPairRouter {
  const SettingsPairRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsPairsScreen();
  }
}

@TypedGoRoute<SearchPageRouter>(path: RouterConsts.search)
class SearchPageRouter extends GoRouteData with _$SearchPageRouter {
  const SearchPageRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchScreen();
  }
}

@TypedGoRoute<ErrorPageRouter>(path: RouterConsts.error)
class ErrorPageRouter extends GoRouteData with _$ErrorPageRouter {
  const ErrorPageRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ErrorPage();
  }
}
