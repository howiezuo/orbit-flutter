import 'dart:ui';

import 'package:orbit/src/foundation/palette.dart';

abstract class ColorTokens {
  // product
  Color get productLight;
  Color get productNormal;
  Color get productDark;

  // white
  Color get whiteNormal;

  // cloud
  Color get cloudLight;
  Color get cloudNormal;
  Color get cloudDark;
  Color get cloudDarker;

  // ink
  Color get inkNormal;

  // green
  Color get greenLight;
  Color get greenLightHover;
  Color get greenNormal;
  Color get greenDark;

  // orange
  Color get orangeLight;
  Color get orangeLightHover;
  Color get orangeNormal;
  Color get orangeDark;

  // red
  Color get redLight;
  Color get redLightHover;
  Color get redNormal;
  Color get redDark;

  // blue
  Color get blueLight;
  Color get blueLightHover;
  Color get blueNormal;
  Color get blueDark;
}

class Colors implements ColorTokens {
  @override
  Color get productLight => Palette.ProductLight;
  @override
  Color get productNormal => Palette.ProductNormal;
  @override
  Color get productDark => Palette.ProductDark;

  @override
  Color get whiteNormal => Palette.WhiteNormal;

  @override
  Color get cloudLight => Palette.CloudLight;
  @override
  Color get cloudNormal => Palette.CloudNormal;
  @override
  Color get cloudDark => Palette.CloudDark;
  @override
  Color get cloudDarker => Palette.CloudDarker;

  @override
  Color get inkNormal => Palette.InkNormal;

  @override
  Color get greenLight => Palette.GreenLight;
  @override
  Color get greenLightHover => Palette.GreenLightHover;
  @override
  Color get greenNormal => Palette.GreenNormal;
  @override
  Color get greenDark => Palette.GreenDark;

  @override
  Color get orangeLight => Palette.OrangeLight;
  @override
  Color get orangeLightHover => Palette.OrangeLightHover;
  @override
  Color get orangeNormal => Palette.OrangeNormal;
  @override
  Color get orangeDark => Palette.OrangeDark;

  @override
  Color get redLight => Palette.RedLight;
  @override
  Color get redLightHover => Palette.RedLightHover;
  @override
  Color get redNormal => Palette.RedNormal;
  @override
  Color get redDark => Palette.RedDark;

  @override
  Color get blueLight => Palette.BlueLight;
  @override
  Color get blueLightHover => Palette.BlueLightHover;
  @override
  Color get blueNormal => Palette.BlueNormal;
  @override
  Color get blueDark => Palette.BlueDark;
}
