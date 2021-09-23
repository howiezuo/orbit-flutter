import 'dart:ui';

import 'color/palette.dart';

abstract class OrbitColorToken {
  Color get productNormal;
  Color get white;
}

class OrbitColors implements OrbitColorToken {
  @override
  Color productNormal;
  Color white;

  OrbitColors({
    required this.productNormal,
    required this.white,
  });

  factory OrbitColors.light() => OrbitColors(
        productNormal: Light.ProductNormal,
        white: Light.White,
      );
}
