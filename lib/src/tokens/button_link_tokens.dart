import 'package:flutter/widgets.dart';

import '../theme.dart';

class ButtonLinkTokens {
  final Color? colorTextPrimary;
  final Color? colorTextSecondary;
  final Color? colorTextCritical;

  final Color? backgroundPrimary;
  final Color? backgroundSecondary;
  final Color? backgroundCritical;

  final double? fontSizeNormal;

  final double? heightNormal;

  final double? opacityDisabled;

  final EdgeInsets? paddingWithoutText;
  final EdgeInsets? paddingNormal;
  final EdgeInsets? paddingNormalWithIcons;
  final EdgeInsets? paddingNormalWithLeftIcon;
  final EdgeInsets? paddingNormalWithRightIcon;

  const ButtonLinkTokens({
    this.colorTextPrimary,
    this.colorTextSecondary,
    this.colorTextCritical,
    this.backgroundPrimary,
    this.backgroundSecondary,
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

  const ButtonLinkTokens.raw({
    required Color this.colorTextPrimary,
    required Color this.colorTextSecondary,
    required Color this.colorTextCritical,
    required Color this.backgroundPrimary,
    required Color this.backgroundSecondary,
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

  factory ButtonLinkTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return ButtonLinkTokens.raw(
      colorTextPrimary: colors.productNormal,
      colorTextSecondary: colors.inkNormal,
      colorTextCritical: colors.redNormal,
      backgroundPrimary: Palette.Transparent,
      backgroundSecondary: Palette.Transparent,
      backgroundCritical: Palette.Transparent,
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

  factory ButtonLinkTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return ButtonLinkTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
