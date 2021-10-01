import 'package:flutter/material.dart';

import '../theme.dart';

class Select<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>>? items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final String? label;
  final String? placeholder;

  const Select({
    Key? key,
    required this.items,
    this.value,
    this.onChanged,
    this.label,
    this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final inputStyles = InputTokens.fromDefault(context);
    final formStyles = FormTokens.fromDefault(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: EdgeInsets.only(bottom: theme.spaceTokens.xXsmall),
            child: Text(
              label!,
              style: TextStyle(
                color: formStyles.colorLabel,
                fontSize: formStyles.fontSizeLabel,
                fontWeight: theme.typographyTokens.fontWeightMedium,
                height: theme.typographyTokens.lineHeightTextSmall /
                    formStyles.fontSizeLabel,
              ),
            ),
          ),
        Container(
          alignment: Alignment.center,
          height: inputStyles.heightNormal,
          padding: EdgeInsets.all(theme.spaceTokens.small),
          decoration: BoxDecoration(
            color: inputStyles.background,
            borderRadius: BorderRadius.all(theme.borderRadiusTokens.normal),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              items: items,
              value: value,
              onChanged: onChanged,
              hint: placeholder != null
                  ? Text(
                      placeholder!,
                      style: TextStyle(
                          color: inputStyles.colorPlaceholder,
                          fontSize: inputStyles.fontSizeNormal),
                    )
                  : null,
              style: TextStyle(
                  color: inputStyles.colorText,
                  fontSize: inputStyles.fontSizeNormal),
              icon: Icon(OrbitIcons.chevron_down),
              iconDisabledColor: inputStyles.colorTextDisabled,
              iconEnabledColor: inputStyles.colorText,
              isExpanded: true,
              underline: null,
            ),
          ),
        ),
      ],
    );
  }
}
