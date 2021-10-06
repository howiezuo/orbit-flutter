import 'package:flutter/widgets.dart';

import '../theme.dart';

class CardTokens {
  final Color? background;

  const CardTokens({
    this.background,
  });

  const CardTokens.raw({
    required Color this.background,
  });

  factory CardTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return CardTokens.raw(
      background: colors.whiteNormal,
    );
  }

  factory CardTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return CardTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
