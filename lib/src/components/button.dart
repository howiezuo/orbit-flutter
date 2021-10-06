import 'package:flutter/material.dart';

import '../theme.dart';

/**
 * TODO
 * shdow
 * ripple
 * disable
 * remove margin?
 */
class Button extends StatelessWidget {
  final Widget? child;
  final IconData? iconLeft;
  final IconData? iconRight;
  final VoidCallback? onPressed;
  final ButtonType type;
  final bool fullWidth;

  bool get _hasLeftIcon => iconLeft != null;
  bool get _hasRightIcon => iconLeft == null;
  bool get _onlyIcon => iconLeft != null && child == null && iconRight == null;
  bool get _hasIcons => _hasLeftIcon && _hasLeftIcon;

  const Button({
    Key? key,
    required Widget this.child,
    required this.onPressed,
    this.iconLeft,
    this.iconRight,
    this.type = ButtonType.primary,
    this.fullWidth = true,
  }) : super(key: key);

  const Button.icon({
    Key? key,
    required IconData icon,
    required this.onPressed,
    this.type = ButtonType.primary,
    this.fullWidth = true,
  })  : this.iconLeft = icon,
        this.child = null,
        this.iconRight = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final style = _fromTheme(context);

    final content = _content(theme, style);
    return ElevatedButton(
      onPressed: onPressed,
      child: content,
      style: ElevatedButton.styleFrom(
        primary: style.background,
        onPrimary: style.textColor,
        elevation: 0,
        textStyle: TextStyle(
          fontSize: style.fontSize,
          fontWeight: theme.baseTokens.fontWeightMedium,
        ),
        padding: style.padding,
        minimumSize: fullWidth == true
            ? Size.fromHeight(style.height!)
            : Size(style.height!, style.height!),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(theme.baseTokens.borderRadius)),
      ),
    );
  }

  Widget _content(OrbitThemeData theme, ButtonStyle style) {
    if (_onlyIcon) return _icon(theme, style, iconLeft);

    if (child != null) {
      return Row(
        mainAxisAlignment: iconRight != null || iconLeft != null
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
        children: [
          Row(
            children: [
              if (iconLeft != null) _icon(theme, style, iconLeft),
              if (iconLeft != null)
                SizedBox(width: theme.baseTokens.spaceXsmall),
              child!,
            ],
          ),
          if (iconRight != null) SizedBox(width: theme.baseTokens.spaceXsmall),
          if (iconRight != null) _icon(theme, style, iconRight),
        ],
      );
    }

    throw Exception('Either a child widget or an icon need to be applied');
  }

  Widget _icon(OrbitThemeData theme, ButtonStyle style, IconData? icon) {
    return Icon(
      icon,
      color: style.textColor,
      size: theme.iconTokens.sizeMedium,
    );
  }

  ButtonStyle _fromTheme(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final defaultStyle = ButtonTokens.fromDefault(context);

    Color resolveTextColor() {
      switch (type) {
        case ButtonType.secondary:
          return defaultStyle.colorTextSecondary!;
        case ButtonType.critical:
          return defaultStyle.colorTextCritical!;
        case ButtonType.primarySubtle:
          return colors.productNormal;
        case ButtonType.ciritcalSubtle:
          return colors.redNormal;
        default:
          return defaultStyle.colorTextPrimary!;
      }
    }

    Color resolveBackground() {
      switch (type) {
        case ButtonType.secondary:
          return defaultStyle.backgroundSecondary!;
        case ButtonType.critical:
          return defaultStyle.backgroundCritical!;
        case ButtonType.primarySubtle:
          return colors.productLight;
        case ButtonType.ciritcalSubtle:
          return colors.redLight;
        default:
          return defaultStyle.backgroundPrimary!;
      }
    }

    EdgeInsets resolvePadding() {
      if (_onlyIcon) return defaultStyle.paddingWithoutText!;

      if (_hasIcons) {
        return defaultStyle.paddingNormalWithIcons!;
      } else if (_hasLeftIcon) {
        return defaultStyle.paddingNormalWithLeftIcon!;
      } else if (_hasRightIcon) {
        return defaultStyle.paddingNormalWithRightIcon!;
      }
      return defaultStyle.paddingNormal!;
    }

    return ButtonStyle.raw(
      textColor: resolveTextColor(),
      background: resolveBackground(),
      height: defaultStyle.heightNormal!,
      fontSize: defaultStyle.fontSizeNormal!,
      padding: resolvePadding(),
    );
  }
}

class ButtonStyle {
  final Color? textColor;
  final Color? background;
  final double? height;
  final double? fontSize;
  final EdgeInsets? padding;

  const ButtonStyle({
    this.textColor,
    this.background,
    this.height,
    this.fontSize,
    this.padding,
  });

  const ButtonStyle.raw({
    required Color this.textColor,
    required Color this.background,
    required double this.height,
    required double this.fontSize,
    required EdgeInsets this.padding,
  });
}

enum ButtonType {
  primary,
  secondary,
  critical,
  primarySubtle,
  ciritcalSubtle,
}
