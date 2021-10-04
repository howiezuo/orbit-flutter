import 'package:flutter/painting.dart' show Radius;

abstract class BorderRadiusTokens {
  /// use for all basic elements like buttons, inputs, content containers
  Radius get normal;
  /// use for big elements like modal and large buttons
  Radius get large;
}

class BorderRadiusStyles extends BorderRadiusTokens {
  @override
  Radius large = const Radius.circular(6);

  @override
  Radius normal = const Radius.circular(6);
}