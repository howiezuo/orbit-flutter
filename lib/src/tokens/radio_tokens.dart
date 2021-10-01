import 'package:orbit/orbit.dart';

class RadioTokens {
  final Color borderColor;
  final double size;

  RadioTokens({
    required this.borderColor,
    required this.size,
  });

  static RadioTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;

    return RadioTokens(
      borderColor: colors.cloudDarker,
      size: 20,
    );
  }
}
