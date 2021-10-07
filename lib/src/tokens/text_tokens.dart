import 'package:flutter/widgets.dart';

import '../theme.dart';

@immutable
class TextTokens {
  final Color? colorPrimary;
  final Color? colorSecondary;

  final double? fontSizeSmall;
  final double? fontSizeNormal;
  final double? fontSizeLarge;

  final double? lineHeight;
  final double? lineHeightSmall;
  final double? lineHeightNormal;
  final double? lineHeightLarge;

  final Color? colorHeading;

  final double? fontSizeHeadingDisplay;
  final double? fontSizeHeadingDisplaySubtitle;
  final double? fontSizeHeadingTitle1;
  final double? fontSizeHeadingTitle2;
  final double? fontSizeHeadingTitle3;
  final double? fontSizeHeadingTitle4;
  final double? fontSizeHeadingTitle5;

  final FontWeight? fontWeightHeadingDisplay;
  final FontWeight? fontWeightHeadingDisplaySubtitle;
  final FontWeight? fontWeightHeadingTitle1;
  final FontWeight? fontWeightHeadingTitle2;
  final FontWeight? fontWeightHeadingTitle3;
  final FontWeight? fontWeightHeadingTitle4;
  final FontWeight? fontWeightHeadingTitle5;

  final double? lineHeightHeading;
  final double? lineHeightHeadingDisplay;
  final double? lineHeightHeadingDisplaySubtitle;
  final double? lineHeightHeadingTitle1;
  final double? lineHeightHeadingTitle2;
  final double? lineHeightHeadingTitle3;
  final double? lineHeightHeadingTitle4;
  final double? lineHeightHeadingTitle5;

  const TextTokens({
    this.colorPrimary,
    this.colorSecondary,
    this.fontSizeSmall,
    this.fontSizeNormal,
    this.fontSizeLarge,
    this.lineHeight,
    this.lineHeightSmall,
    this.lineHeightNormal,
    this.lineHeightLarge,
    this.colorHeading,
    this.fontSizeHeadingDisplay,
    this.fontSizeHeadingDisplaySubtitle,
    this.fontSizeHeadingTitle1,
    this.fontSizeHeadingTitle2,
    this.fontSizeHeadingTitle3,
    this.fontSizeHeadingTitle4,
    this.fontSizeHeadingTitle5,
    this.fontWeightHeadingDisplay,
    this.fontWeightHeadingDisplaySubtitle,
    this.fontWeightHeadingTitle1,
    this.fontWeightHeadingTitle2,
    this.fontWeightHeadingTitle3,
    this.fontWeightHeadingTitle4,
    this.fontWeightHeadingTitle5,
    this.lineHeightHeading,
    this.lineHeightHeadingDisplay,
    this.lineHeightHeadingDisplaySubtitle,
    this.lineHeightHeadingTitle1,
    this.lineHeightHeadingTitle2,
    this.lineHeightHeadingTitle3,
    this.lineHeightHeadingTitle4,
    this.lineHeightHeadingTitle5,
  });

  const TextTokens.raw({
    required Color this.colorPrimary,
    required Color this.colorSecondary,
    required double this.fontSizeSmall,
    required double this.fontSizeNormal,
    required double this.fontSizeLarge,
    required double this.lineHeight,
    required double this.lineHeightSmall,
    required double this.lineHeightNormal,
    required double this.lineHeightLarge,
    required Color this.colorHeading,
    required double this.fontSizeHeadingDisplay,
    required double this.fontSizeHeadingDisplaySubtitle,
    required double this.fontSizeHeadingTitle1,
    required double this.fontSizeHeadingTitle2,
    required double this.fontSizeHeadingTitle3,
    required double this.fontSizeHeadingTitle4,
    required double this.fontSizeHeadingTitle5,
    required FontWeight this.fontWeightHeadingDisplay,
    required FontWeight this.fontWeightHeadingDisplaySubtitle,
    required FontWeight this.fontWeightHeadingTitle1,
    required FontWeight this.fontWeightHeadingTitle2,
    required FontWeight this.fontWeightHeadingTitle3,
    required FontWeight this.fontWeightHeadingTitle4,
    required FontWeight this.fontWeightHeadingTitle5,
    required double this.lineHeightHeading,
    required double this.lineHeightHeadingDisplay,
    required double this.lineHeightHeadingDisplaySubtitle,
    required double this.lineHeightHeadingTitle1,
    required double this.lineHeightHeadingTitle2,
    required double this.lineHeightHeadingTitle3,
    required double this.lineHeightHeadingTitle4,
    required double this.lineHeightHeadingTitle5,
  });

  factory TextTokens.fromTokens(ColorTokens colors, BaseTokens bases) {
    return TextTokens.raw(
      colorPrimary: colors.inkNormal,
      colorSecondary: colors.inkLight,
      fontSizeSmall: bases.fontSizeSmall,
      fontSizeNormal: bases.fontSizeMedium,
      fontSizeLarge: bases.fontSizeLarge,
      lineHeight: bases.lineHeight,
      lineHeightSmall: 16,
      lineHeightNormal: 20,
      lineHeightLarge: 22,
      colorHeading: colors.inkNormal,
      fontSizeHeadingDisplay: 40,
      fontSizeHeadingDisplaySubtitle: 22,
      fontSizeHeadingTitle1: 28,
      fontSizeHeadingTitle2: 22,
      fontSizeHeadingTitle3: 16,
      fontSizeHeadingTitle4: bases.fontSizeMedium,
      fontSizeHeadingTitle5: bases.fontSizeSmall,
      fontWeightHeadingDisplay: bases.fontWeightBold,
      fontWeightHeadingDisplaySubtitle: bases.fontWeightNormal,
      fontWeightHeadingTitle1: bases.fontWeightBold,
      fontWeightHeadingTitle2: bases.fontWeightMedium,
      fontWeightHeadingTitle3: bases.fontWeightMedium,
      fontWeightHeadingTitle4: bases.fontWeightMedium,
      fontWeightHeadingTitle5: bases.fontWeightBold,
      lineHeightHeading: 1.2,
      lineHeightHeadingDisplay: 44,
      lineHeightHeadingDisplaySubtitle: 28,
      lineHeightHeadingTitle1: 36,
      lineHeightHeadingTitle2: 28,
      lineHeightHeadingTitle3: 24,
      lineHeightHeadingTitle4: 20,
      lineHeightHeadingTitle5: 20,
    );
  }

  factory TextTokens.fromDefault(BuildContext context) {
    final theme = OrbitTheme.of(context);
    return TextTokens.fromTokens(theme.colorTokens, theme.baseTokens);
  }
}
