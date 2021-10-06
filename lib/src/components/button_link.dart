import 'package:flutter/material.dart';

import '../theme.dart';

class ButtonLink extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;
  final IconData? iconLeft;
  final IconData? iconRight;
  final ButtonLinkType? type;
  final bool fullWidth;

  bool get _hasLeftIcon => iconLeft != null;
  bool get _hasRightIcon => iconLeft == null;
  bool get _onlyIcon => iconLeft != null && child == null && iconRight == null;
  bool get _hasIcons => _hasLeftIcon && _hasLeftIcon;

  const ButtonLink({
    Key? key,
    required this.child,
    required this.onPressed,
    this.iconLeft,
    this.iconRight,
    ButtonLinkType this.type = ButtonLinkType.primary,
    this.fullWidth = true,
  }) : super(key: key);

  const ButtonLink.icon({
    Key? key,
    required IconData icon,
    required this.onPressed,
    this.type = ButtonLinkType.primary,
    this.fullWidth = true,
  })  : this.iconLeft = icon,
        this.child = null,
        this.iconRight = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final style = _fromTheme(context);

    return TextButton(
      onPressed: onPressed,
      child: _content(theme, style),
      style: TextButton.styleFrom(
        backgroundColor: style.background,
        primary: style.color,
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
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      )
      // .copyWith(
      //   backgroundColor: MaterialStateProperty.resolveWith<Color?>(
      //       (states) => style.background),
      //   foregroundColor:
      //       MaterialStateProperty.resolveWith<Color?>((states) => style.color),
      //   elevation: MaterialStateProperty.resolveWith((states) => 0),
      // )
      ,
    );
  }

  Widget _content(OrbitThemeData theme, ButtonLinkStyle style) {
    if (_onlyIcon) return _icon(theme, iconLeft);

    if (child != null) {
      return Row(
        mainAxisAlignment: iconRight != null || iconLeft != null
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
        children: [
          Row(
            children: [
              if (iconLeft != null) _icon(theme, iconLeft),
              if (iconLeft != null)
                SizedBox(width: theme.baseTokens.spaceXsmall),
              child!,
            ],
          ),
          if (iconRight != null) SizedBox(width: theme.baseTokens.spaceXsmall),
          if (iconRight != null) _icon(theme, iconRight),
        ],
      );
    }

    throw Exception('Either a child widget or an icon need to be applied');
  }

  Widget _icon(OrbitThemeData theme, IconData? icon) {
    return Icon(icon, size: theme.iconTokens.sizeMedium);
  }

  ButtonLinkStyle _fromTheme(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final defaultStyle = ButtonLinkTokens.fromDefault(context);

    Color resolveColor() {
      switch (type) {
        case ButtonLinkType.secondary:
          return defaultStyle.colorTextSecondary!;
        case ButtonLinkType.ciritcal:
          return theme.colorTokens.redNormal;
        default:
          return defaultStyle.colorTextPrimary!;
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

    return ButtonLinkStyle.raw(
      color: resolveColor(),
      background: Palette.Transparent,
      height: defaultStyle.heightNormal!,
      fontSize: defaultStyle.fontSizeNormal!,
      padding: resolvePadding(),
    );
  }
}

class ButtonLinkStyle {
  final Color? color;
  final Color? background;
  final double? height;
  final double? fontSize;
  final EdgeInsets? padding;

  const ButtonLinkStyle({
    this.color,
    this.background,
    this.height,
    this.fontSize,
    this.padding,
  });

  const ButtonLinkStyle.raw({
    required Color this.color,
    required Color this.background,
    required double this.height,
    required double this.fontSize,
    required EdgeInsets this.padding,
  });
}

enum ButtonLinkType { primary, secondary, ciritcal }
