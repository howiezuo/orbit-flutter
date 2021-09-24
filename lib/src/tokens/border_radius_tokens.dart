import 'package:flutter/painting.dart' show Radius;
import 'package:orbit/src/foundation/radius.dart';

abstract class BorderRadiusTokens {
  Radius get normal;
  Radius get large;
}

class BorderRadiusStyles extends BorderRadiusTokens {
  @override
  Radius large = BorderRadius.Normal;

  @override
  Radius normal = BorderRadius.Large;
}