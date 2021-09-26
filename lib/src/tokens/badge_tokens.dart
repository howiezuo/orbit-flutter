import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../theme.dart';

abstract class BadgeTokens {
  Color get colorTextNeutral;
  Color get colorTextInfo;
  Color get colorTextSuccess;
  Color get colorTextWarning;
  Color get colorTextCritical;
  Color get colorTextDark;
  Color get colorTextWhite;

  Color get backgroundNeutral;
  Color get backgroundInfo;
  Color get backgroundSuccess;
  Color get backgroundWarning;
  Color get backgroundCritical;
  Color get backgroundDark;
  Color get backgroundWhite;

  double get borderRadius;
  double get height;
  EdgeInsets get padding;

  // unfound
  Color get borderColorNeutral;
  Color get borderColorInfo;
  Color get borderColorSuccess;
  Color get borderColorWarning;
  Color get borderColorCritical;
  Color? get borderColorDark;
  Color get borderColorWhite;
}

class BadgeStyes extends BadgeTokens {
  @override
  final Color colorTextCritical;
  @override
  final Color colorTextDark;
  @override
  final Color colorTextInfo;
  @override
  final Color colorTextNeutral;
  @override
  final Color colorTextSuccess;
  @override
  final Color colorTextWarning;
  @override
  final Color colorTextWhite;

  @override
  final Color backgroundCritical;
  @override
  final Color backgroundDark;
  @override
  final Color backgroundInfo;
  @override
  final Color backgroundNeutral;
  @override
  final Color backgroundSuccess;
  @override
  final Color backgroundWarning;
  @override
  final Color backgroundWhite;

  @override
  final double borderRadius;
  @override
  final double height;
  @override
  final EdgeInsets padding;

  @override
  final Color borderColorNeutral;
  @override
  final Color borderColorInfo;
  @override
  final Color borderColorSuccess;
  @override
  final Color borderColorWarning;
  @override
  final Color borderColorCritical;
  @override
  final Color? borderColorDark;
  @override
  final Color borderColorWhite;

  BadgeStyes({
    required this.colorTextCritical,
    required this.colorTextDark,
    required this.colorTextInfo,
    required this.colorTextNeutral,
    required this.colorTextSuccess,
    required this.colorTextWarning,
    required this.colorTextWhite,
    required this.backgroundCritical,
    required this.backgroundDark,
    required this.backgroundInfo,
    required this.backgroundNeutral,
    required this.backgroundSuccess,
    required this.backgroundWarning,
    required this.backgroundWhite,
    required this.borderRadius,
    required this.height,
    required this.padding,
    required this.borderColorCritical,
    required this.borderColorDark,
    required this.borderColorInfo,
    required this.borderColorNeutral,
    required this.borderColorSuccess,
    required this.borderColorWarning,
    required this.borderColorWhite,
  });

  static BadgeTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    return BadgeStyes(
      colorTextCritical: colors.redNormal,
      colorTextDark: colors.whiteNormal,
      colorTextInfo: colors.blueNormal,
      colorTextNeutral: colors.inkNormal,
      colorTextSuccess: colors.greenNormal,
      colorTextWarning: colors.orangeNormal,
      colorTextWhite: colors.inkNormal,
      backgroundCritical: colors.redLight,
      backgroundDark: colors.inkNormal,
      backgroundInfo: colors.blueLight,
      backgroundNeutral: colors.cloudLight,
      backgroundSuccess: colors.greenLight,
      backgroundWarning: colors.orangeLight,
      backgroundWhite: colors.whiteNormal,
      // TODO no token?
      borderRadius: 12,
      height: theme.sizeTokens.medium,
      padding: EdgeInsets.symmetric(horizontal: theme.spaceTokens.xSmall),
      borderColorCritical: colors.redLightHover,
      borderColorDark: null,
      borderColorInfo: colors.blueLightHover,
      borderColorNeutral: colors.cloudDark,
      borderColorSuccess: colors.greenLightHover,
      borderColorWarning: colors.orangeLightHover,
      borderColorWhite: colors.cloudDark,
    );
  }
}
