import 'dart:ui';

import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../theme.dart';

abstract class AlertTokens {
  Color get colorBackgroundCritical;
  Color get colorBackgroundInfo;
  Color get colorBackgroundSuccess;
  Color get colorBackgroundWarning;

  Color get colorBorderCritical;
  Color get colorBorderInfo;
  Color get colorBorderSuccess;
  Color get colorBorderWarning;

  Color get colorIconCritical;
  Color get colorIconInfo;
  Color get colorIconSuccess;
  Color get colorIconWarning;

  Color get colorTextCritical;
  Color get colorTextInfo;
  Color get colorTextSuccess;
  Color get colorTextWarning;

  EdgeInsets get padding;
  EdgeInsets get paddingWithIcon;
}

class AlertStyles extends AlertTokens {

  @override
  final Color colorBackgroundCritical;
  @override
  final Color colorBackgroundInfo;
  @override
  final Color colorBackgroundSuccess;
  @override
  final Color colorBackgroundWarning;

  @override
  final Color colorBorderCritical;
  @override
  final Color colorBorderInfo;
  @override
  final Color colorBorderSuccess;
  @override
  final Color colorBorderWarning;

  @override
  final Color colorIconCritical;
  @override
  final Color colorIconInfo;
  @override
  final Color colorIconSuccess;
  @override
  final Color colorIconWarning;

  @override
  final Color colorTextCritical;
  @override
  final Color colorTextInfo;
  @override
  final Color colorTextSuccess;
  @override
  final Color colorTextWarning;

  @override
  final EdgeInsets padding;
  @override
  final EdgeInsets paddingWithIcon;

  AlertStyles({
    required this.colorBackgroundSuccess,
    required this.colorIconSuccess,
    required this.colorTextSuccess,
    required this.colorBorderSuccess,
    required this.colorBackgroundInfo,
    required this.colorIconInfo,
    required this.colorTextInfo,
    required this.colorBorderInfo,
    required this.colorBackgroundWarning,
    required this.colorIconWarning,
    required this.colorTextWarning,
    required this.colorBorderWarning,
    required this.colorBackgroundCritical,
    required this.colorIconCritical,
    required this.colorTextCritical,
    required this.colorBorderCritical,
    required this.padding,
    required this.paddingWithIcon,
  });

  static AlertTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final spaces = theme.spaceTokens;
    return AlertStyles(
      colorBackgroundSuccess: colors.greenLight,
      colorIconSuccess: colors.greenDark,
      colorTextSuccess: colors.greenDark,
      colorBorderSuccess: colors.greenLightHover,
      colorBackgroundInfo: colors.blueLight,
      colorIconInfo: colors.blueDark,
      colorTextInfo: colors.blueDark,
      colorBorderInfo: colors.blueLightHover,
      colorBackgroundWarning: colors.orangeLight,
      colorIconWarning: colors.orangeDark,
      colorTextWarning: colors.orangeDark,
      colorBorderWarning: colors.orangeLightHover,
      colorBackgroundCritical: colors.redLight,
      colorIconCritical: colors.redDark,
      colorTextCritical: colors.redDark,
      colorBorderCritical: colors.redLightHover,
      padding: EdgeInsets.all(spaces.medium),
      paddingWithIcon: EdgeInsets.all(spaces.small),
    );
  }
}
