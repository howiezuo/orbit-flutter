import 'dart:ui';

import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

abstract class CardTokens {
  Color get background;
  Color get borderColor;
  Border get border;
}

class CardStyles extends CardTokens {
  @override
  final Color background;

  @override
  final Border border;

  @override
  final Color borderColor;

  CardStyles({
    required this.background,
    required this.border,
    required this.borderColor,
  });

  static CardTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    return CardStyles(
      background: colors.whiteNormal,
      border: Border.all(width: 1),
      borderColor: colors.cloudNormal,
    );
  }
}
