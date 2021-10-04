import 'package:flutter/painting.dart' show Radius;

import 'package:orbit/src/foundation/base.dart';

/// https://orbit.kiwi/foundation/border-radiuses/
class BorderRadiusTokens {
  final Radius normal;

  const BorderRadiusTokens({
    this.normal = Base.borderRadius,
  });
}
