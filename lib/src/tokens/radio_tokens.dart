import 'package:orbit/orbit.dart';

class RadioTokens {
  final Color infoColor;
  final Color borderColor;
  final Color borderColorError;
  final double size;
  final double opacityDisabled;

  RadioTokens({
    required this.infoColor,
    required this.borderColor,
    required this.borderColorError,
    required this.size,
    required this.opacityDisabled,
  });

  static RadioTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;

    return RadioTokens(
      infoColor: colors.inkLight,
      borderColor: colors.cloudDarker,
      borderColorError: colors.redNormal,
      size: 20,
      opacityDisabled: theme.opacityTokens.medium,
    );
  }
}
