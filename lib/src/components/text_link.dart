import 'package:flutter/material.dart';

import '../theme.dart';

class TextLink extends StatelessWidget {
  final String data;
  final GestureTapCallback? onTap;
  final TextLinkType type;
  final TextLinkSize size;
  final bool noUnderline;
  final bool showIcon;

  const TextLink(
    this.data, {
    Key? key,
    this.onTap,
    this.type = TextLinkType.parimary,
    this.size = TextLinkSize.normal,
    this.noUnderline = false,
    this.showIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final textTokens = TextTokens.fromDefault(context);
    final iconTokens = IconTokens.fromDefault(context);

    Color resolveColor() {
      switch (type) {
        case TextLinkType.secondary:
          return colors.inkNormal;
        case TextLinkType.info:
          return colors.blueDark;
        case TextLinkType.success:
          return colors.greenDark;
        case TextLinkType.warning:
          return colors.orangeDark;
        case TextLinkType.critical:
          return colors.redDark;
        default:
          return colors.productDark;
      }
    }

    double resolveFontSize() {
      if (size == TextLinkSize.large) return textTokens.fontSizeLarge!;
      return textTokens.fontSizeNormal!;
    }

    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            data,
            style: TextStyle(
              color: resolveColor(),
              fontSize: resolveFontSize(),
              decoration: noUnderline ? null : TextDecoration.underline,
            ),
          ),
          if (showIcon)
            Icon(
              OrbitIcons.chevron_right,
              color: resolveColor(),
              size: iconTokens.sizeSmall,
            ),
        ],
      ),
    );
  }
}

enum TextLinkType { parimary, secondary, info, success, warning, critical }

enum TextLinkSize { normal, large }
