import 'package:flutter/material.dart' show ThemeData;
import 'package:flutter/widgets.dart';
import 'package:orbit/src/tokens/opacity_tokens.dart';
import 'package:orbit/src/tokens/size_tokens.dart';
import 'package:orbit/src/tokens/typography_tokens.dart';

import 'tokens/border_radius_tokens.dart';
import 'tokens/color_tokens.dart';
import 'tokens/space_tokens.dart';

class OrbitThemeData {
  final ColorTokens colorTokens;
  final TypographyTokens typographyTokens;
  final SizeTokens sizeTokens;
  final SpaceTokens spaceTokens;
  final BorderRadiusTokens borderRadiusTokens;
  final OpacityTokens opacityTokens;

  final ThemeData materialTheme;

  OrbitThemeData({
    required this.colorTokens,
    required this.typographyTokens,
    required this.sizeTokens,
    required this.spaceTokens,
    required this.borderRadiusTokens,
    required this.opacityTokens,
  }) : materialTheme = ThemeData();

  factory OrbitThemeData.light() => OrbitThemeData(
        colorTokens: Colors(),
        typographyTokens: Typography(),
        sizeTokens: SizeStyles(),
        spaceTokens: SpaceStyles(),
        borderRadiusTokens: BorderRadiusStyles(),
        opacityTokens: OpacityStyles(),
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
    return _themeData != oldWidget._themeData;
  }
}
