import 'package:flutter/material.dart';

import '../theme.dart';

class Tag extends StatelessWidget {
  final String label;
  final bool selected;
  final ValueChanged<bool>? onSelected;
  final VoidCallback? onRemoved;

  bool get _removable => onRemoved != null;

  const Tag({
    Key? key,
    required this.label,
    required this.selected,
    this.onSelected,
    this.onRemoved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final baseTokens = theme.baseTokens;
    final tagTokens = TagTokens.fromDefault(context);
    final textTokens = TextTokens.fromDefault(context);

    Color resolveTextColor() {
      if (selected) return colors.whiteNormal;
      return _removable ? colors.blueDarker : tagTokens.colorText;
    }

    Color resolveBackground() {
      if (selected) return colors.blueNormal;
      return _removable ? colors.blueLight : colors.cloudDark;
    }

    Color resolveIconColor() {
      return selected ? colors.whiteNormal : colors.blueDarker;
    }

    return ChoiceChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              color: resolveTextColor(),
              fontSize: textTokens.fontSizeNormal,
              fontWeight: theme.typographyTokens.fontWeightMedium,
            ),
          ),
          if (_removable)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: InkWell(
                onTap: onRemoved,
                child: Icon(
                  OrbitIcons.close,
                  color: resolveIconColor(),
                  size: baseTokens.sizeSmall,
                ),
              ),
            ),
        ],
      ),
      selected: selected,
      onSelected: onSelected,
      selectedColor: colors.blueNormal,
      pressElevation: 0,
      labelPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(theme.baseTokens.borderRadius),
      ),
      backgroundColor: resolveBackground(),
      padding: tagTokens.padding,
    );
  }
}
