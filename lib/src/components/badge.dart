import 'package:flutter/widgets.dart';

import '../theme.dart';

class Badge extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final BadgeType? type;

  const Badge({
    Key? key,
    this.label,
    this.icon,
    BadgeType this.type = BadgeType.neutral,
  })  : assert(label != null || icon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = _fromTheme(context);
    return Container(
      padding: style.padding,
      decoration: BoxDecoration(
        color: style.background,
        border: style.border,
        borderRadius: style.borderRadius,
      ),
      height: style.height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) _icon(context, style.textColor),
          if (label != null) _label(context, style.textColor)
        ],
      ),
    );
  }

  Widget _icon(BuildContext context, Color? color) {
    final theme = OrbitTheme.of(context);
    final spaces = theme.spaceTokens;
    final iconSizes = IconTokens.fromDefalut(context);
    return Padding(
      padding: label != null
          ? EdgeInsets.only(right: spaces.xXsmall)
          : EdgeInsets.zero,
      child: Icon(
        icon,
        size: iconSizes.sizeSmall,
        color: color,
      ),
    );
  }

  Widget _label(BuildContext context, Color? color) {
    final theme = OrbitTheme.of(context);
    final typography = theme.typographyTokens;
    return Text(
      label!,
      style: TextStyle(
        color: color,
        fontSize: typography.fontSizeSmall,
        fontWeight: typography.fontWeightMedium,
      ),
    );
  }

  LocalBadgeStyle _fromTheme(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final defaultStyle = BadgeStyes.fromDefault(context);

    Color resolveTextColor() {
      switch (type) {
        case BadgeType.info:
          return defaultStyle.colorTextInfo;
        case BadgeType.success:
          return defaultStyle.colorTextSuccess;
        case BadgeType.warning:
          return defaultStyle.colorTextWarning;
        case BadgeType.critical:
          return defaultStyle.colorTextCritical;
        case BadgeType.dark:
          return defaultStyle.colorTextDark;
        case BadgeType.white:
          return defaultStyle.colorTextWhite;
        case BadgeType.infoInverted:
        case BadgeType.successInverted:
        case BadgeType.warningInverted:
        case BadgeType.criticalInverted:
          return colors.whiteNormal;
        default:
          // neutral
          return defaultStyle.colorTextNeutral;
      }
    }

    Color resolveBackground() {
      switch (type) {
        case BadgeType.info:
          return defaultStyle.backgroundInfo;
        case BadgeType.success:
          return defaultStyle.backgroundSuccess;
        case BadgeType.warning:
          return defaultStyle.backgroundWarning;
        case BadgeType.critical:
          return defaultStyle.backgroundCritical;
        case BadgeType.dark:
          return defaultStyle.backgroundDark;
        case BadgeType.white:
          return defaultStyle.backgroundWhite;
        case BadgeType.infoInverted:
          return colors.blueNormal;
        case BadgeType.successInverted:
          return colors.greenNormal;
        case BadgeType.warningInverted:
          return colors.orangeNormal;
        case BadgeType.criticalInverted:
          return colors.redNormal;
        default:
          // neutral
          return defaultStyle.backgroundNeutral;
      }
    }

    Color? resolveBorderColor() {
      switch (type) {
        case BadgeType.info:
          return defaultStyle.borderColorInfo;
        case BadgeType.success:
          return defaultStyle.borderColorSuccess;
        case BadgeType.warning:
          return defaultStyle.borderColorWarning;
        case BadgeType.critical:
          return defaultStyle.borderColorCritical;
        case BadgeType.dark:
          return defaultStyle.borderColorDark;
        case BadgeType.white:
          return defaultStyle.borderColorWhite;
        case BadgeType.infoInverted:
        case BadgeType.successInverted:
        case BadgeType.warningInverted:
        case BadgeType.criticalInverted:
          return null;
        default:
          // neutral
          return defaultStyle.borderColorNeutral;
      }
    }

    final textColor = resolveTextColor();
    final background = resolveBackground();
    final borderColor = resolveBorderColor();
    final border = borderColor != null ? Border.all(color: borderColor) : null;

    return LocalBadgeStyle.raw(
      textColor: textColor,
      background: background,
      border: border,
      borderRadius:
          BorderRadius.all(Radius.circular(defaultStyle.borderRadius)),
      height: defaultStyle.height,
      padding: defaultStyle.padding,
    );
  }
}

class LocalBadgeStyle {
  final Color? textColor;
  final Color? background;
  final Border? border;
  final BorderRadius? borderRadius;
  final double? height;
  final EdgeInsets? padding;

  const LocalBadgeStyle({
    this.textColor,
    this.background,
    this.border,
    this.borderRadius,
    this.height,
    this.padding,
  });

  const LocalBadgeStyle.raw({
    required Color this.textColor,
    required Color this.background,
    required this.border,
    required BorderRadius this.borderRadius,
    required double this.height,
    required EdgeInsets this.padding,
  });
}

enum BadgeType {
  white,
  dark,
  neutral,
  info,
  infoInverted,
  success,
  successInverted,
  warning,
  warningInverted,
  critical,
  criticalInverted,
}
