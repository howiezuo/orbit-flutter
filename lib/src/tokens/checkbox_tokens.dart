import 'package:orbit/orbit.dart';

class CheckBoxTokens {
  final Color borderColorRadio;
  final double size;

  CheckBoxTokens({
    required this.borderColorRadio,
    required this.size,
  });

  static CheckBoxTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;

    return CheckBoxTokens(
      borderColorRadio: colors.cloudDarker,
      size: 20,
    );
  }
}
