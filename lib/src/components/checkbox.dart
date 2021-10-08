import 'package:flutter/material.dart';

import '../theme.dart';

/**
 * TODO
 * animation
 */
class CheckBox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final bool disabled;
  final bool hasError;
  final String? label;
  final String? info;

  const CheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.disabled = false,
    this.hasError = false,
    this.label,
    this.info,
  })  : assert((label == null && info == null) ||
            (label != null && info == null) ||
            (label != null && info != null)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final baseTokens = theme.baseTokens;
    final style = _fromTheme(context);
    final defaultStyles = CheckBoxTokens.fromDefault(context);
    final formTokens = FormTokens.fromDefault(context);
    final iconTokens = IconTokens.fromDefault(context);

    return Opacity(
      opacity: disabled ? defaultStyles.opcityDisable! : 1.0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkResponse(
            onTap: () => disabled ? null : onChanged?.call(!value),
            splashColor: disabled ? Palette.Transparent : null,
            highlightColor: disabled ? Palette.Transparent : null,
            child: Container(
              decoration: BoxDecoration(
                color: style.background,
                border: Border.all(color: style.borderColor!, width: 2),
                borderRadius: BorderRadius.all(baseTokens.borderRadius),
              ),
              child: SizedBox(
                width: defaultStyles.size,
                height: defaultStyles.size,
                child: Icon(
                  OrbitIcons.check,
                  color: style.iconColor,
                  size: iconTokens.sizeSmall,
                ),
              ),
            ),
          ),
          if (label != null) SizedBox(width: baseTokens.spaceSmall),
          InkWell(
            onTap: () => disabled ? null : onChanged?.call(!value),
            splashColor: disabled ? Palette.Transparent : null,
            highlightColor: disabled ? Palette.Transparent : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (label != null)
                  Text(
                    label!,
                    style: TextStyle(
                      fontSize: formTokens.fontSizeLabel,
                      fontWeight: baseTokens.fontWeightNormal,
                      color: formTokens.colorLabel,
                      height: defaultStyles.size! / formTokens.fontSizeLabel!,
                    ),
                  ),
                if (info != null)
                  Text(
                    info!,
                    style: TextStyle(
                      fontSize: formTokens.fontSizeFeedback,
                      color: defaultStyles.colorInfo,
                      height: theme.textTokens.lineHeightSmall! /
                          formTokens.fontSizeFeedback!,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CheckBoxStyle _fromTheme(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final defaultStyles = CheckBoxTokens.fromDefault(context);
    final inputStyles = InputTokens.fromDefault(context);

    Color resolveBackground() {
      if (disabled) return value ? colors.cloudDarker : colors.cloudNormal;
      return value ? colors.blueNormal : inputStyles.background!;
    }

    Color resolveBorderColor() {
      if (disabled) return colors.cloudDarker;
      if (hasError) return defaultStyles.borderColorError!;
      return value ? colors.blueNormal : defaultStyles.borderColor!;
    }

    return CheckBoxStyle.raw(
      background: resolveBackground(),
      borderColor: resolveBorderColor(),
      iconColor: disabled ? colors.cloudNormal : defaultStyles.colorIcon!,
    );
  }
}

class CheckBoxStyle {
  final Color? background;
  final Color? borderColor;
  final Color? iconColor;

  const CheckBoxStyle({
    this.background,
    this.borderColor,
    this.iconColor,
  });

  const CheckBoxStyle.raw({
    required Color this.background,
    required Color this.borderColor,
    required Color this.iconColor,
  });
}
