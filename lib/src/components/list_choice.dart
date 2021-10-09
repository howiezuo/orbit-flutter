import 'package:flutter/material.dart';

import '../theme.dart';
import 'checkbox.dart';
import 'heading.dart';

class ListChoice extends StatelessWidget {
  final String title;
  final bool isSelected;
  final ValueChanged<bool?>? onClick;
  final IconData? icon;
  final String? description;
  final bool disabled;
  final bool hasError;

  const ListChoice({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onClick,
    this.icon,
    this.description,
    this.disabled = false,
    this.hasError = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final baseTokens = theme.baseTokens;
    final textStyles = TextTokens.fromDefault(context);
    final iconStyles = IconTokens.fromDefault(context);

    return InkWell(
      onTap: () => disabled ? null : onClick?.call(!isSelected),
      splashColor: disabled ? Palette.Transparent : null,
      highlightColor: disabled ? Palette.Transparent : null,
      child: Ink(
        color: colors.whiteNormal,
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: baseTokens.spaceSmall,
                horizontal: baseTokens.spaceMedium,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (icon != null)
                              Padding(
                                padding: EdgeInsets.only(
                                    right: baseTokens.spaceXsmall),
                                child: Icon(
                                  icon,
                                  color: disabled
                                      ? colors.cloudDarker
                                      : iconStyles.colorPrimary,
                                  size: iconStyles.sizeSmall,
                                ),
                              ),
                            Heading.title4(
                              title,
                              color: disabled
                                  ? colors.cloudDarkerHover
                                  : textStyles.colorPrimary,
                            ),
                          ],
                        ),
                        if (description != null)
                          Text(
                            description!,
                            style: TextStyle(
                              color: disabled
                                  ? colors.cloudDarkerHover
                                  : textStyles.colorSecondary,
                              fontSize: baseTokens.fontSizeSmall,
                              fontWeight: baseTokens.fontWeightNormal,
                              height: textStyles.lineHeightNormal! /
                                  baseTokens.fontSizeSmall,
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(width: baseTokens.spaceSmall),
                  CheckBox(
                    value: isSelected,
                    onChanged: onClick,
                    disabled: disabled,
                    hasError: hasError,
                  ),
                ],
              ),
            ),
            Positioned(
              child: Divider(
                color: colors.cloudNormal,
                indent: baseTokens.spaceMedium,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
