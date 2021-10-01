import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';
import 'package:orbit/src/components/heading.dart';
import 'package:orbit/src/tokens/text_tokens.dart';

import '../theme.dart';

class ListChoice extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? description;
  final bool isSelected;
  final ValueChanged<bool?>? onClick;

  const ListChoice({
    Key? key,
    this.icon,
    required this.title,
    required this.isSelected,
    required this.onClick,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final spaces = theme.spaceTokens;
    final typography = theme.typographyTokens;
    final textStyles = TextTokens.fromDefault(context);
    final iconStyles = IconTokens.fromDefalut(context);

    return InkWell(
      onTap: () => onClick?.call(!isSelected),
      child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
        Container(
          color: colors.whiteNormal,
          padding: EdgeInsets.symmetric(
            vertical: spaces.small,
            horizontal: spaces.medium,
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
                            padding: EdgeInsets.only(right: spaces.small),
                            child: Icon(
                              icon,
                              color: iconStyles.colorPrimary,
                              size: iconStyles.sizeSmall,
                            ),
                          ),
                        Heading.title4(title),
                      ],
                    ),
                    if (description != null)
                      Text(
                        description!,
                        style: TextStyle(
                          color: textStyles.colorSecondary,
                          fontSize: typography.fontSizeSmall,
                          fontWeight: typography.fontWeightNormal,
                          height: typography.lineHeightTextNormal /
                              typography.fontSizeSmall,
                        ),
                      ),
                  ],
                ),
              ),
              CheckBox(value: isSelected, onChanged: onClick),
            ],
          ),
        ),
        Positioned(
          child: Divider(
            color: colors.cloudNormal,
            indent: spaces.medium,
            height: 1,
          ),
        ),
      ]),
    );
  }
}
