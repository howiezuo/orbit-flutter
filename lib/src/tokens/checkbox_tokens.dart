import 'package:orbit/orbit.dart';

class CheckBoxTokens {
  final Color colorInfoRadio;
  final Color colorIconRadio;
  final Color borderColorRadio;
  final double size;
  final double opcityDisable;

  CheckBoxTokens({
    required this.colorInfoRadio,
    required this.colorIconRadio,
    required this.borderColorRadio,
    required this.size,
    required this.opcityDisable,
  });

  static CheckBoxTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;

    return CheckBoxTokens(
      colorInfoRadio: colors.inkLight,
      colorIconRadio: colors.productNormal,
      borderColorRadio: colors.cloudDarker,
      size: 20,
      opcityDisable: theme.opacityTokens.medium,
    );
  }
}
