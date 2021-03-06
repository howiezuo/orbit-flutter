import 'dart:ui' show FontWeight, Radius;

import 'package:orbit/orbit.dart';
import 'package:orbit/src/foundation/base.dart';

class BaseTokens {
  final double fontSizeSmall;
  final double fontSizeMedium;
  final double fontSizeLarge;

  final Radius borderRadius;

  final double sizeSmall;
  final double sizeMedium;
  final double sizeLarge;
  final double sizeXlarge;
  final double sizeXxlarge;

  final double opacitySmall;
  final double opacityMedium;
  final double opacityLarge;

  final FontWeight fontWeightNormal;
  final FontWeight fontWeightMedium;
  final FontWeight fontWeightBold;

  final double spaceXxsmall;
  final double spaceXsmall;
  final double spaceSmall;
  final double spaceMedium;
  final double spaceLarge;
  final double spaceXlarge;
  final double spaceXxlarge;
  final double spaceXxxlarge;

  final durationFast;
  final durationNormal;
  final durationSlow;

  // TODO
  // transitionDefault: "ease-in-out",

  final double lineHeight;

  const BaseTokens({
    this.fontSizeSmall = Base.FontSizeSm,
    this.fontSizeMedium = Base.FontSizeMd,
    this.fontSizeLarge = Base.FontSizeLg,
    this.borderRadius = Base.BorderRadius,
    this.sizeSmall = Base.SizeSm,
    this.sizeMedium = Base.SizeMd,
    this.sizeLarge = Base.SizeLg,
    this.sizeXlarge = Base.SizeXl,
    this.sizeXxlarge = Base.SizeXxl,
    this.opacitySmall = Base.OpacitySmall,
    this.opacityMedium = Base.OpacityMedium,
    this.opacityLarge = Base.OpacityLarge,
    this.fontWeightNormal = Base.FontWeightNormal,
    this.fontWeightMedium = Base.FontWeightMedium,
    this.fontWeightBold = Base.FontWeightBold,
    this.spaceXxsmall = Base.SpaceXxs,
    this.spaceXsmall = Base.SpaceXs,
    this.spaceSmall = Base.SpaceSm,
    this.spaceMedium = Base.SpaceMd,
    this.spaceLarge = Base.SpaceLg,
    this.spaceXlarge = Base.SpaceXl,
    this.spaceXxlarge = Base.SpaceXxl,
    this.spaceXxxlarge = Base.SpaceXxxl,
    this.durationFast = Base.DurationFast,
    this.durationNormal = Base.DurationNormal,
    this.durationSlow = Base.DurationSlow,
    this.lineHeight = Base.LineHeight,
  });
}
