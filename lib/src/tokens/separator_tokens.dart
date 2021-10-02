import 'package:flutter/widgets.dart';

import '../theme.dart';

class SeparatorTokens {
  final Color background;
  final double height;

  SeparatorTokens({
    required this.background,
    required this.height,
  });

  static SeparatorTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);

    return SeparatorTokens(
      background: theme.colorTokens.cloudNormal,
      height: 1,
    );
  }
}
