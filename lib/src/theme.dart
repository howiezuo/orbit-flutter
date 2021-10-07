import 'package:flutter/material.dart';

import 'tokens/alert_tokens.dart';
import 'tokens/badge_tokens.dart';
import 'tokens/base_tokens.dart';
import 'tokens/border_radius_tokens.dart';
import 'tokens/button_link_tokens.dart';
import 'tokens/button_tokens.dart';
import 'tokens/card_tokens.dart';
import 'tokens/checkbox_tokens.dart';
import 'tokens/color_tokens.dart';
import 'tokens/icon_tokens.dart';
import 'tokens/shadow_tokens.dart';
import 'tokens/text_tokens.dart';
import 'tokens/typography_tokens.dart';

export 'foundation/icons.dart';
export 'foundation/palette.dart';
export 'tokens/alert_tokens.dart';
export 'tokens/badge_tokens.dart';
export 'tokens/base_tokens.dart';
export 'tokens/border_radius_tokens.dart';
export 'tokens/button_tokens.dart';
export 'tokens/button_link_tokens.dart';
export 'tokens/card_tokens.dart';
export 'tokens/checkbox_tokens.dart';
export 'tokens/color_tokens.dart';
export 'tokens/form_tokens.dart';
export 'tokens/icon_tokens.dart';
export 'tokens/input_tokens.dart';
export 'tokens/radio_tokens.dart';
export 'tokens/tag_tokens.dart';
export 'tokens/text_tokens.dart';
export 'tokens/typography_tokens.dart';

@immutable
class OrbitThemeData {
  final ColorTokens colorTokens;
  final BaseTokens baseTokens;

  final BorderRadiusTokens borderRadius;
  final IconTokens iconTokens;
  final ShadowTokens shadowTokens;
  final TextTokens textTokens;
  final TypographyTokens typographyTokens;

  final AlertTokens alertTokens;
  final BadgeTokens badgeTokens;
  final ButtonTokens buttonTokens;
  final ButtonLinkTokens buttonLinkTokens;
  final CardTokens cardTokens;
  final CheckBoxTokens checkBoxTokens;

  ThemeData get materialTheme => ThemeData(
        colorScheme: ColorScheme.light(
          primary: colorTokens.productNormal,
        ),
      );

  factory OrbitThemeData({
    ColorTokens? colorTokens,
    BaseTokens? baseTokens,
    BorderRadiusTokens? borderRadiusTokens,
    IconTokens? iconTokens,
    ShadowTokens? shadowTokens,
    TextTokens? textTokens,
    TypographyTokens? typographyTokens,
    AlertTokens? alertTokens,
    BadgeTokens? badgeTokens,
    ButtonTokens? buttonTokens,
    ButtonLinkTokens? buttonLinkTokens,
    CardTokens? cardTokens,
    CheckBoxTokens? checkBoxTokens,
  }) {
    colorTokens ??= const ColorTokens();
    baseTokens ??= const BaseTokens();

    borderRadiusTokens ??= BorderRadiusTokens.fromTokens(baseTokens);
    iconTokens ??= IconTokens.fromTokens(colorTokens, baseTokens);
    shadowTokens ??= ShadowTokens.fromTokens(colorTokens);
    textTokens ??= TextTokens.fromTokens(colorTokens, baseTokens);
    typographyTokens ??= TypographyTokens.fromTokens(textTokens);
    // component tokens
    alertTokens ??= AlertTokens.fromTokens(colorTokens, baseTokens);
    badgeTokens ??= BadgeTokens.fromTokens(colorTokens, baseTokens);
    buttonTokens ??= ButtonTokens.fromTokens(colorTokens, baseTokens);
    buttonLinkTokens ??= ButtonLinkTokens.fromTokens(colorTokens, baseTokens);
    cardTokens ??= CardTokens.fromTokens(colorTokens, baseTokens);
    checkBoxTokens ??= CheckBoxTokens.fromTokens(colorTokens, baseTokens);

    return OrbitThemeData.raw(
      colorTokens: colorTokens,
      baseTokens: baseTokens,
      borderRadius: borderRadiusTokens,
      iconTokens: iconTokens,
      shadowTokens: shadowTokens,
      textTokens: textTokens,
      typographyTokens: typographyTokens,
      alertTokens: alertTokens,
      badgeTokens: badgeTokens,
      buttonTokens: buttonTokens,
      buttonLinkTokens: buttonLinkTokens,
      cardTokens: cardTokens,
      checkBoxTokens: checkBoxTokens,
    );
  }

  const OrbitThemeData.raw({
    required this.colorTokens,
    required this.baseTokens,
    required this.borderRadius,
    required this.iconTokens,
    required this.shadowTokens,
    required this.textTokens,
    required this.typographyTokens,
    required this.alertTokens,
    required this.badgeTokens,
    required this.buttonTokens,
    required this.buttonLinkTokens,
    required this.cardTokens,
    required this.checkBoxTokens,
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
