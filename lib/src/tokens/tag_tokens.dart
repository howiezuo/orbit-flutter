import 'package:orbit/orbit.dart';

class TagTokens {
  final Color colorText;
  final EdgeInsets padding;

  const TagTokens({
    required this.colorText,
    required this.padding,
  });

  static TagTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return TagTokens(
      colorText: theme.colorTokens.inkNormal,
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: theme.baseTokens.spaceXsmall,
      ),
    );
  }
}
