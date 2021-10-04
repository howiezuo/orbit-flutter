import 'dart:ui';

import 'package:flutter/foundation.dart';

/// https://github.com/kiwicom/orbit/blob/master/packages/orbit-design-tokens/src/foundation.js
@immutable
class Base {
  static const double FontSizeSm = 12;
  static const double FontSizeMd = 14;
  static const double FontSizeLg = 16;

  // 3 for desktop, 6 for mobile
  static const BorderRadius = const Radius.circular(6);

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

  static const DurationFast = const Duration(milliseconds: 150);
  static const DurationNormal = const Duration(milliseconds: 300);
  static const DurationSlow = const Duration(milliseconds: 400);

  // TODO
  // transitionDefault: "ease-in-out",

  static const double LineHeight = 1.4;
}
