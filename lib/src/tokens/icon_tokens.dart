import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

class IconTokens {
  final double sizeSmall;
  final double sizeMedium;
  final double sizeLarge;

  IconTokens({
    required this.sizeSmall,
    required this.sizeMedium,
    required this.sizeLarge,
  });

  static IconTokens fromDefalut(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final sizes = theme.sizeTokens;
    return IconTokens(
      sizeSmall: sizes.small,
      sizeMedium: sizes.medium,
      sizeLarge: sizes.large,
    );
  }
}
