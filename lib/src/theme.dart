import 'package:flutter/material.dart' hide Typography;

import 'tokens/base_tokens.dart';
import 'tokens/color_tokens.dart';
import 'tokens/opacity_tokens.dart';
import 'tokens/typography_tokens.dart';

export 'foundation/icons.dart';
export 'foundation/palette.dart';
export 'tokens/base_tokens.dart';
export 'tokens/alert_tokens.dart';
export 'tokens/badge_tokens.dart';
export 'tokens/border_radius_tokens.dart';
export 'tokens/button_tokens.dart';
export 'tokens/color_tokens.dart';
export 'tokens/checkbox_tokens.dart';
export 'tokens/form_tokens.dart';
export 'tokens/icon_tokens.dart';
export 'tokens/input_tokens.dart';
export 'tokens/radio_tokens.dart';
export 'tokens/tag_tokens.dart';
export 'tokens/text_tokens.dart';

class OrbitThemeData {
  final ColorTokens colorTokens;
  final BaseTokens baseTokens;
  final TypographyTokens typographyTokens;
  final OpacityTokens opacityTokens;

  final ThemeData materialTheme;

  OrbitThemeData({
    required this.colorTokens,
    required this.baseTokens,
    required this.typographyTokens,
    required this.opacityTokens,
  }) : materialTheme = ThemeData(
          colorScheme: ColorScheme.light(
            primary: colorTokens.productNormal,
          ),
        );

  factory OrbitThemeData.light() => OrbitThemeData(
        colorTokens: ColorTokens(),
        baseTokens: BaseTokens(),
        typographyTokens: TypographyTokens(),
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
