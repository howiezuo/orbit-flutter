
import 'package:flutter/widgets.dart';

import '../theme.dart';

@immutable
class InputTokens {
  final Color? colorText;
  final Color? colorTextDisabled;
  final Color? colorIcon;
  final Color? colorPlaceholder;
  final Color? background;
  final Color? backgroundDisabled;

  final double? fontSizeNormal;

  final double? heightNormal;

  final Color? borderColor;
  final Color? borderColorFocus;
  final Color? borderColorError;
  final Color? borderColorErrorFocus;

  final double? borderWidth;

  final EdgeInsets? paddingNormal;

  const InputTokens({
    this.colorText,
    this.colorTextDisabled,
    this.colorIcon,
    this.colorPlaceholder,
    this.background,
    this.backgroundDisabled,
    this.fontSizeNormal,
    this.borderColor,
    this.borderColorFocus,
    this.borderColorError,
    this.borderColorErrorFocus,
    this.borderWidth,
    this.heightNormal,
    this.paddingNormal,
  });

  const InputTokens.raw({
    required Color this.colorText,
    required Color this.colorTextDisabled,
    required Color this.colorIcon,
    required Color this.colorPlaceholder,
    required Color this.background,
    required Color this.backgroundDisabled,
    required double this.fontSizeNormal,
    required Color this.borderColor,
    required Color this.borderColorFocus,
    required Color this.borderColorError,
    required Color this.borderColorErrorFocus,
    required double this.borderWidth,
    required double this.heightNormal,
    required EdgeInsets this.paddingNormal,
  });

  factory InputTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return InputTokens.raw(
      colorText: colors.inkNormal,
      colorTextDisabled: colors.inkLighter,
      colorIcon: colors.cloudDarker,
      colorPlaceholder: colors.inkLighter,
      background: colors.whiteNormal,
      backgroundDisabled: colors.cloudNormal,
      fontSizeNormal: bases.fontSizeMedium,
      borderColor: colors.cloudDarker,
      borderColorFocus: colors.blueNormal,
      borderColorError: colors.redNormal,
      borderColorErrorFocus: colors.redNormal,
      borderWidth: 1,
      heightNormal: bases.sizeXlarge,
      paddingNormal: EdgeInsets.symmetric(horizontal: bases.spaceSmall),
    );
  }

  factory InputTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return InputTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
