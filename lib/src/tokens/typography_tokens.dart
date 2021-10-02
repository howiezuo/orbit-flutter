import 'dart:ui';

import 'package:flutter/painting.dart';
import 'package:orbit/src/foundation/base.dart';

abstract class TypographyTokens {
  double get fontSizeSmall;
  double get fontSizeMedium;
  double get fontSizeLarge;

  double get fontSizeHeadingTitle2;
  double get fontSizeHeadingTitle3;
  double get fontSizeHeadingTitle4;

  FontWeight get fontWeightNormal;
  FontWeight get fontWeightMedium;

  FontWeight get fontWeightHeadingTitle2;
  FontWeight get fontWeightHeadingTitle3;
  FontWeight get fontWeightHeadingTitle4;

  double get lineHeightHeadingTitle2;
  double get lineHeightHeadingTitle3;
  double get lineHeightHeadingTitle4;
  double get lineHeightTextSmall;
  double get lineHeightTextNormal;
}

class Typography implements TypographyTokens {
  @override
  double get fontSizeSmall => Base.fontSizeSm;
  @override
  double get fontSizeMedium => Base.fontSizeMd;
  @override
  double get fontSizeLarge => Base.fontSizeLg;

  @override
  double get fontSizeHeadingTitle2 => 22;
  @override
  double get fontSizeHeadingTitle3 => 16;
  @override
  double get fontSizeHeadingTitle4 => Base.fontSizeMd;

  @override
  FontWeight get fontWeightNormal => Base.FontWeightNormal;
  @override
  FontWeight get fontWeightMedium => Base.FontWeightMedium;

  @override
  FontWeight get fontWeightHeadingTitle2 => fontWeightMedium;
  @override
  FontWeight get fontWeightHeadingTitle3 => fontWeightMedium;
  @override
  FontWeight get fontWeightHeadingTitle4 => fontWeightMedium;

  @override
  double get lineHeightHeadingTitle2 => 28;
  @override
  double get lineHeightHeadingTitle3 => 24;
  @override
  double get lineHeightHeadingTitle4 => 20;
  @override
  double get lineHeightTextSmall => 16;
  @override
  double get lineHeightTextNormal => 20;
}
