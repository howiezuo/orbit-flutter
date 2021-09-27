import 'package:flutter/material.dart';
import 'package:orbit/orbit.dart';

class Button extends StatelessWidget {
  final String? label;
  final IconData? iconLeft;
  final IconData? iconRight;
  final VoidCallback? onPressed;
  final ButtonType? type;
  final ButtonSize? size;
  final bool? isFullWidth;
  final Widget? child;

  bool get _onlyIcon => iconLeft != null && label == null && iconRight == null;
  bool get _hasIcons => iconLeft != null && iconRight != null;
  bool get _hasLeftIcon => iconLeft != null;
  bool get _hasRightIcon => iconLeft == null;

  Button({
    Key? key,
    required String this.label,
    required this.onPressed,
    this.iconLeft,
    this.iconRight,
    ButtonType this.type = ButtonType.primary,
    ButtonSize this.size = ButtonSize.normal,
    bool this.isFullWidth = true,
  })  : this.child = null,
        super(key: key);

  const Button.icon({
    Key? key,
    required IconData icon,
    required this.onPressed,
    ButtonType this.type = ButtonType.primary,
    ButtonSize this.size = ButtonSize.normal,
    bool this.isFullWidth = true,
  })  : this.iconLeft = icon,
        this.child = null,
        this.label = null,
        this.iconRight = null,
        super(key: key);

  const Button.raw({
    Key? key,
    required Widget this.child,
    required this.onPressed,
    ButtonType this.type = ButtonType.primary,
    ButtonSize this.size = ButtonSize.normal,
    bool this.isFullWidth = true,
  })  : this.label = null,
        this.iconLeft = null,
        this.iconRight = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final style = _fromTheme(context);

    final content = _buildContent(context);
    return ElevatedButton(
      onPressed: onPressed,
      child: content,
      style: ElevatedButton.styleFrom(
        primary: style.background,
        onPrimary: style.textColor,
        elevation: 0,
        textStyle: TextStyle(
          fontSize: style.fontSize,
          fontWeight: style.fontWeight,
        ),
        padding: style.padding,
        minimumSize: isFullWidth == true
            ? Size.fromHeight(style.height!)
            : Size(double.minPositive, style.height!),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(theme.borderRadiusTokens.normal)),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final style = _fromTheme(context);

    if (child != null) return child!;

    if (_onlyIcon) return Icon(iconLeft);

    if (label != null) {
      MainAxisAlignment resolveAlign() {
        if (iconRight != null || iconLeft != null) {
          return MainAxisAlignment.spaceBetween;
        } else {
          return MainAxisAlignment.center;
        }
      }

      var aligment = resolveAlign();

      return Row(
        mainAxisAlignment: aligment,
        mainAxisSize: isFullWidth == true ? MainAxisSize.max : MainAxisSize.min,
        children: [
          Row(
            children: [
              if (iconLeft != null)
                Padding(
                  padding: EdgeInsets.only(right: style.gap!),
                  child: Icon(iconLeft),
                ),
              Text(label!),
            ],
          ),
          if (iconRight != null)
            Padding(
              padding: EdgeInsets.only(left: style.gap!),
              child: Icon(iconRight),
            ),
        ],
      );
    }

    throw Exception('Either a child widget or a label need to be applied');
  }

  LocalButtonStyle _fromTheme(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final defaultStyle = ButtonStyles.fromDefault(context);
    final colors = theme.colorTokens;

    Color resolveTextColor() {
      switch (type) {
        case ButtonType.secondary:
          return defaultStyle.colorTextSecondary;
        case ButtonType.critical:
          return defaultStyle.colorTextCritical;
        case ButtonType.white:
          return defaultStyle.colorTextWhite;
        case ButtonType.primarySubtle:
          return colors.productNormal;
        case ButtonType.ciritcalSubtle:
          return colors.redNormal;
        default:
          return defaultStyle.colorTextPrimary;
      }
    }

    Color resolveBackground() {
      switch (type) {
        case ButtonType.secondary:
          return defaultStyle.backgroundSecondary;
        case ButtonType.critical:
          return defaultStyle.backgroundCritical;
        case ButtonType.white:
          return defaultStyle.backgroundWhite;
        case ButtonType.primarySubtle:
          return colors.productLight;
        case ButtonType.ciritcalSubtle:
          return colors.redLight;
        default:
          return defaultStyle.backgroundPrimary;
      }
    }

    double resolveHeight() {
      switch (size) {
        case ButtonSize.small:
          return defaultStyle.heightSmall;
        case ButtonSize.large:
          return defaultStyle.heightLarge;
        default:
          return defaultStyle.heightNormal;
      }
    }

    double resolveFontSize() {
      switch (size) {
        case ButtonSize.small:
          return defaultStyle.fontSizeSmall;
        case ButtonSize.large:
          return defaultStyle.fontSizeLarge;
        default:
          return defaultStyle.fontSizeNormal;
      }
    }

    EdgeInsets resolvePadding() {
      switch (size) {
        case ButtonSize.small:
          if (_hasIcons) {
            return defaultStyle.paddingSmallWithIcons;
          } else if (_hasLeftIcon) {
            return defaultStyle.paddingSmallWithLeftIcon;
          } else if (_hasRightIcon) {
            return defaultStyle.paddingSmallWithRightIcon;
          }
          return defaultStyle.paddingSmall;
        case ButtonSize.large:
          if (_hasIcons) {
            return defaultStyle.paddingLargeWithIcons;
          } else if (_hasLeftIcon) {
            return defaultStyle.paddingLargeWithLeftIcon;
          } else if (_hasRightIcon) {
            return defaultStyle.paddingLargeWithRightIcon;
          }
          return defaultStyle.paddingLarge;
        default:
          if (_hasIcons) {
            return defaultStyle.paddingNormalWithIcons;
          } else if (_hasLeftIcon) {
            return defaultStyle.paddingNormalWithLeftIcon;
          } else if (_hasRightIcon) {
            return defaultStyle.paddingNormalWithRightIcon;
          }
          return defaultStyle.paddingNormal;
      }
    }

    double resolveGap() {
      switch (size) {
        case ButtonSize.large:
          return theme.spaceTokens.small;
        case ButtonSize.small:
        default:
          return theme.spaceTokens.xSmall;
      }
    }

    final textColor = resolveTextColor();
    final background = resolveBackground();
    final height = resolveHeight();
    final fontSize = resolveFontSize();
    final fontWeight = theme.typographyTokens.fontWeightMedium;
    final padding = resolvePadding();
    final gap = resolveGap();

    // TODO icon size
    return LocalButtonStyle.raw(
      background: background,
      textColor: textColor,
      height: height,
      fontSize: fontSize,
      fontWeight: fontWeight,
      padding: padding,
      gap: gap,
    );
  }
}

class LocalButtonStyle {
  final Color? background;
  final Color? textColor;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsets? padding;
  final double? gap;

  const LocalButtonStyle({
    this.background,
    this.textColor,
    this.height,
    this.fontSize,
    this.fontWeight,
    this.padding,
    this.gap,
  });

  const LocalButtonStyle.raw({
    required Color this.background,
    required Color this.textColor,
    required double this.height,
    required double this.fontSize,
    required FontWeight this.fontWeight,
    required EdgeInsets this.padding,
    required double this.gap,
  });
}

enum ButtonType {
  primary,
  secondary,
  critical,
  white,
  primarySubtle,
  ciritcalSubtle,
}

enum ButtonSize { small, normal, large }
