import 'package:flutter/widgets.dart';

import '../theme.dart';

class Badge extends StatelessWidget {
  final IconData? icon;
  final Widget? child;
  final BadgeType? type;
  final BadgeStyle? style;

  const Badge({
    Key? key,
    this.icon,
    this.child,
    this.type = BadgeType.neutral,
    this.style,
  })  : assert(icon != null || child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final textTokens = TextTokens.fromDefault(context);
    final style = _resolveStyle(context);

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
          if (icon != null && child != null)
            SizedBox(width: theme.baseTokens.spaceXxsmall),
          if (child != null)
            DefaultTextStyle(
              style: TextStyle(
                color: style.textColor,
                fontSize: textTokens.fontSizeSmall,
                fontWeight: theme.baseTokens.fontWeightMedium,
              ),
              child: child!,
            ),
        ],
      ),
    );
  }

  Widget _icon(BuildContext context, Color? color) {
    final iconTokens = IconTokens.fromDefault(context);
    return Icon(icon, size: iconTokens.sizeSmall, color: color);
  }

  BadgeStyle _resolveStyle(BuildContext context) {
    final themeStyle = _fromTheme(context);
    final textColor = style?.textColor ?? themeStyle.textColor!;
    final background = style?.background ?? themeStyle.background!;
    final border = style?.border ?? themeStyle.border;
    final borderRadius = style?.borderRadius ?? themeStyle.borderRadius!;
    final height = style?.height ?? themeStyle.height!;
    final padding = style?.padding ?? themeStyle.padding!;
    return BadgeStyle.raw(
      textColor: textColor,
      background: background,
      border: border,
      borderRadius: borderRadius,
      height: height,
      padding: padding,
    );
  }

  BadgeStyle _fromTheme(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final defaultStyle = BadgeTokens.fromDefault(context);

    Color resolveTextColor() {
      switch (type) {
        case BadgeType.success:
          return defaultStyle.colorTextSuccess!;
        case BadgeType.info:
          return defaultStyle.colorTextInfo!;
        case BadgeType.warning:
          return defaultStyle.colorTextWarning!;
        case BadgeType.critical:
          return defaultStyle.colorTextCritical!;
        case BadgeType.dark:
          return defaultStyle.colorTextDark!;
        case BadgeType.white:
          return defaultStyle.colorTextWhite!;
        case BadgeType.infoInverted:
        case BadgeType.successInverted:
        case BadgeType.warningInverted:
        case BadgeType.criticalInverted:
          return colors.whiteNormal;
        default:
          return defaultStyle.colorTextNeutral!;
      }
    }

    Color resolveBackground() {
      switch (type) {
        case BadgeType.success:
          return defaultStyle.backgroundSuccess!;
        case BadgeType.info:
          return defaultStyle.backgroundInfo!;
        case BadgeType.warning:
          return defaultStyle.backgroundWarning!;
        case BadgeType.critical:
          return defaultStyle.backgroundCritical!;
        case BadgeType.dark:
          return defaultStyle.backgroundDark!;
        case BadgeType.white:
          return defaultStyle.backgroundWhite!;
        case BadgeType.infoInverted:
          return colors.blueNormal;
        case BadgeType.successInverted:
          return colors.greenNormal;
        case BadgeType.warningInverted:
          return colors.orangeNormal;
        case BadgeType.criticalInverted:
          return colors.redNormal;
        default:
          return defaultStyle.backgroundNeutral!;
      }
    }

    Color? resolveBorderColor() {
      switch (type) {
        case BadgeType.success:
          return defaultStyle.borderColorSuccess;
        case BadgeType.info:
          return defaultStyle.borderColorInfo;
        case BadgeType.warning:
          return defaultStyle.borderColorWarning;
        case BadgeType.critical:
          return defaultStyle.borderColorCritical;
        case BadgeType.white:
          return defaultStyle.borderColorWhite;
        case BadgeType.dark:
        case BadgeType.infoInverted:
        case BadgeType.successInverted:
        case BadgeType.warningInverted:
        case BadgeType.criticalInverted:
          return null;
        default:
          return defaultStyle.borderColorNeutral;
      }
    }

    final borderColor = resolveBorderColor();
    final border =
        borderColor != null ? Border.all(color: borderColor, width: 1) : null;

    return BadgeStyle.raw(
      textColor: resolveTextColor(),
      background: resolveBackground(),
      border: border,
      borderRadius: BorderRadius.all(defaultStyle.borderRadius!),
      height: defaultStyle.height!,
      padding: defaultStyle.padding!,
    );
  }
}

class BadgeStyle {
  final Color? textColor;
  final Color? background;
  final Border? border;
  final BorderRadius? borderRadius;
  final double? height;
  final EdgeInsets? padding;

  const BadgeStyle({
    this.textColor,
    this.background,
    this.border,
    this.borderRadius,
    this.height,
    this.padding,
  });

  const BadgeStyle.raw({
    required Color this.textColor,
    required Color this.background,
    required this.border,
    required BorderRadius this.borderRadius,
    required double this.height,
    required EdgeInsets this.padding,
  });
}

enum BadgeType {
  neutral,
  success,
  info,
  warning,
  critical,
  dark,
  white,
  infoInverted,
  successInverted,
  warningInverted,
  criticalInverted,
}
