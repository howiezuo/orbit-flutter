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
    required Color colorIconSuccess,
    required Color colorIconInfo,
    required Color colorIconWarning,
    required Color colorIconCritical,
    required Color colorTextSuccess,
    required Color colorTextInfo,
    required Color colorTextWarning,
    required Color colorTextCritical,
    required Color backgroundSuccess,
    required Color backgroundInfo,
    required Color backgroundWarning,
    required Color backgroundCritical,
    required Color colorBorderSuccess,
    required Color colorBorderInfo,
    required Color colorBorderWarning,
    required Color colorBorderCritical,
    required EdgeInsets padding,
    required EdgeInsets paddingWithIcon,
  })  : this.colorIconSuccess = colorIconSuccess,
        this.colorIconInfo = colorIconInfo,
        this.colorIconWarning = colorIconWarning,
        this.colorIconCritical = colorIconCritical,
        this.colorTextSuccess = colorTextSuccess,
        this.colorTextInfo = colorTextInfo,
        this.colorTextWarning = colorTextWarning,
        this.colorTextCritical = colorTextCritical,
        this.backgroundSuccess = backgroundSuccess,
        this.backgroundInfo = backgroundInfo,
        this.backgroundWarning = backgroundWarning,
        this.backgroundCritical = backgroundCritical,
        this.colorBorderSuccess = colorBorderSuccess,
        this.colorBorderInfo = colorBorderInfo,
        this.colorBorderWarning = colorBorderWarning,
        this.colorBorderCritical = colorBorderCritical,
        this.padding = padding,
        this.paddingWithIcon = paddingWithIcon;

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
