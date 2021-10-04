import 'package:flutter/widgets.dart';

import '../theme.dart';

class TextTokens {
  final Color colorPrimary;
  final Color colorSecondary;

  final double fontSizeSmall;
  final double fontSizeNormal;
  final double fontSizeLarge;

  final double lineHeightNormal;

  const TextTokens({
    required this.colorPrimary,
    required this.colorSecondary,
    required this.fontSizeSmall,
    required this.fontSizeNormal,
    required this.fontSizeLarge,
    required this.lineHeightNormal,
  });

  static TextTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final baseTokens = theme.baseTokens;

    return TextTokens(
      colorPrimary: colors.inkNormal,
      colorSecondary: colors.inkLight,
      fontSizeSmall: baseTokens.fontSizeSmall,
      fontSizeNormal: baseTokens.fontSizeMedium,
      fontSizeLarge: baseTokens.fontSizeLarge,
      lineHeightNormal: 20,
    );
  }
}
