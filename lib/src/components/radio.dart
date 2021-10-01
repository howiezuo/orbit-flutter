import 'package:flutter/material.dart';

import '../theme.dart';

class Radio<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final String? label;

  bool get _isChecked => value == groupValue;

  const Radio({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final styles = RadioTokens.fromDefault(context);
    final inputStyles = InputTokens.fromDefault(context);
    final formTokens = FormTokens.fromDefault(context);

    Color resolveBackground() {
      return _isChecked ? colors.blueNormal : inputStyles.background;
    }

    Color resolveBorderColor() {
      return _isChecked ? colors.blueNormal : styles.borderColor;
    }

    return InkWell(
      onTap: () => onChanged?.call(value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
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
                  color: colors.whiteNormal,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          if (label != null) SizedBox(width: theme.spaceTokens.xSmall),
          if (label != null)
            Text(
              label!,
              style: TextStyle(
                fontSize: formTokens.fontSizeLabel,
                fontWeight: theme.typographyTokens.fontWeightNormal,
                color: formTokens.colorLabel,
                height: styles.size / formTokens.fontSizeLabel,
              ),
            ),
        ],
      ),
    );
  }
}
