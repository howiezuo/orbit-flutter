import 'dart:ui';

import 'package:orbit/src/foundation/base.dart';

abstract class TypographyTokens {
  double get fontSizeSmall;
  double get fontSizeMedium;
  double get fontSizeLarge;

  FontWeight get fontWeightMedium;
}

class Typography implements TypographyTokens {
  @override
  double get fontSizeSmall => Base.fontSizeSm;
  @override
  double get fontSizeMedium => Base.fontSizeMd;
  @override
  double get fontSizeLarge => Base.fontSizeLg;

  @override
  FontWeight get fontWeightMedium => Base.FontWeightMedium;
}
