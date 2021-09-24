import 'package:flutter/material.dart' show ThemeData;
import 'package:flutter/widgets.dart';

import 'tokens/border_radius_tokens.dart';
import 'tokens/color_tokens.dart';
import 'tokens/space_token.dart';

class OrbitThemeData {
  final ColorTokens colorTokens;
  final SpaceTokens spaceTokens;
  final BorderRadiusTokens borderRadiusTokens;

  final ThemeData materialTheme;

  OrbitThemeData({
    required this.colorTokens,
    required this.spaceTokens,
    required this.borderRadiusTokens,
  }) : materialTheme = ThemeData();

  factory OrbitThemeData.light() => OrbitThemeData(
    colorTokens: Colors(),
        spaceTokens: SpaceStyles(),
        borderRadiusTokens: BorderRadiusStyles(),
      );
}

class OrbitTheme extends InheritedWidget {
  final OrbitThemeData _themeData;

  OrbitTheme({
    Key? key,
    required Widget child,
    required OrbitThemeData themeData,
  })  : this._themeData = themeData,
        super(key: key, child: child);

  static OrbitThemeData of(BuildContext context) {
    return context
            .dependOnInheritedWidgetOfExactType<OrbitTheme>()
            ?._themeData ??
        OrbitThemeData.light();
  }

  @override
  bool updateShouldNotify(covariant OrbitTheme oldWidget) {
    throw _themeData != oldWidget._themeData;
  }
}
