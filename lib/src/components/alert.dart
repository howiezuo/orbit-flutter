import 'package:flutter/widgets.dart';

import '../theme.dart';

class Alert extends StatelessWidget {
  final String title;
  final Widget? child;
  final AlertType? type;
  final bool showIcon;
  final LocalAlertStyle? style;

  const Alert({
    Key? key,
    required this.title,
    this.child,
    AlertType this.type = AlertType.info,
    this.showIcon = false,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final spaces = theme.spaceTokens;
    final style = _resolveStyle(context);
    return Container(
      padding: style.padding,
      decoration: BoxDecoration(
        color: style.colorBackground,
        border: Border.all(color: style.colorBorder!),
        borderRadius: style.borderRadius,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showIcon) _icon(context, style.colorIcon),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: style.colorIcon,
                  // TODO token
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (child != null)
                Padding(
                  padding: EdgeInsets.only(top: spaces.xXsmall),
                  child: DefaultTextStyle(
                    style: TextStyle(color: style.colorText),
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
    final spaces = theme.spaceTokens;
    final icon = _resolveIcon();
    final iconSizes = IconTokens.fromDefault(context);
    return Padding(
      padding: EdgeInsets.only(right: spaces.xSmall),
      child: Icon(
        icon,
        size: iconSizes.sizeSmall,
        color: iconColor,
      ),
    );
  }

  LocalAlertStyle _resolveStyle(BuildContext context) {
    final themeStyle = _fromTheme(context);
    final iconColor = style?.colorIcon ?? themeStyle.colorIcon!;
    final textColor = style?.colorText ?? themeStyle.colorText!;
    final backgroundColor =
        style?.colorBackground ?? themeStyle.colorBackground!;
    final borderColor = style?.colorBorder ?? themeStyle.colorBorder!;
    final padding = style?.padding ?? themeStyle.padding!;
    return LocalAlertStyle.raw(
      colorIcon: iconColor,
      colorText: textColor,
      colorBackground: backgroundColor,
      colorBorder: borderColor,
      padding: padding,
      borderRadius: themeStyle.borderRadius!,
    );
  }

  LocalAlertStyle _fromTheme(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final defalutAlertStyles = AlertStyles.fromDefault(context);

    Color resolveIconColor() {
      switch (type) {
        case AlertType.success:
          return defalutAlertStyles.colorIconSuccess;
        case AlertType.warning:
          return defalutAlertStyles.colorIconWarning;
        case AlertType.critical:
          return defalutAlertStyles.colorIconCritical;
        default:
          return defalutAlertStyles.colorIconInfo;
      }
    }

    Color resolveTextColor() {
      switch (type) {
        case AlertType.success:
          return defalutAlertStyles.colorTextSuccess;
        case AlertType.warning:
          return defalutAlertStyles.colorTextWarning;
        case AlertType.critical:
          return defalutAlertStyles.colorTextCritical;
        default:
          return defalutAlertStyles.colorTextInfo;
      }
    }

    Color resolveBackgroundColor() {
      switch (type) {
        case AlertType.success:
          return defalutAlertStyles.colorBackgroundSuccess;
        case AlertType.warning:
          return defalutAlertStyles.colorBackgroundWarning;
        case AlertType.critical:
          return defalutAlertStyles.colorBackgroundCritical;
        default:
          return defalutAlertStyles.colorBackgroundInfo;
      }
    }

    Color resolveBorderColor() {
      switch (type) {
        case AlertType.success:
          return defalutAlertStyles.colorBorderSuccess;
        case AlertType.warning:
          return defalutAlertStyles.colorBorderWarning;
        case AlertType.critical:
          return defalutAlertStyles.colorBorderCritical;
        default:
          return defalutAlertStyles.colorBorderInfo;
      }
    }

    final iconColor = resolveIconColor();
    final textColor = resolveTextColor();
    final backgroundColor = resolveBackgroundColor();
    final borderColor = resolveBorderColor();

    return LocalAlertStyle.raw(
      colorIcon: iconColor,
      colorText: textColor,
      colorBackground: backgroundColor,
      colorBorder: borderColor,
      padding: defalutAlertStyles.padding,
      borderRadius: BorderRadius.all(theme.borderRadiusTokens.large),
    );
  }

  IconData _resolveIcon() {
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
}

class LocalAlertStyle {
  final Color? colorIcon;
  final Color? colorText;
  final Color? colorBackground;
  final Color? colorBorder;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;

  const LocalAlertStyle({
    this.colorIcon,
    this.colorText,
    this.colorBackground,
    this.colorBorder,
    this.padding,
    this.borderRadius,
  });

  const LocalAlertStyle.raw({
    required Color this.colorIcon,
    required Color this.colorText,
    required Color this.colorBackground,
    required Color this.colorBorder,
    required EdgeInsets this.padding,
    required BorderRadius this.borderRadius,
  });
}

enum AlertType { info, success, warning, critical }
