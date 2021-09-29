import 'package:orbit/orbit.dart';

class FormTokens {
  final Color colorLabel;
  final double fontSizeLabel;

  FormTokens({
    required this.colorLabel,
    required this.fontSizeLabel,
  });

  static FormTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);

    return FormTokens(
      colorLabel: theme.colorTokens.inkNormal,
      fontSizeLabel: theme.typographyTokens.fontSizeMedium,
    );
  }
}
