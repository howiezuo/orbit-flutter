import 'package:flutter/widgets.dart';

import '../theme.dart';

class FormTokens {
  final Color colorLabel;
  final double fontSizeLabel;
  final double fontSizeFeedback;

  FormTokens({
    required this.colorLabel,
    required this.fontSizeLabel,
    required this.fontSizeFeedback,
  });

  static FormTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final baseTokens = theme.baseTokens;

    return FormTokens(
      colorLabel: theme.colorTokens.inkNormal,
      fontSizeLabel: baseTokens.fontSizeMedium,
      fontSizeFeedback: baseTokens.fontSizeSmall,
    );
  }
}
