import 'package:flutter/painting.dart' show Radius;
import 'package:orbit/src/foundation/base.dart';

abstract class BorderRadiusTokens {
  Radius get normal;
  Radius get large;
}

class BorderRadiusStyles extends BorderRadiusTokens {
  @override
  Radius large = Base.BorderRadius;

  @override
  Radius normal = Base.BorderRadius;
}