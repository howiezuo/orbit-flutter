import 'dart:ui';

import 'package:orbit/src/foundation/base.dart';

class TypographyTokens {
  final double fontSizeHeadingTitle2;
  final double fontSizeHeadingTitle3;
  final double fontSizeHeadingTitle4;

  final FontWeight fontWeightHeadingTitle2;
  final FontWeight fontWeightHeadingTitle3;
  final FontWeight fontWeightHeadingTitle4;

  final double lineHeightHeadingTitle2;
  final double lineHeightHeadingTitle3;
  final double lineHeightHeadingTitle4;
  final double lineHeightTextSmall;
  final double lineHeightTextNormal;

  TypographyTokens({
    this.fontSizeHeadingTitle2 = 22,
    this.fontSizeHeadingTitle3 = 16,
    this.fontSizeHeadingTitle4 = Base.FontSizeMd,
    this.fontWeightHeadingTitle2 = Base.FontWeightMedium,
    this.fontWeightHeadingTitle3 = Base.FontWeightMedium,
    this.fontWeightHeadingTitle4 = Base.FontWeightMedium,
    this.lineHeightHeadingTitle2 = 28,
    this.lineHeightHeadingTitle3 = 24,
    this.lineHeightHeadingTitle4 = 20,
    this.lineHeightTextSmall = 16,
    this.lineHeightTextNormal = 20,
  });
}
