import 'package:flutter/widgets.dart';
import 'package:orbit/src/foundation/colors.dart';

abstract class ButtonTokens {
  double get height;
  double get fontSize;
  EdgeInsetsGeometry get padding;
  Color get background;
  Color get colorText;
}

class ButtonStyles extends ButtonTokens {
  @override
  Color background;

  @override
  Color colorText;

  @override
  double fontSize;

  @override
  double height;

  @override
  EdgeInsetsGeometry padding;

  ButtonStyles({
    required this.background,
    required this.colorText,
    required this.fontSize,
    required this.height,
    required this.padding,
  });

  factory ButtonStyles.light() => ButtonStyles(
        background: Product.Normal,
        colorText: White.Normal,
        fontSize: 14,
        height: 44,
        padding: EdgeInsets.symmetric(horizontal: 16),
      );
}
