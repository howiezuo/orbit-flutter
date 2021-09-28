library orbit;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'src/theme.dart';

export 'src/theme.dart';
export 'src/foundation/icons.dart';
export 'src/foundation/palette.dart';
export 'src/components/alert.dart';
export 'src/components/badge.dart';
export 'src/components/button.dart';
export 'src/components/card.dart';
export 'src/tokens/alert_tokens.dart';
export 'src/tokens/border_radius_tokens.dart';
export 'src/tokens/button_tokens.dart';
export 'src/tokens/color_tokens.dart';
export 'src/tokens/icon_tokens.dart';
export 'src/tokens/space_tokens.dart';
export 'src/tokens/badge_tokens.dart';

class OrbitApp extends StatelessWidget {
  final OrbitThemeData? theme;
  final GlobalKey<NavigatorState>? navigatorKey;
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  final Widget? home;
  final Map<String, WidgetBuilder>? routes;
  final String? initialRoute;
  final RouteFactory? onGenerateRoute;
  final InitialRouteListFactory? onGenerateInitialRoutes;
  final RouteFactory? onUnknownRoute;
  final List<NavigatorObserver>? navigatorObservers;
  final TransitionBuilder? builder;
  final String title;
  final GenerateAppTitle? onGenerateTitle;
  final ThemeMode? themeMode;
  final Locale? locale;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final LocaleListResolutionCallback? localeListResolutionCallback;
  final LocaleResolutionCallback? localeResolutionCallback;
  final Iterable<Locale> supportedLocales;
  final bool debugShowMaterialGrid;
  final bool showPerformanceOverlay;
  final bool checkerboardRasterCacheImages;
  final bool checkerboardOffscreenLayers;
  final bool showSemanticsDebugger;
  final bool debugShowCheckedModeBanner;
  final Map<LogicalKeySet, Intent>? shortcuts;
  final Map<Type, Action<Intent>>? actions;
  final String? restorationScopeId;
  final ScrollBehavior? scrollBehavior;

  const OrbitApp({
    Key? key,
    this.theme,
    this.navigatorKey,
    this.scaffoldMessengerKey,
    this.home,
    this.routes,
    this.initialRoute,
    this.onGenerateRoute,
    this.onGenerateInitialRoutes,
    this.onUnknownRoute,
    this.navigatorObservers,
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.themeMode = ThemeMode.system,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
    this.scrollBehavior,
  }) : super(key: key);

  OrbitThemeData _currentTheme() {
    final theme = this.theme ?? OrbitThemeData.light();
    return theme;
  }

  @override
  Widget build(BuildContext context) {
    final themeData = _currentTheme();
    return OrbitTheme(
      themeData: themeData,
      child: MaterialApp(
        navigatorKey: this.navigatorKey,
        scaffoldMessengerKey: this.scaffoldMessengerKey,
        home: this.home,
        routes: this.routes ?? const <String, WidgetBuilder>{},
        initialRoute: this.initialRoute,
        onGenerateRoute: this.onGenerateRoute,
        onGenerateInitialRoutes: this.onGenerateInitialRoutes,
        onUnknownRoute: this.onUnknownRoute,
        navigatorObservers:
            this.navigatorObservers ?? const <NavigatorObserver>[],
        builder: this.builder,
        title: this.title,
        onGenerateTitle: this.onGenerateTitle,
        theme: themeData.materialTheme,
        themeMode: this.themeMode,
        // color: designSystemTheme.colors.backgroundPrimary,
        locale: this.locale,
        localizationsDelegates: this.localizationsDelegates,
        localeListResolutionCallback: this.localeListResolutionCallback,
        localeResolutionCallback: this.localeResolutionCallback,
        supportedLocales: this.supportedLocales,
        debugShowMaterialGrid: this.debugShowMaterialGrid,
        showPerformanceOverlay: this.showPerformanceOverlay,
        checkerboardRasterCacheImages: this.checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: this.checkerboardOffscreenLayers,
        showSemanticsDebugger: this.showSemanticsDebugger,
        debugShowCheckedModeBanner: this.debugShowCheckedModeBanner,
        shortcuts: this.shortcuts,
        actions: this.actions,
        restorationScopeId: this.restorationScopeId,
        scrollBehavior: this.scrollBehavior,
      ),
    );
  }
}
