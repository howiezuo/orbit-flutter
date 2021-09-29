import 'package:orbit/orbit.dart';

class InputTokens {
  final Color background;
  final Color backgroundDisabled;

  InputTokens({
    required this.background,
    required this.backgroundDisabled,
  });

  static InputTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);

    return InputTokens(
      background: theme.colorTokens.whiteNormal,
      backgroundDisabled: theme.colorTokens.cloudNormal,
    );
  }
}
