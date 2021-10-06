import 'package:flutter/material.dart';

import 'tokens/alert_tokens.dart';
import 'tokens/badge_tokens.dart';
import 'tokens/base_tokens.dart';
import 'tokens/border_radius_tokens.dart';
import 'tokens/button_tokens.dart';
import 'tokens/color_tokens.dart';
import 'tokens/icon_tokens.dart';
import 'tokens/text_tokens.dart';
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

@immutable
class OrbitThemeData {
  final ColorTokens colorTokens;
  final BaseTokens baseTokens;
  final TypographyTokens typographyTokens;

  final TextTokens textTokens;
  final BorderRadiusTokens borderRadius;
  final IconTokens iconTokens;

  final AlertTokens alertTokens;
  final BadgeTokens badgeTokens;
  final ButtonTokens buttonTokens;

  ThemeData get materialTheme => ThemeData(
        colorScheme: ColorScheme.light(
          primary: colorTokens.productNormal,
        ),
      );

  factory OrbitThemeData({
    ColorTokens? colorTokens,
    BaseTokens? baseTokens,
    TypographyTokens? typographyTokens,
    TextTokens? textTokens,
    BorderRadiusTokens? borderRadiusTokens,
    IconTokens? iconTokens,
    AlertTokens? alertTokens,
    BadgeTokens? badgeTokens,
    ButtonTokens? buttonTokens,
  }) {
    colorTokens ??= const ColorTokens();
    baseTokens ??= const BaseTokens();
    typographyTokens ??= TypographyTokens();

    textTokens ??= TextTokens.fromTokens(colorTokens, baseTokens);
    borderRadiusTokens ??= BorderRadiusTokens.fromTokens(baseTokens);
    iconTokens ??= IconTokens.fromTokens(colorTokens, baseTokens);
    // component tokens
    alertTokens ??= AlertTokens.fromTokens(colorTokens, baseTokens);
    badgeTokens ??= BadgeTokens.fromTokens(colorTokens, baseTokens);
    buttonTokens ??= ButtonTokens.fromTokens(colorTokens, baseTokens);

    return OrbitThemeData.raw(
      colorTokens: colorTokens,
      baseTokens: baseTokens,
      typographyTokens: typographyTokens,
      textTokens: textTokens,
      borderRadius: borderRadiusTokens,
      iconTokens: iconTokens,
      alertTokens: alertTokens,
      badgeTokens: badgeTokens,
      buttonTokens: buttonTokens,
    );
  }

  const OrbitThemeData.raw({
    required this.colorTokens,
    required this.baseTokens,
    required this.typographyTokens,
    required this.textTokens,
    required this.borderRadius,
    required this.iconTokens,
    required this.alertTokens,
    required this.badgeTokens,
    required this.buttonTokens,
  });

  factory OrbitThemeData.light() => OrbitThemeData(
        colorTokens: ColorTokens(),
        baseTokens: BaseTokens(),
        typographyTokens: TypographyTokens(),
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
