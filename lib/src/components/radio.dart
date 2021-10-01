import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

import '../theme.dart';

class Radio<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  bool get _isChecked => value == groupValue;

  const Radio({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final styles = RadioTokens.fromDefault(context);
    final inputStyles = InputTokens.fromDefault(context);

    Color resolveBackground() {
      return _isChecked ? colors.blueNormal : inputStyles.background;
    }

    Color resolveBorderColor() {
      return _isChecked ? colors.blueNormal : styles.borderColor;
    }

    return InkWell(
      onTap: () => onChanged?.call(value),
      child: Container(
        width: 20,
        height: 20,
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
    );
  }
}
