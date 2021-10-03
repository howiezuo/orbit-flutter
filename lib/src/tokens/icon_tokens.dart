import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

class IconTokens {
  final Color colorPrimary;
  final Color colorSecondary;

  final double sizeSmall;
  final double sizeMedium;
  final double sizeLarge;

  IconTokens({
    required this.colorPrimary,
    required this.colorSecondary,
    required this.sizeSmall,
    required this.sizeMedium,
    required this.sizeLarge,
  });

  static IconTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final sizes = theme.sizeTokens;
    return IconTokens(
      colorPrimary: colors.inkNormal,
      colorSecondary: colors.inkLight,
      sizeSmall: sizes.small,
      sizeMedium: sizes.medium,
      sizeLarge: sizes.large,
    );
  }
}
