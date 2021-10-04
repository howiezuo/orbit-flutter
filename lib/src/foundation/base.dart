import 'dart:ui';

import 'package:flutter/foundation.dart';

@immutable
class Base {
  static const double fontSizeSm = 12;
  static const double fontSizeMd = 14;
  static const double fontSizeLg = 16;

  static const double borderRadius = 3;

  static const double SizeSm = 16;
  static const double SizeMd = 24;
  static const double SizeLg = 32;
  static const double SizeXl = 44;
  static const double SizeXxl = 52;

  static const double OpacitySmall = 0.3;
  static const double OpacityMedium = 0.5;
  static const double OpacityLarge = 0.8;

  static const FontWeightNormal = FontWeight.w400;
  static const FontWeightMedium = FontWeight.w500;
  static const FontWeightBold = FontWeight.w700;

  static const double SpaceXxs = 4;
  static const double SpaceXs = 8;
  static const double SpaceSm = 12;
  static const double SpaceMd = 16;
  static const double SpaceLg = 24;
  static const double SpaceXl = 32;
  static const double SpaceXxl = 40;
  static const double SpaceXxxl = 52;

  static const durationFast = Duration(milliseconds: 150);
  static const durationNormal = Duration(milliseconds: 300);
  static const durationSlow = Duration(milliseconds: 400);

  // TODO
  // transitionDefault: "ease-in-out",

  static const double LineHeight = 1.4;
}
