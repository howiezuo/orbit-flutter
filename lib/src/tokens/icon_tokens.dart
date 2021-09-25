import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

abstract class IconTokens {
  double get sizeSmall;
  double get sizeMedium;
  double get sizeLarge;
  double get sizeXlarge;
  double get sizeXxlarge;
}

class IconStyles extends IconTokens {
  @override
  final double sizeSmall;

  @override
  final double sizeMedium;

  @override
  final double sizeLarge;

  @override
  final double sizeXlarge;

  @override
  final double sizeXxlarge;

  IconStyles({
    required this.sizeSmall,
    required this.sizeMedium,
    required this.sizeLarge,
    required this.sizeXlarge,
    required this.sizeXxlarge,
  });

  static IconTokens fromDefalut(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final sizes = theme.sizeTokens;
    return IconStyles(
      sizeSmall: sizes.small,
      sizeMedium: sizes.medium,
      sizeLarge: sizes.large,
      sizeXlarge: sizes.xlarge,
      sizeXxlarge: sizes.xxlarge,
    );
  }
}
