import 'package:orbit/orbit.dart';

class RadioTokens {
  final Color infoColor;
  final Color borderColor;
  final Color borderColorError;
  final double size;

  RadioTokens({
    required this.infoColor,
    required this.borderColor,
    required this.borderColorError,
    required this.size,
  });

  static RadioTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;

    return RadioTokens(
      infoColor: colors.inkLight,
      borderColor: colors.cloudDarker,
      borderColorError: colors.redNormal,
      size: 20,
    );
  }
}
