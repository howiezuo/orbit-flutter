import 'dart:ui';

import 'package:flutter/painting.dart';
import 'package:orbit/src/foundation/base.dart';

abstract class TypographyTokens {
  double get fontSizeSmall;
  double get fontSizeMedium;
  double get fontSizeLarge;

  double get fontSizeHeadingTitle3;

  FontWeight get fontWeightNormal;
  FontWeight get fontWeightMedium;

  FontWeight get fontWeightHeadingTitle3;

  double get lineHeightHeadingTitle3;
}

class Typography implements TypographyTokens {
  @override
  double get fontSizeSmall => Base.fontSizeSm;
  @override
  double get fontSizeMedium => Base.fontSizeMd;
  @override
  double get fontSizeLarge => Base.fontSizeLg;

  @override
  double get fontSizeHeadingTitle3 => 16;

  @override
  FontWeight get fontWeightNormal => Base.FontWeightNormal;
  @override
  FontWeight get fontWeightMedium => Base.FontWeightMedium;

  @override
  FontWeight get fontWeightHeadingTitle3 => fontWeightMedium;

  @override
  double get lineHeightHeadingTitle3 => 24;
}
