import 'package:flutter/widgets.dart';

import '../theme.dart';

class ShadowTokens {
  final List<BoxShadow>? overlay;

  const ShadowTokens({
    this.overlay,
  });

  const ShadowTokens.raw({
    required List<BoxShadow> this.overlay,
  });

  factory ShadowTokens.fromTokens(ColorTokens colors) {
    return ShadowTokens.raw(
      overlay: [
        BoxShadow(
          color: colors.inkNormal.withOpacity(24 / 100),
          offset: Offset(0, 12),
          blurRadius: 24,
          spreadRadius: -4,
        ),
        BoxShadow(
          color: colors.inkNormal.withOpacity(32 / 100),
          offset: Offset(0, 8),
          blurRadius: 60,
          spreadRadius: 0,
        ),
      ],
    );
  }

  factory ShadowTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return ShadowTokens.fromTokens(theme.colorTokens);
  }
}
