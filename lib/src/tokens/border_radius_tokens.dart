import 'package:flutter/widgets.dart';

import '../theme.dart';

class BorderRadiusTokens {
  final Radius? small;
  final Radius? normal;
  final Radius? large;

  BorderRadiusTokens({
    this.small,
    this.normal,
    this.large,
  });

  const BorderRadiusTokens.raw({
    required Radius this.small,
    required Radius this.normal,
    required Radius this.large,
  });

  factory BorderRadiusTokens.fromTokens(BaseTokens bases) {
    return BorderRadiusTokens.raw(
      small: Radius.circular(2),
      normal: bases.borderRadius,
      large: Radius.circular(6),
    );
  }

  factory BorderRadiusTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return BorderRadiusTokens.fromTokens(theme.baseTokens);
  }
}
