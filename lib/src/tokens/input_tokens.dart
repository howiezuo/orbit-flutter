import 'package:orbit/orbit.dart';

class InputTokens {
  final Color colorText;
  final Color colorTextDisabled;
  final Color colorIcon;
  final Color colorPlaceholder;
  final Color background;

  final double fontSizeNormal;

  final Color borderColor;
  final Color borderColorFocus;
  final Color borderColorError;
  final Color borderColorErrorFocus;
  final double borderWidth;

  final double heightNormal;

  final EdgeInsets paddingNormal;

  InputTokens({
    required this.colorText,
    required this.colorTextDisabled,
    required this.colorIcon,
    required this.colorPlaceholder,
    required this.background,
    required this.fontSizeNormal,
    required this.borderColor,
    required this.borderColorFocus,
    required this.borderColorError,
    required this.borderColorErrorFocus,
    required this.borderWidth,
    required this.heightNormal,
    required this.paddingNormal,
  });

  static InputTokens fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;

    return InputTokens(
      colorText: colors.inkNormal,
      colorTextDisabled: colors.inkLighter,
      colorIcon: colors.cloudDarker,
      colorPlaceholder: colors.inkLighter,
      background: colors.cloudNormal,
      fontSizeNormal: theme.typographyTokens.fontSizeMedium,
      borderColor: colors.cloudDarker,
      borderColorFocus: colors.blueNormal,
      borderColorError: colors.redNormal,
      borderColorErrorFocus: colors.redNormal,
      borderWidth: 1,
      heightNormal: theme.sizeTokens.xlarge,
      paddingNormal: EdgeInsets.symmetric(horizontal: theme.baseTokens.spaceSmall),
    );
  }
}
