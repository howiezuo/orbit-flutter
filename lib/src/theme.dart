import 'package:orbit/orbit.dart';

import 'tokens/border_radius_tokens.dart';
import 'tokens/color_tokens.dart';
import 'tokens/opacity_tokens.dart';
import 'tokens/size_tokens.dart';
import 'tokens/space_tokens.dart';
import 'tokens/typography_tokens.dart';
export 'foundation/icons.dart';
export 'foundation/palette.dart';
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
export 'tokens/space_tokens.dart';
export 'tokens/tag_tokens.dart';
export 'tokens/text_tokens.dart';

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
  }) : materialTheme = ThemeData(
          colorScheme: ColorScheme.light(
            primary: colorTokens.productNormal,
          ),
        );

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
