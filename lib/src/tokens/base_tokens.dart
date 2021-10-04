import 'dart:ui' show FontWeight, Radius;

import 'package:orbit/orbit.dart';
import 'package:orbit/src/foundation/base.dart';

class BaseTokens {
  final double fontSizeSm;
  final double fontSizeMd;
  final double fontSizeLg;

  final Radius borderRadius;

  final double sizeSm;
  final double sizeMd;
  final double sizeLg;
  final double sizeXl;
  final double sizeXxl;

  final double opacitySmall;
  final double opacityMedium;
  final double opacityLarge;

  final FontWeight fontWeightNormal;
  final FontWeight fontWeightMedium;
  final FontWeight fontWeightBold;

  final double spaceXxs;
  final double spaceXs;
  final double spaceSm;
  final double spaceMd;
  final double spaceLg;
  final double spaceXl;
  final double spaceXxl;
  final double spaceXxxl;

  final durationFast;
  final durationNormal;
  final durationSlow;

  // TODO
  // transitionDefault: "ease-in-out",

  final double lineHeight;

  const BaseTokens({
    this.fontSizeSm = Base.FontSizeSm,
    this.fontSizeMd = Base.FontSizeMd,
    this.fontSizeLg = Base.FontSizeLg,
    this.borderRadius = Base.BorderRadius,
    this.sizeSm = Base.SizeSm,
    this.sizeMd = Base.SizeMd,
    this.sizeLg = Base.SizeLg,
    this.sizeXl = Base.SizeXl,
    this.sizeXxl = Base.SizeXxl,
    this.opacitySmall = Base.OpacitySmall,
    this.opacityMedium = Base.OpacityMedium,
    this.opacityLarge = Base.OpacityLarge,
    this.fontWeightNormal = Base.FontWeightNormal,
    this.fontWeightMedium = Base.FontWeightMedium,
    this.fontWeightBold = Base.FontWeightBold,
    this.spaceXxs = Base.SpaceXxs,
    this.spaceXs = Base.SpaceXs,
    this.spaceSm = Base.SpaceSm,
    this.spaceMd = Base.SpaceMd,
    this.spaceLg = Base.SpaceLg,
    this.spaceXl = Base.SpaceXl,
    this.spaceXxl = Base.SpaceXxl,
    this.spaceXxxl = Base.SpaceXxxl,
    this.durationFast = Base.DurationFast,
    this.durationNormal = Base.DurationNormal,
    this.durationSlow = Base.DurationSlow,
    this.lineHeight = Base.LineHeight,
  });
}
