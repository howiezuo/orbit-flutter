import 'package:orbit/orbit.dart';
import 'package:orbit/src/foundation/icons.dart';
import 'package:orbit/src/tokens/checkbox_tokens.dart';

class CheckBox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const CheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = _fromTheme(context);

    return InkWell(
      onTap: () => onChanged?.call(!value),
      child: Container(
        decoration: BoxDecoration(
          color: style.background,
          border: Border.all(color: style.borderColor!, width: 2),
          borderRadius: BorderRadius.all(style.borderRadius!),
        ),
        child: SizedBox(
          width: style.size,
          height: style.size,
          child: Icon(
            OrbitIcons.check,
            color: style.iconColor,
            // TODO token?
            size: 16,
          ),
        ),
      ),
    );
  }

  CheckBoxStyle _fromTheme(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final defaultStyles = CheckBoxTokens.fromDefault(context);

    final background =
        value ? theme.colorTokens.blueNormal : theme.colorTokens.cloudNormal;
    final borderColor =
        value ? theme.colorTokens.blueNormal : defaultStyles.borderColorRadio;
    final iconColor = value ? theme.colorTokens.whiteNormal : background;
    final size = defaultStyles.size;
    final borderRadius = theme.borderRadiusTokens.large;

    return CheckBoxStyle.raw(
      background: background,
      borderColor: borderColor,
      iconColor: iconColor,
      size: size,
      borderRadius: borderRadius,
    );
  }
}

class CheckBoxStyle {
  final Color? background;
  final Color? borderColor;
  final Color? iconColor;
  final double? size;
  final Radius? borderRadius;

  const CheckBoxStyle({
    this.background,
    this.borderColor,
    this.iconColor,
    this.size,
    this.borderRadius,
  });

  const CheckBoxStyle.raw({
    required Color this.background,
    required Color this.borderColor,
    required Color this.iconColor,
    required double this.size,
    required Radius this.borderRadius,
  });
}
