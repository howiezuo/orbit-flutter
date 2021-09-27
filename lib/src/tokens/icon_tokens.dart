import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

abstract class IconTokens {
  double get sizeSmall;
  double get sizeMedium;
  double get sizeLarge;
}

class IconStyles extends IconTokens {
  @override
  final double sizeSmall;

  @override
  final double sizeMedium;

  @override
  final double sizeLarge;

  IconStyles({
    required this.sizeSmall,
    required this.sizeMedium,
    required this.sizeLarge,
  });

  static IconTokens fromDefalut(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final sizes = theme.sizeTokens;
    return IconStyles(
      sizeSmall: sizes.small,
      sizeMedium: sizes.medium,
      sizeLarge: sizes.large,
    );
  }
}
