import 'dart:ui';

import 'package:flutter/foundation.dart';

@immutable
class Base {
  const Base._();

  static const double fontSizeSm = 12;
  static const double fontSizeMd = 14;
  static const double fontSizeLg = 16;

  static const FontWeightNormal = FontWeight.w400;
  static const FontWeightMedium = FontWeight.w500;
  static const FontWeightBold = FontWeight.w700;

  static const double LineHeight = 1.4;
}
