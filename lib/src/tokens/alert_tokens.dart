import 'dart:ui';

import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

abstract class AlertTokens {
  Color? get colorBackgroundCritical;
  Color? get colorBackgroundInfo;
  Color? get colorBackgroundSucess;
  Color? get colorBackgroundWarning;

  Color? get colorBorderCritical;
  Color? get colorBorderInfo;
  Color? get colorBorderSucess;
  Color? get colorBorderWarning;

  Color? get colorIconCritical;
  Color? get colorIconInfo;
  Color? get colorIconSuccess;
  Color? get colorIconWarning;

  Color? get colorTextCritical;
  Color? get colorTextInfo;
  Color? get colorTextSuccess;
  Color? get colorTextWarning;

  EdgeInsets? get padding;
  EdgeInsets? get paddingWithIcon;
}

class AlertStyles extends AlertTokens {

  @override
  final Color? colorBackgroundCritical;
  @override
  final Color? colorBackgroundInfo;
  @override
  final Color? colorBackgroundSucess;
  @override
  final Color? colorBackgroundWarning;

  @override
  final Color? colorBorderCritical;
  @override
  final Color? colorBorderInfo;
  @override
  final Color? colorBorderSucess;
  @override
  final Color? colorBorderWarning;

  @override
  final Color? colorIconCritical;
  @override
  final Color? colorIconInfo;
  @override
  final Color? colorIconSuccess;
  @override
  final Color? colorIconWarning;

  @override
  final Color? colorTextCritical;
  @override
  final Color? colorTextInfo;
  @override
  final Color? colorTextSuccess;
  @override
  final Color? colorTextWarning;

  @override
  final EdgeInsets? padding;
  @override
  final EdgeInsets? paddingWithIcon;

  AlertStyles({
    required this.colorBackgroundSucess,
    required this.colorIconSuccess,
    required this.colorTextSuccess,
    required this.colorBorderSucess,
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
      colorBackgroundSucess: colors.greenLight,
      colorIconSuccess: colors.greenNormal,
      colorTextSuccess: colors.greenDark,
      colorBorderSucess: colors.greenLightHover,
      colorBackgroundInfo: colors.blueLight,
      colorIconInfo: colors.blueNormal,
      colorTextInfo: colors.blueDark,
      colorBorderInfo: colors.blueLightHover,
      colorBackgroundWarning: colors.orangeLight,
      colorIconWarning: colors.orangeNormal,
      colorTextWarning: colors.orangeDark,
      colorBorderWarning: colors.orangeLightHover,
      colorBackgroundCritical: colors.redLight,
      colorIconCritical: colors.redNormal,
      colorTextCritical: colors.redDark,
      colorBorderCritical: colors.redLightHover,
      padding: EdgeInsets.all(spaces.medium),
      paddingWithIcon: EdgeInsets.all(spaces.small),
    );
  }
}
