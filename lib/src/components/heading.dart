import 'package:flutter/widgets.dart';

import '../theme.dart';

class Heading extends StatelessWidget {
  final String data;
  final HeadingType type;
  final Color? color;
  final TextAlign? textAlign;

  const Heading(
    this.data, {
    Key? key,
    required this.type,
    this.color,
    this.textAlign,
  }) : super(key: key);

  const Heading.title2(
    this.data, {
    Key? key,
    this.color,
    this.textAlign,
  })  : type = HeadingType.title2,
        super(key: key);

  const Heading.title3(
    this.data, {
    Key? key,
    this.color,
    this.textAlign,
  })  : type = HeadingType.title3,
        super(key: key);

  const Heading.title4(
    this.data, {
    Key? key,
    this.color,
    this.textAlign,
  })  : type = HeadingType.title4,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = _resolveTextStyle(context);
    return Text(
      data,
      style: style,
      textAlign: textAlign,
    );
  }

  TextStyle _resolveTextStyle(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final typography = theme.typographyTokens;
    final color = this.color ?? theme.colorTokens.inkNormal;

    switch (type) {
      case HeadingType.display:
        return typography.display!.copyWith(color: color);
      case HeadingType.displaySubtitle:
        return typography.displaySubtitle!.copyWith(color: color);
      case HeadingType.title1:
        return typography.title1!.copyWith(color: color);
      case HeadingType.title2:
        return typography.title2!.copyWith(color: color);
      case HeadingType.title3:
        return typography.title3!.copyWith(color: color);
      case HeadingType.title4:
        return typography.title4!.copyWith(color: color);
      case HeadingType.title5:
        return typography.title5!.copyWith(color: color);
      default:
        return TextStyle();
    }
  }
}

enum HeadingType {
  display,
  displaySubtitle,
  title1,
  title2,
  title3,
  title4,
  title5,
}
