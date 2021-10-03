import 'package:flutter/material.dart';

import '../theme.dart';

class Tag extends StatelessWidget {
  final String label;
  final bool selected;
  final ValueChanged<bool>? onSelected;

  const Tag({
    Key? key,
    required this.label,
    required this.selected,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final tagTokens = TagTokens.fromDefault(context);
    final textTokens = TextTokens.fromDefault(context);

    return ChoiceChip(
      label: Text(
        label,
        style: TextStyle(
          color: selected ? colors.whiteNormal : tagTokens.colorText,
          fontSize: textTokens.fontSizeNormal,
          fontWeight: theme.typographyTokens.fontWeightMedium,
        ),
      ),
      selected: selected,
      onSelected: onSelected,
      selectedColor: colors.blueNormal,
      pressElevation: 0,
      labelPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(theme.borderRadiusTokens.normal),
      ),
      // backgroundColor: colors.cloudDark,
      padding: tagTokens.padding,
    );
  }
}
