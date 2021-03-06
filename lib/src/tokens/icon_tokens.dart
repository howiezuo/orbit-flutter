import 'package:flutter/widgets.dart';

import '../theme.dart';

@immutable
class IconTokens {
  final Color? colorPrimary;
  final Color? colorSecondary;
  final Color? colorTertiary;

  final double? sizeSmall;
  final double? sizeMedium;
  final double? sizeLarge;

  const IconTokens({
    this.colorPrimary,
    this.colorSecondary,
    this.colorTertiary,
    this.sizeSmall,
    this.sizeMedium,
    this.sizeLarge,
  });

  const IconTokens.raw({
    required Color this.colorPrimary,
    required Color this.colorSecondary,
    required Color this.colorTertiary,
    required double this.sizeSmall,
    required double this.sizeMedium,
    required double this.sizeLarge,
  });

  factory IconTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return IconTokens.raw(
      colorPrimary: colors.inkNormal,
      colorSecondary: colors.inkLight,
      colorTertiary: colors.cloudDarker,
      sizeSmall: bases.sizeSmall,
      sizeMedium: bases.sizeMedium,
      sizeLarge: bases.sizeLarge,
    );
  }

  factory IconTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return IconTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
