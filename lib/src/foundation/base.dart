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

  /// use for all basic elements like buttons, inputs, content containers
  static const BorderRadiusNormal = const Radius.circular(6);

  /// use for big elements like modal and large buttons
  static const BorderRadiusLarge = const Radius.circular(6);

  static const double OpacitySmall = 0.3;
  static const double OpacityMedium = 0.5;
  static const double OpacityLarge = 0.8;
}
