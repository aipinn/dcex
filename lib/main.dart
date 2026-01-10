import 'package:dcex/core/theme/app_theme.dart';
import 'package:dcex/core/theme/app_theme_provider.dart';
import 'package:dcex/routes/router_config.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('es')],
      fallbackLocale: Locale('en'),
      path: 'assets/translations',
      child: ProviderScope(child: const MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProviderProvider);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          title: 'DCEX',
          darkTheme: AppTheme.dark(),
          theme: AppTheme.light(),
          themeMode: themeMode,
          routerConfig: gorouter,
        );
      },
    );
  }
}
