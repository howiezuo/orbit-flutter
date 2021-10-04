import 'package:flutter/widgets.dart';
import 'package:orbit/src/components/heading.dart';

import '../theme.dart';

class Tile extends StatelessWidget {
  final Widget? child;
  final String? title;
  final String? desctipion;
  final IconData? icon;

  const Tile({
    Key? key,
    required String this.title,
    this.desctipion,
    this.icon,
  })  : child = null,
        super(key: key);

  const Tile.raw({
    Key? key,
    required this.child,
  })  : title = null,
        desctipion = null,
        icon = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final spaces = theme.spaceTokens;

    final iconTokens = IconTokens.fromDefault(context);
    final textTokens = TextTokens.fromDefault(context);

    return Container(
      padding: EdgeInsets.all(spaces.medium),
      decoration: BoxDecoration(
          color: colors.whiteNormal,
          borderRadius: BorderRadius.all(theme.baseTokens.borderRadius)),
      child: IntrinsicHeight(
        child: Row(
          children: [
            if (child != null)
              DefaultTextStyle(
                style: TextStyle(color: colors.inkNormal),
                child: Expanded(child: child!),
              ),
            if (icon != null)
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: spaces.xSmall),
                  child: Icon(
                    icon,
                    color: iconTokens.colorPrimary,
                  ),
                ),
              ),
            if (title != null)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading.title3(title!),
                    if (desctipion != null)
                      Text(
                        desctipion!,
                        style: TextStyle(
                          color: textTokens.colorPrimary,
                          fontSize: textTokens.fontSizeNormal,
                          height: textTokens.lineHeightNormal /
                              textTokens.fontSizeNormal,
                        ),
                      ),
                  ],
                ),
              ),
            SizedBox(width: spaces.xSmall),
            Icon(
              OrbitIcons.chevron_right,
              color: iconTokens.colorSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
