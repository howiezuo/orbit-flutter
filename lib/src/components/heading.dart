import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

class Heading extends StatelessWidget {
  final String data;
  final HeadingType type;
  final TextAlign? textAlign;

  const Heading(
    this.data, {
    Key? key,
    required this.type,
    this.textAlign,
  }) : super(key: key);

  const Heading.title3(
    this.data, {
    Key? key,
    this.textAlign,
  })  : type = HeadingType.title3,
        super(key: key);

  const Heading.title4(
    this.data, {
    Key? key,
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
    final typography = OrbitTheme.of(context).typographyTokens;
    switch (type) {
      case HeadingType.title3:
        return TextStyle(
          fontSize: typography.fontSizeHeadingTitle3,
          fontWeight: typography.fontWeightHeadingTitle3,
          height: typography.lineHeightHeadingTitle3 /
              typography.fontSizeHeadingTitle3,
        );
      case HeadingType.title4:
        return TextStyle(
          fontSize: typography.fontSizeHeadingTitle4,
          fontWeight: typography.fontWeightHeadingTitle4,
          height: typography.lineHeightHeadingTitle4 /
              typography.fontSizeHeadingTitle4,
        );
      default:
        // TODO
        throw Exception('TODO mission heading type');
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
