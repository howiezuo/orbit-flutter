import 'package:flutter/widgets.dart';

import '../theme.dart';

class CheckBoxTokens {
  final Color? colorInfo;
  final Color? colorIcon;
  final Color? colorIconDisabled;
  final double? size;
  final Color? borderColor;
  final Color? borderColorError;
  final double? opcityDisable;

  const CheckBoxTokens({
    this.colorInfo,
    this.colorIcon,
    this.colorIconDisabled,
    this.size,
    this.borderColor,
    this.borderColorError,
    this.opcityDisable,
  });

  const CheckBoxTokens.raw({
    required Color this.colorInfo,
    required Color this.colorIcon,
    required Color this.colorIconDisabled,
    required double this.size,
    required Color this.borderColor,
    required Color this.borderColorError,
    required double this.opcityDisable,
  });

  factory CheckBoxTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return CheckBoxTokens(
      colorInfo: colors.inkLight,
      colorIcon: colors.whiteNormal,
      borderColor: colors.cloudDarker,
      borderColorError: colors.redNormal,
      size: 20,
      opcityDisable: bases.opacityMedium,
    );
  }

  factory CheckBoxTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return CheckBoxTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
