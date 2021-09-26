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
  Color get cloudDark;

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
  Color get productLight => Product.Light;
  @override
  Color get productNormal => Product.Normal;
  @override
  Color get productDark => Product.Dark;

  @override
  Color get whiteNormal => White.Normal;

  @override
  Color get cloudLight => Cloud.Light;
  @override
  Color get cloudDark => Cloud.Dark;

  @override
  Color get inkNormal => Ink.Normal;

  @override
  Color get greenLight => Green.Light;
  @override
  Color get greenLightHover => Green.LightHover;
  @override
  Color get greenNormal => Green.Normal;
  @override
  Color get greenDark => Green.Dark;

  @override
  Color get orangeLight => Orange.Light;
  @override
  Color get orangeLightHover => Orange.LightHover;
  @override
  Color get orangeNormal => Orange.Normal;
  @override
  Color get orangeDark => Orange.Dark;

  @override
  Color get redLight => Red.Light;
  @override
  Color get redLightHover => Red.LightHover;
  @override
  Color get redNormal => Red.Normal;
  @override
  Color get redDark => Red.Dark;

  @override
  Color get blueLight => Blue.Light;
  @override
  Color get blueLightHover => Blue.LightHover;
  @override
  Color get blueNormal => Blue.Normal;
  @override
  Color get blueDark => Blue.Dark;
}
