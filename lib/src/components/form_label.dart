import 'package:flutter/widgets.dart';

import '../theme.dart';

class FormLabel extends StatelessWidget {
  final String data;
  final bool filled;
  final bool inline;

  const FormLabel(
    this.data, {
    Key? key,
    this.filled = false,
    this.inline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final formTokens = FormTokens.fromDefault(context);
    final textTokens = TextTokens.fromDefault(context);

    final padding = inline
        ? EdgeInsets.only(right: theme.baseTokens.spaceXxsmall)
        : EdgeInsets.only(bottom: theme.baseTokens.spaceXxsmall);
    return Padding(
      padding: padding,
      child: Text(
        data,
        style: TextStyle(
          color: filled ? formTokens.colorLabelFilled : formTokens.colorLabel,
          fontSize: formTokens.fontSizeLabel,
          fontWeight: theme.baseTokens.fontWeightMedium,
          height: inline
              ? 1
              : textTokens.lineHeightSmall! / formTokens.fontSizeLabel!,
        ),
      ),
    );
  }
}
