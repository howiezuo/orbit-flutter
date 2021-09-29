import 'package:orbit/orbit.dart';
import 'package:orbit/src/foundation/icons.dart';
import 'package:orbit/src/tokens/checkbox_tokens.dart';
import 'package:orbit/src/tokens/form_tokens.dart';

class CheckBox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final String? label;

  const CheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final style = _fromTheme(context);
    final formTokens = FormTokens.fromDefault(context);

    return InkWell(
      onTap: () => onChanged?.call(!value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
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
          if (label != null) SizedBox(width: theme.spaceTokens.small,),
          Column(
            children: [
              if (label != null)
                Text(
                  label!,
                  style: TextStyle(
                    fontSize: formTokens.fontSizeLabel,
                    fontWeight: theme.typographyTokens.fontWeightNormal,
                    color: formTokens.colorLabel,
                    height: style.size! / formTokens.fontSizeLabel,
                  ),
                ),
            ],
          ),
        ],
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
