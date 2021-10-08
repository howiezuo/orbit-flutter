import 'package:flutter/material.dart';

import '../theme.dart';

class Radio<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final String? label;
  final String? info;
  final bool disabled;
  final bool hasError;

  bool get _isChecked => value == groupValue;

  const Radio({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.label,
    this.info,
    this.disabled = false,
    this.hasError = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final baseTokens = theme.baseTokens;
    final styles = RadioTokens.fromDefault(context);
    final inputStyles = InputTokens.fromDefault(context);
    final formTokens = FormTokens.fromDefault(context);

    Color resolveBackground() {
      if (disabled) return _isChecked ? colors.cloudDarker : colors.cloudNormal;

      return _isChecked ? colors.blueNormal : inputStyles.background!;
    }

    Color resolveBorderColor() {
      if (disabled) return colors.cloudDarker;
      if (hasError) return styles.borderColorError;
      return _isChecked ? colors.blueNormal : styles.borderColor;
    }

    return InkWell(
      onTap: () => onChanged?.call(value),
      child: Opacity(
        opacity: disabled ? styles.opacityDisabled : 1,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: styles.size,
              height: styles.size,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: resolveBackground(),
                border: Border.all(color: resolveBorderColor(), width: 2),
                borderRadius: BorderRadius.circular(styles.size),
              ),
              child: Visibility(
                visible: _isChecked,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: disabled ? colors.cloudNormal : colors.whiteNormal,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            if (label != null)
              Padding(
                padding: EdgeInsets.only(left: baseTokens.spaceXsmall),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label!,
                      style: TextStyle(
                        fontSize: formTokens.fontSizeLabel,
                        fontWeight: baseTokens.fontWeightNormal,
                        color: formTokens.colorLabel,
                        height: styles.size / formTokens.fontSizeLabel!,
                      ),
                    ),
                    if (info != null)
                      Text(
                        info!,
                        style: TextStyle(
                          fontSize: formTokens.fontSizeFeedback,
                          color: styles.infoColor,
                          height: theme.textTokens.lineHeightSmall! /
                              formTokens.fontSizeFeedback!,
                        ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
