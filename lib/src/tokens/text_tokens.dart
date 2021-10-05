import 'package:flutter/widgets.dart';

import '../theme.dart';

@immutable
class TextTokens {
  final Color? colorPrimary;
  final Color? colorSecondary;

  final double? fontSizeSmall;
  final double? fontSizeNormal;
  final double? fontSizeLarge;

  final double? lineHeight;
  final double? lineHeightSmall;
  final double? lineHeightNormal;
  final double? lineHeightLarge;

  final double? lineHeightHeading;

  const TextTokens({
    this.colorPrimary,
    this.colorSecondary,
    this.fontSizeSmall,
    this.fontSizeNormal,
    this.fontSizeLarge,
    this.lineHeight,
    this.lineHeightSmall,
    this.lineHeightNormal,
    this.lineHeightLarge,
    this.lineHeightHeading,
  });

  const TextTokens.raw({
    required Color this.colorPrimary,
    required Color this.colorSecondary,
    required double this.fontSizeSmall,
    required double this.fontSizeNormal,
    required double this.fontSizeLarge,
    required double this.lineHeight,
    required double this.lineHeightSmall,
    required double this.lineHeightNormal,
    required double this.lineHeightLarge,
    required double this.lineHeightHeading,
  });

  factory TextTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return TextTokens.raw(
      colorPrimary: colors.inkNormal,
      colorSecondary: colors.inkLight,
      fontSizeSmall: bases.fontSizeSmall,
      fontSizeNormal: bases.fontSizeMedium,
      fontSizeLarge: bases.fontSizeLarge,
      lineHeight: bases.lineHeight,
      lineHeightSmall: 16,
      lineHeightNormal: 20,
      lineHeightLarge: 22,
      lineHeightHeading: 1.2,
    );
  }

  factory TextTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return TextTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
