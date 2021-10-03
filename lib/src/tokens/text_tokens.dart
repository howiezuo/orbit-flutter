import 'package:flutter/widgets.dart';

import '../theme.dart';

class TextTokens {
  final Color colorPrimary;
  final Color colorSecondary;

  final double fontSizeSmall;
  final double fontSizeNormal;
  final double fontSizeLarge;

  const TextTokens({
    required this.colorPrimary,
    required this.colorSecondary,
    required this.fontSizeSmall,
    required this.fontSizeNormal,
    required this.fontSizeLarge,
  });

  static TextTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final typogrphy = theme.typographyTokens;
    return TextTokens(
      colorPrimary: colors.inkNormal,
      colorSecondary: colors.inkLight,
      fontSizeSmall: typogrphy.fontSizeSmall,
      fontSizeNormal: typogrphy.fontSizeMedium,
      fontSizeLarge: typogrphy.fontSizeLarge,
    );
  }
}
