import 'package:flutter/material.dart';
import 'package:orbit/orbit.dart';

class Button extends StatelessWidget {
  final Widget _child;
  final VoidCallback? _onPressed;
  final ButtonType? type;
  final ButtonSize? size;

  const Button({
    Key? key,
    required Widget child,
    required VoidCallback? onPressed,
    ButtonType this.type = ButtonType.primary,
    ButtonSize this.size = ButtonSize.normal,
  })  : this._child = child,
        this._onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final style = _fromTheme(context);
    return ElevatedButton(
      onPressed: _onPressed,
      child: _child,
      style: ElevatedButton.styleFrom(
        primary: style.background,
        onPrimary: style.textColor,
        elevation: 0,
        textStyle: TextStyle(fontSize: style.fontSize),
        padding: style.padding,
        minimumSize: Size(double.infinity, style.height!),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(theme.borderRadiusTokens.normal)),
      ),
    );
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

// TODO with icons
    EdgeInsets resolvePadding() {
      switch (size) {
        case ButtonSize.small:
          return defaultStyle.paddingSmall;
        case ButtonSize.large:
          return defaultStyle.paddingLarge;
        default:
          return defaultStyle.paddingNormal;
      }
    }

    final textColor = resolveTextColor();
    final background = resolveBackground();
    final height = resolveHeight();
    final fontSize = resolveFontSize();
    final padding = resolvePadding();

    // TODO icon size
    return LocalButtonStyle.raw(
      background: background,
      textColor: textColor,
      height: height,
      fontSize: fontSize,
      padding: padding,
    );
  }
}

class LocalButtonStyle {
  final Color? background;
  final Color? textColor;
  final double? height;
  final double? fontSize;
  final EdgeInsets? padding;

  const LocalButtonStyle({
    this.background,
    this.textColor,
    this.height,
    this.fontSize,
    this.padding,
  });

  const LocalButtonStyle.raw({
    required Color this.background,
    required Color this.textColor,
    required double this.height,
    required double this.fontSize,
    required EdgeInsets this.padding,
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
