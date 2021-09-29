import 'package:flutter/widgets.dart';

import '../theme.dart';

class TextTokens {
  final Color colorPrimary;
  final Color colorSecondary;

  TextTokens({
    required this.colorPrimary,
    required this.colorSecondary,
  });

  static TextTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    return TextTokens(
      colorPrimary: colors.inkNormal,
      colorSecondary: colors.inkLight,
    );
  }
}
