import 'package:flutter/widgets.dart';

import '../theme.dart';

class ButtonTokens {
  final Color? colorTextPrimary;
  final Color? colorTextSecondary;
  final Color? colorTextInfo;
  final Color? colorTextSuccess;
  final Color? colorTextWarning;
  final Color? colorTextCritical;

  final Color? backgroundPrimary;
  final Color? backgroundSecondary;
  final Color? backgroundInfo;
  final Color? backgroundSuccess;
  final Color? backgroundWarning;
  final Color? backgroundCritical;

  final double? fontSizeNormal;

  final double? heightNormal;

  final double? opacityDisabled;

  final EdgeInsets? paddingWithoutText;
  final EdgeInsets? paddingNormal;
  final EdgeInsets? paddingNormalWithIcons;
  final EdgeInsets? paddingNormalWithLeftIcon;
  final EdgeInsets? paddingNormalWithRightIcon;

  const ButtonTokens({
    this.colorTextPrimary,
    this.colorTextSecondary,
    this.colorTextInfo,
    this.colorTextSuccess,
    this.colorTextWarning,
    this.colorTextCritical,
    this.backgroundPrimary,
    this.backgroundSecondary,
    this.backgroundInfo,
    this.backgroundSuccess,
    this.backgroundWarning,
    this.backgroundCritical,
    this.fontSizeNormal,
    this.heightNormal,
    this.opacityDisabled,
    this.paddingWithoutText,
    this.paddingNormal,
    this.paddingNormalWithIcons,
    this.paddingNormalWithLeftIcon,
    this.paddingNormalWithRightIcon,
  });

  const ButtonTokens.raw({
    required Color this.colorTextPrimary,
    required Color this.colorTextSecondary,
    required Color this.colorTextInfo,
    required Color this.colorTextSuccess,
    required Color this.colorTextWarning,
    required Color this.colorTextCritical,
    required Color this.backgroundPrimary,
    required Color this.backgroundSecondary,
    required Color this.backgroundInfo,
    required Color this.backgroundSuccess,
    required Color this.backgroundWarning,
    required Color this.backgroundCritical,
    required double this.fontSizeNormal,
    required double this.heightNormal,
    required double this.opacityDisabled,
    required EdgeInsets this.paddingWithoutText,
    required EdgeInsets this.paddingNormal,
    required EdgeInsets this.paddingNormalWithIcons,
    required EdgeInsets this.paddingNormalWithLeftIcon,
    required EdgeInsets this.paddingNormalWithRightIcon,
  });

  factory ButtonTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return ButtonTokens.raw(
      colorTextPrimary: colors.whiteNormal,
      colorTextSecondary: colors.inkNormal,
      colorTextInfo: colors.whiteNormal,
      colorTextSuccess: colors.whiteNormal,
      colorTextWarning: colors.whiteNormal,
      colorTextCritical: colors.whiteNormal,
      backgroundPrimary: colors.productNormal,
      backgroundSecondary: colors.cloudDark,
      backgroundInfo: colors.blueNormal,
      backgroundSuccess: colors.greenNormal,
      backgroundWarning: colors.orangeNormal,
      backgroundCritical: colors.redNormal,
      fontSizeNormal: bases.fontSizeMedium,
      heightNormal: bases.sizeXlarge,
      opacityDisabled: bases.opacitySmall,
      paddingWithoutText: EdgeInsets.zero,
      paddingNormal: EdgeInsets.symmetric(horizontal: bases.spaceMedium),
      paddingNormalWithIcons:
          EdgeInsets.symmetric(horizontal: bases.spaceSmall),
      paddingNormalWithLeftIcon:
          EdgeInsets.only(right: bases.spaceMedium, left: bases.spaceSmall),
      paddingNormalWithRightIcon:
          EdgeInsets.only(right: bases.spaceSmall, left: bases.spaceMedium),
    );
  }

  factory ButtonTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return ButtonTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
