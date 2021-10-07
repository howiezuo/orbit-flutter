import 'package:flutter/widgets.dart';

import '../theme.dart';

class TypographyTokens {
  final TextStyle? display;
  final TextStyle? displaySubtitle;
  final TextStyle? title1;
  final TextStyle? title2;
  final TextStyle? title3;
  final TextStyle? title4;
  final TextStyle? title5;

  const TypographyTokens({
    this.display,
    this.displaySubtitle,
    this.title1,
    this.title2,
    this.title3,
    this.title4,
    this.title5,
  });

  const TypographyTokens.raw({
    required TextStyle this.display,
    required TextStyle this.displaySubtitle,
    required TextStyle this.title1,
    required TextStyle this.title2,
    required TextStyle this.title3,
    required TextStyle this.title4,
    required TextStyle this.title5,
  });

  factory TypographyTokens.fromTokens(TextTokens textTokens) {
    return TypographyTokens.raw(
      display: TextStyle(
        color: textTokens.colorHeading,
        fontSize: textTokens.fontSizeHeadingDisplay,
        fontWeight: textTokens.fontWeightHeadingDisplay,
        height: textTokens.lineHeightHeadingDisplay! /
            textTokens.fontSizeHeadingDisplay!,
      ),
      displaySubtitle: TextStyle(
        color: textTokens.colorHeading,
        fontSize: textTokens.fontSizeHeadingDisplaySubtitle,
        fontWeight: textTokens.fontWeightHeadingDisplaySubtitle,
        height: textTokens.lineHeightHeadingDisplaySubtitle! /
            textTokens.fontSizeHeadingDisplaySubtitle!,
      ),
      title1: TextStyle(
        color: textTokens.colorHeading,
        fontSize: textTokens.fontSizeHeadingTitle1,
        fontWeight: textTokens.fontWeightHeadingTitle1,
        height: textTokens.lineHeightHeadingTitle1! /
            textTokens.fontSizeHeadingTitle1!,
      ),
      title2: TextStyle(
        color: textTokens.colorHeading,
        fontSize: textTokens.fontSizeHeadingTitle2,
        fontWeight: textTokens.fontWeightHeadingTitle2,
        height: textTokens.lineHeightHeadingTitle2! /
            textTokens.fontSizeHeadingTitle2!,
      ),
      title3: TextStyle(
        color: textTokens.colorHeading,
        fontSize: textTokens.fontSizeHeadingTitle3,
        fontWeight: textTokens.fontWeightHeadingTitle3,
        height: textTokens.lineHeightHeadingTitle3! /
            textTokens.fontSizeHeadingTitle3!,
      ),
      title4: TextStyle(
        color: textTokens.colorHeading,
        fontSize: textTokens.fontSizeHeadingTitle4,
        fontWeight: textTokens.fontWeightHeadingTitle4,
        height: textTokens.lineHeightHeadingTitle4! /
            textTokens.fontSizeHeadingTitle4!,
      ),
      title5: TextStyle(
        color: textTokens.colorHeading,
        fontSize: textTokens.fontSizeHeadingTitle5,
        fontWeight: textTokens.fontWeightHeadingTitle5,
        height: textTokens.lineHeightHeadingTitle5! /
            textTokens.fontSizeHeadingTitle5!,
      ),
    );
  }

  factory TypographyTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return TypographyTokens.fromTokens(theme.textTokens);
  }
}
