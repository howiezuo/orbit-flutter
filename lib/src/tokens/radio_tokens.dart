import 'package:orbit/orbit.dart';

class RadioTokens {
  final Color borderColor;
  final double size;
  final Color infoColor;

  RadioTokens({
    required this.borderColor,
    required this.size,
    required this.infoColor,
  });

  static RadioTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;

    return RadioTokens(
      borderColor: colors.cloudDarker,
      infoColor: colors.inkLight,
      size: 20,
    );
  }
}
