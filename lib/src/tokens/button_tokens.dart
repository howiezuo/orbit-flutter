import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

abstract class ButtonTokens {
  Color get colorTextPrimary;
  Color get colorTextSecondary;
  Color get colorTextInfo;
  Color get colorTextSuccess;
  Color get colorTextWarning;
  Color get colorTextCritical;
  Color get colorTextWhite;

  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get backgroundInfo;
  Color get backgroundSuccess;
  Color get backgroundWarning;
  Color get backgroundCritical;
  Color get backgroundWhite;

  double get fontSizeLarge;
  double get fontSizeNormal;
  double get fontSizeSmall;

  double get heightNormal;
  double get heightLarge;
  double get heightSmall;

  double get opacityDisabled;

  EdgeInsets get paddingWithoutText;
  EdgeInsets get paddingSmall;
  EdgeInsets get paddingNormal;
  EdgeInsets get paddingLarge;
  EdgeInsets get paddingSmallWithIcons;
  EdgeInsets get paddingNormalWithIcons;
  EdgeInsets get paddingLargeWithIcons;
  EdgeInsets get paddingSmallWithLeftIcon;
  EdgeInsets get paddingNormalWithLeftIcon;
  EdgeInsets get paddingLargeWithLeftIcon;
  EdgeInsets get paddingSmallWithRightIcon;
  EdgeInsets get paddingNormalWithRightIcon;
  EdgeInsets get paddingLargeWithRightIcon;
}

class ButtonStyles extends ButtonTokens {
  @override
  final Color backgroundCritical;
  @override
  final Color backgroundInfo;
  @override
  final Color backgroundPrimary;
  @override
  final Color backgroundSecondary;
  @override
  final Color backgroundSuccess;
  @override
  final Color backgroundWarning;
  @override
  final Color backgroundWhite;

  @override
  final Color colorTextCritical;
  @override
  final Color colorTextInfo;
  @override
  final Color colorTextPrimary;
  @override
  final Color colorTextSecondary;
  @override
  final Color colorTextSuccess;
  @override
  final Color colorTextWarning;
  @override
  final Color colorTextWhite;

  @override
  final double fontSizeLarge;
  @override
  final double fontSizeNormal;
  @override
  final double fontSizeSmall;

  @override
  final double heightLarge;
  @override
  final double heightNormal;
  @override
  final double heightSmall;

  @override
  final double opacityDisabled;

  @override
  final EdgeInsets paddingLarge;
  @override
  final EdgeInsets paddingLargeWithIcons;
  @override
  final EdgeInsets paddingLargeWithLeftIcon;
  @override
  final EdgeInsets paddingLargeWithRightIcon;
  @override
  final EdgeInsets paddingNormal;
  @override
  final EdgeInsets paddingNormalWithIcons;
  @override
  final EdgeInsets paddingNormalWithLeftIcon;
  @override
  final EdgeInsets paddingNormalWithRightIcon;
  @override
  final EdgeInsets paddingSmall;
  @override
  final EdgeInsets paddingSmallWithIcons;
  @override
  final EdgeInsets paddingSmallWithLeftIcon;
  @override
  final EdgeInsets paddingSmallWithRightIcon;
  @override
  final EdgeInsets paddingWithoutText;

  ButtonStyles({
    required this.backgroundCritical,
    required this.backgroundInfo,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundSuccess,
    required this.backgroundWarning,
    required this.backgroundWhite,
    required this.colorTextCritical,
    required this.colorTextInfo,
    required this.colorTextPrimary,
    required this.colorTextSecondary,
    required this.colorTextSuccess,
    required this.colorTextWarning,
    required this.colorTextWhite,
    required this.fontSizeLarge,
    required this.fontSizeNormal,
    required this.fontSizeSmall,
    required this.heightLarge,
    required this.heightNormal,
    required this.heightSmall,
    required this.opacityDisabled,
    required this.paddingLarge,
    required this.paddingLargeWithIcons,
    required this.paddingLargeWithLeftIcon,
    required this.paddingLargeWithRightIcon,
    required this.paddingNormal,
    required this.paddingNormalWithIcons,
    required this.paddingNormalWithLeftIcon,
    required this.paddingNormalWithRightIcon,
    required this.paddingSmall,
    required this.paddingSmallWithIcons,
    required this.paddingSmallWithLeftIcon,
    required this.paddingSmallWithRightIcon,
    required this.paddingWithoutText,
  });

  static ButtonTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final typography = theme.typographyTokens;
    final sizes = theme.sizeTokens;
    final spaces = theme.spaceTokens;
    return ButtonStyles(
      backgroundCritical: colors.redNormal,
      backgroundInfo: colors.blueNormal,
      backgroundPrimary: colors.productNormal,
      backgroundSecondary: colors.cloudDark,
      backgroundSuccess: colors.greenNormal,
      backgroundWarning: colors.orangeNormal,
      backgroundWhite: colors.whiteNormal,
      colorTextCritical: colors.whiteNormal,
      colorTextInfo: colors.whiteNormal,
      colorTextPrimary: colors.whiteNormal,
      colorTextSecondary: colors.inkNormal,
      colorTextSuccess: colors.whiteNormal,
      colorTextWarning: colors.whiteNormal,
      colorTextWhite: colors.inkNormal,
      fontSizeLarge: typography.fontSizeLarge,
      fontSizeNormal: typography.fontSizeMedium,
      fontSizeSmall: typography.fontSizeSmall,
      heightLarge: sizes.xxlarge,
      heightNormal: sizes.xlarge,
      heightSmall: sizes.large,
      opacityDisabled: theme.opacityTokens.small,
      // TODO double check
      paddingLarge: EdgeInsets.symmetric(horizontal: 28),
      paddingLargeWithIcons: EdgeInsets.symmetric(horizontal: spaces.medium),
      paddingLargeWithLeftIcon: EdgeInsets.only(right: 28, left: spaces.medium),
      paddingLargeWithRightIcon:
          EdgeInsets.only(right: spaces.medium, left: 28),
      paddingNormal: EdgeInsets.symmetric(horizontal: spaces.medium),
      paddingNormalWithIcons: EdgeInsets.symmetric(horizontal: spaces.small),
      paddingNormalWithLeftIcon:
          EdgeInsets.only(right: spaces.medium, left: spaces.small),
      paddingNormalWithRightIcon:
          EdgeInsets.only(right: spaces.small, left: spaces.medium),
      paddingSmall: EdgeInsets.symmetric(horizontal: spaces.xXsmall),
      paddingSmallWithIcons: EdgeInsets.symmetric(horizontal: spaces.xSmall),
      paddingSmallWithLeftIcon:
          EdgeInsets.only(right: spaces.small, left: spaces.xSmall),
      paddingSmallWithRightIcon:
          EdgeInsets.only(right: spaces.xSmall, left: spaces.small),
      paddingWithoutText: EdgeInsets.zero,
    );
  }
}
