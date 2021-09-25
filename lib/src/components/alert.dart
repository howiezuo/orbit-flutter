import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';
import 'package:orbit/src/foundation/icons.dart';
import 'package:orbit/src/tokens/alert_tokens.dart';
import 'package:orbit/src/tokens/icon_tokens.dart';

class Alert extends StatelessWidget {
  final String title;
  final Widget? child;
  final AlertType? type;
  final LocalAlertStyle? style;

  const Alert({
    Key? key,
    required this.title,
    this.child,
    AlertType this.type = AlertType.info,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = _resolveStyle(context);
    final icon = _resolveIcon();
    final iconSizes = IconStyles.fromDefalut(context);
    return Container(
      padding: style.padding,
      decoration: BoxDecoration(
        color: style.colorBackground,
        border: Border.all(color: style.colorBorder!),
        borderRadius: style.borderRadius,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: iconSizes.sizeMedium,
            color: style.colorIcon,
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: style.colorText,
                  // TODO token
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  LocalAlertStyle _resolveStyle(BuildContext context) {
    final themeStyle = _fromTheme(context, type);
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

  LocalAlertStyle _fromTheme(BuildContext context, AlertType? type) {
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
        return OrbitIcons.alertCircle;
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

  LocalAlertStyle({
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
