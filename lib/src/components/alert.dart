import 'package:flutter/widgets.dart';

import '../theme.dart';

class Alert extends StatelessWidget {
  final String title;
  final Widget? child;
  final AlertType? type;
  final bool showIcon;
  final AlertStyle? style;

  const Alert({
    Key? key,
    required this.title,
    this.child,
    AlertType this.type = AlertType.info,
    this.showIcon = true,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final baseTokens = theme.baseTokens;
    final textTokens = theme.textTokens;
    final style = _resolveStyle(context);

    return Container(
      padding: style.padding,
      decoration: BoxDecoration(
        color: style.colorBackground,
        border: Border.all(color: style.colorBorder!, width: 1),
        borderRadius: style.borderRadius,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showIcon)
            Padding(
              padding: EdgeInsets.only(right: baseTokens.spaceXsmall),
              child: _icon(context, style.colorIcon),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: style.colorText,
                  fontSize: textTokens.fontSizeNormal,
                  fontWeight: theme.baseTokens.fontWeightBold,
                  height: textTokens.lineHeightHeading,
                ),
              ),
              if (child != null)
                Padding(
                  padding: EdgeInsets.only(top: baseTokens.spaceXxsmall),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: style.colorText,
                      fontSize: textTokens.fontSizeNormal,
                      height: textTokens.lineHeightNormal! /
                          textTokens.fontSizeNormal!,
                    ),
                    child: child!,
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }

  Widget _icon(BuildContext context, Color? iconColor) {
    final theme = OrbitTheme.of(context);

    IconData resolveIcon() {
      switch (type) {
        case AlertType.success:
          return OrbitIcons.check;
        case AlertType.warning:
          return OrbitIcons.alert;
        case AlertType.critical:
          return OrbitIcons.alert_circle;
        default:
          return OrbitIcons.information_circle;
      }
    }

    return Icon(
      resolveIcon(),
      size: theme.iconTokens.sizeSmall,
      color: iconColor,
    );
  }

  AlertStyle _resolveStyle(BuildContext context) {
    final themeStyle = _fromTheme(context);
    final iconColor = style?.colorIcon ?? themeStyle.colorIcon!;
    final textColor = style?.colorText ?? themeStyle.colorText!;
    final background = style?.colorBackground ?? themeStyle.colorBackground!;
    final borderColor = style?.colorBorder ?? themeStyle.colorBorder!;
    final padding = style?.padding ?? themeStyle.padding!;
    return AlertStyle.raw(
      colorIcon: iconColor,
      colorText: textColor,
      colorBackground: background,
      colorBorder: borderColor,
      padding: padding,
      borderRadius: themeStyle.borderRadius!,
    );
  }

  AlertStyle _fromTheme(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final defalutAlertStyles = theme.alertTokens;

    Color resolveIconColor() {
      switch (type) {
        case AlertType.success:
          return defalutAlertStyles.colorIconSuccess!;
        case AlertType.warning:
          return defalutAlertStyles.colorIconWarning!;
        case AlertType.critical:
          return defalutAlertStyles.colorIconCritical!;
        default:
          return defalutAlertStyles.colorIconInfo!;
      }
    }

    Color resolveTextColor() {
      switch (type) {
        case AlertType.success:
          return defalutAlertStyles.colorTextSuccess!;
        case AlertType.warning:
          return defalutAlertStyles.colorTextWarning!;
        case AlertType.critical:
          return defalutAlertStyles.colorTextCritical!;
        default:
          return defalutAlertStyles.colorTextInfo!;
      }
    }

    Color resolveBackground() {
      switch (type) {
        case AlertType.success:
          return defalutAlertStyles.backgroundSuccess!;
        case AlertType.warning:
          return defalutAlertStyles.backgroundWarning!;
        case AlertType.critical:
          return defalutAlertStyles.backgroundCritical!;
        default:
          return defalutAlertStyles.backgroundInfo!;
      }
    }

    Color resolveBorderColor() {
      switch (type) {
        case AlertType.success:
          return defalutAlertStyles.colorBorderSuccess!;
        case AlertType.warning:
          return defalutAlertStyles.colorBorderWarning!;
        case AlertType.critical:
          return defalutAlertStyles.colorBorderCritical!;
        default:
          return defalutAlertStyles.colorBorderInfo!;
      }
    }

    return AlertStyle.raw(
      colorIcon: resolveIconColor(),
      colorText: resolveTextColor(),
      colorBackground: resolveBackground(),
      colorBorder: resolveBorderColor(),
      padding: defalutAlertStyles.padding!,
      borderRadius: BorderRadius.all(theme.borderRadius.large!),
    );
  }
}

class AlertStyle {
  final Color? colorIcon;
  final Color? colorText;
  final Color? colorBackground;
  final Color? colorBorder;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;

  const AlertStyle({
    this.colorIcon,
    this.colorText,
    this.colorBackground,
    this.colorBorder,
    this.padding,
    this.borderRadius,
  });

  const AlertStyle.raw({
    required Color this.colorIcon,
    required Color this.colorText,
    required Color this.colorBackground,
    required Color this.colorBorder,
    required EdgeInsets this.padding,
    required BorderRadius this.borderRadius,
  });
}

enum AlertType { info, success, warning, critical }
