import 'package:flutter/widgets.dart';

import '../theme.dart';

@immutable
class AlertTokens {
  final Color? colorIconSuccess;
  final Color? colorIconInfo;
  final Color? colorIconWarning;
  final Color? colorIconCritical;

  final Color? colorTextSuccess;
  final Color? colorTextInfo;
  final Color? colorTextWarning;
  final Color? colorTextCritical;

  final Color? backgroundSuccess;
  final Color? backgroundInfo;
  final Color? backgroundWarning;
  final Color? backgroundCritical;

  final Color? colorBorderCritical;
  final Color? colorBorderInfo;
  final Color? colorBorderSuccess;
  final Color? colorBorderWarning;

  final EdgeInsets? padding;
  final EdgeInsets? paddingWithIcon;

  const AlertTokens({
    this.colorIconSuccess,
    this.colorIconInfo,
    this.colorIconWarning,
    this.colorIconCritical,
    this.colorTextSuccess,
    this.colorTextInfo,
    this.colorTextWarning,
    this.colorTextCritical,
    this.backgroundSuccess,
    this.backgroundInfo,
    this.backgroundWarning,
    this.backgroundCritical,
    this.colorBorderSuccess,
    this.colorBorderInfo,
    this.colorBorderWarning,
    this.colorBorderCritical,
    this.padding,
    this.paddingWithIcon,
  });

  const AlertTokens.raw({
    required Color this.colorIconSuccess,
    required Color this.colorIconInfo,
    required Color this.colorIconWarning,
    required Color this.colorIconCritical,
    required Color this.colorTextSuccess,
    required Color this.colorTextInfo,
    required Color this.colorTextWarning,
    required Color this.colorTextCritical,
    required Color this.backgroundSuccess,
    required Color this.backgroundInfo,
    required Color this.backgroundWarning,
    required Color this.backgroundCritical,
    required Color this.colorBorderSuccess,
    required Color this.colorBorderInfo,
    required Color this.colorBorderWarning,
    required Color this.colorBorderCritical,
    required EdgeInsets this.padding,
    required EdgeInsets this.paddingWithIcon,
  });

  factory AlertTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return AlertTokens.raw(
      colorIconSuccess: colors.greenDark,
      colorIconInfo: colors.blueDark,
      colorIconWarning: colors.orangeDark,
      colorIconCritical: colors.redDark,
      colorTextInfo: colors.blueDark,
      colorTextSuccess: colors.greenDark,
      colorTextWarning: colors.orangeDark,
      colorTextCritical: colors.redDark,
      backgroundSuccess: colors.greenLight,
      backgroundInfo: colors.blueLight,
      backgroundWarning: colors.orangeLight,
      backgroundCritical: colors.redLight,
      colorBorderSuccess: colors.greenLightHover,
      colorBorderInfo: colors.blueLightHover,
      colorBorderWarning: colors.orangeLightHover,
      colorBorderCritical: colors.redLightHover,
      padding: EdgeInsets.all(bases.spaceMedium),
      paddingWithIcon: EdgeInsets.all(bases.spaceSmall),
    );
  }

  factory AlertTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return AlertTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
