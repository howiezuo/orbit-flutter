import 'package:flutter/widgets.dart';

import '../theme.dart';

@immutable
class BadgeTokens {
  final Color? colorTextNeutral;
  final Color? colorTextInfo;
  final Color? colorTextSuccess;
  final Color? colorTextWarning;
  final Color? colorTextCritical;
  final Color? colorTextDark;
  final Color? colorTextWhite;

  final Color? backgroundNeutral;
  final Color? backgroundInfo;
  final Color? backgroundSuccess;
  final Color? backgroundWarning;
  final Color? backgroundCritical;
  final Color? backgroundDark;
  final Color? backgroundWhite;

  final Radius? borderRadius;
  final double? height;
  final EdgeInsets? padding;

  final Color? borderColorNeutral;
  final Color? borderColorSuccess;
  final Color? borderColorInfo;
  final Color? borderColorWarning;
  final Color? borderColorCritical;
  final Color? borderColorWhite;

  const BadgeTokens({
    this.colorTextNeutral,
    this.colorTextSuccess,
    this.colorTextInfo,
    this.colorTextWarning,
    this.colorTextCritical,
    this.colorTextDark,
    this.colorTextWhite,
    this.backgroundNeutral,
    this.backgroundSuccess,
    this.backgroundInfo,
    this.backgroundWarning,
    this.backgroundCritical,
    this.backgroundDark,
    this.backgroundWhite,
    this.borderRadius,
    this.height,
    this.padding,
    this.borderColorNeutral,
    this.borderColorSuccess,
    this.borderColorInfo,
    this.borderColorWarning,
    this.borderColorCritical,
    this.borderColorWhite,
  });

  const BadgeTokens.raw({
    required Color this.colorTextNeutral,
    required Color this.colorTextSuccess,
    required Color this.colorTextInfo,
    required Color this.colorTextWarning,
    required Color this.colorTextCritical,
    required Color this.colorTextDark,
    required Color this.colorTextWhite,
    required Color this.backgroundNeutral,
    required Color this.backgroundSuccess,
    required Color this.backgroundInfo,
    required Color this.backgroundWarning,
    required Color this.backgroundCritical,
    required Color this.backgroundDark,
    required Color this.backgroundWhite,
    required Radius this.borderRadius,
    required double this.height,
    required EdgeInsets this.padding,
    required Color this.borderColorNeutral,
    required Color this.borderColorSuccess,
    required Color this.borderColorInfo,
    required Color this.borderColorWarning,
    required Color this.borderColorCritical,
    required Color this.borderColorWhite,
  });

  factory BadgeTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return BadgeTokens.raw(
      colorTextNeutral: colors.inkNormal,
      colorTextSuccess: colors.greenNormal,
      colorTextInfo: colors.blueNormal,
      colorTextWarning: colors.orangeNormal,
      colorTextCritical: colors.redNormal,
      colorTextDark: colors.whiteNormal,
      colorTextWhite: colors.inkNormal,
      backgroundNeutral: colors.cloudLight,
      backgroundSuccess: colors.greenLight,
      backgroundInfo: colors.blueLight,
      backgroundWarning: colors.orangeLight,
      backgroundCritical: colors.redLight,
      backgroundDark: colors.inkNormal,
      backgroundWhite: colors.whiteNormal,
      borderRadius: const Radius.circular(12),
      height: bases.sizeMedium,
      padding: EdgeInsets.symmetric(horizontal: bases.spaceXsmall),
      borderColorNeutral: colors.cloudDark,
      borderColorSuccess: colors.greenLightHover,
      borderColorInfo: colors.blueLightHover,
      borderColorWarning: colors.orangeLightHover,
      borderColorCritical: colors.redLightHover,
      borderColorWhite: colors.cloudDark,
    );
  }

  factory BadgeTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return BadgeTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
