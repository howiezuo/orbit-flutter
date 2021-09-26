import 'dart:ui';

import 'package:orbit/src/foundation/base.dart';

abstract class TypographyTokens {
  double get fontSizeSmall;

  FontWeight get fontWeightMedium;
}

class Typography implements TypographyTokens {
  @override
  double get fontSizeSmall => Base.fontSizeSm;

  @override
  FontWeight get fontWeightMedium => Base.FontWeightMedium;
}