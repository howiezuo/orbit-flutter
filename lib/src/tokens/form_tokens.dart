import 'package:flutter/widgets.dart';

import '../theme.dart';

@immutable
class FormTokens {
  final Color? colorLabel;
  final Color? colorLabelFilled;
  final double? fontSizeLabel;
  final double? fontSizeFeedback;

  const FormTokens({
    this.colorLabel,
    this.colorLabelFilled,
    this.fontSizeLabel,
    this.fontSizeFeedback,
  });

  const FormTokens.raw({
    required Color this.colorLabel,
    required Color this.colorLabelFilled,
    required double this.fontSizeLabel,
    required double this.fontSizeFeedback,
  });

  factory FormTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return FormTokens.raw(
      colorLabel: colors.inkNormal,
      colorLabelFilled: colors.inkLight,
      fontSizeLabel: bases.fontSizeMedium,
      fontSizeFeedback: bases.fontSizeSmall,
    );
  }

  static FormTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return FormTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
