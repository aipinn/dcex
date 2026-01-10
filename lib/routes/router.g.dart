// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $homePageRouter,
  $settingsPageRouter,
  $searchPageRouter,
  $errorPageRouter,
  $futuresPageRouter,
];

RouteBase get $homePageRouter => GoRouteData.$route(
  path: '/',
  factory: _$HomePageRouter._fromState,
  routes: [
    GoRouteData.$route(
      path: 'pairdetails/:symbol',
      factory: _$PairDetailRouter._fromState,
    ),
  ],
);

mixin _$HomePageRouter on GoRouteData {
  static HomePageRouter _fromState(GoRouterState state) =>
      const HomePageRouter();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$PairDetailRouter on GoRouteData {
  static PairDetailRouter _fromState(GoRouterState state) =>
      PairDetailRouter(symbol: state.pathParameters['symbol']!);

  PairDetailRouter get _self => this as PairDetailRouter;

  @override
  String get location => GoRouteData.$location(
    '/pairdetails/${Uri.encodeComponent(_self.symbol)}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsPageRouter => GoRouteData.$route(
  path: '/settings',
  factory: _$SettingsPageRouter._fromState,
  routes: [
    GoRouteData.$route(
      path: 'language',
      factory: _$SettingsLanuageRouter._fromState,
    ),
    GoRouteData.$route(
      path: 'favoriteExchange',
      factory: _$SettingsExchangeRouter._fromState,
    ),
    GoRouteData.$route(
      path: 'favoritePair',
      factory: _$SettingsPairRouter._fromState,
    ),
    GoRouteData.$route(
      path: 'theme',
      factory: _$SettingsThemeRouter._fromState,
    ),
  ],
);

mixin _$SettingsPageRouter on GoRouteData {
  static SettingsPageRouter _fromState(GoRouterState state) =>
      const SettingsPageRouter();

  @override
  String get location => GoRouteData.$location('/settings');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$SettingsLanuageRouter on GoRouteData {
  static SettingsLanuageRouter _fromState(GoRouterState state) =>
      const SettingsLanuageRouter();

  @override
  String get location => GoRouteData.$location('/settings/language');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$SettingsExchangeRouter on GoRouteData {
  static SettingsExchangeRouter _fromState(GoRouterState state) =>
      const SettingsExchangeRouter();

  @override
  String get location => GoRouteData.$location('/settings/favoriteExchange');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$SettingsPairRouter on GoRouteData {
  static SettingsPairRouter _fromState(GoRouterState state) =>
      const SettingsPairRouter();

  @override
  String get location => GoRouteData.$location('/settings/favoritePair');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$SettingsThemeRouter on GoRouteData {
  static SettingsThemeRouter _fromState(GoRouterState state) =>
      const SettingsThemeRouter();

  @override
  String get location => GoRouteData.$location('/settings/theme');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $searchPageRouter =>
    GoRouteData.$route(path: '/search', factory: _$SearchPageRouter._fromState);

mixin _$SearchPageRouter on GoRouteData {
  static SearchPageRouter _fromState(GoRouterState state) =>
      const SearchPageRouter();

  @override
  String get location => GoRouteData.$location('/search');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $errorPageRouter =>
    GoRouteData.$route(path: '/error', factory: _$ErrorPageRouter._fromState);

mixin _$ErrorPageRouter on GoRouteData {
  static ErrorPageRouter _fromState(GoRouterState state) =>
      const ErrorPageRouter();

  @override
  String get location => GoRouteData.$location('/error');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $futuresPageRouter => GoRouteData.$route(
  path: '/futures',
  factory: _$FuturesPageRouter._fromState,
);

mixin _$FuturesPageRouter on GoRouteData {
  static FuturesPageRouter _fromState(GoRouterState state) =>
      const FuturesPageRouter();

  @override
  String get location => GoRouteData.$location('/futures');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
