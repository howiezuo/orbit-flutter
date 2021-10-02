import 'package:flutter/material.dart';
import 'package:orbit/src/tokens/separator_tokens.dart';

class Separator extends StatelessWidget {
  final double? indent;
  final double? endIndent;

  const Separator({
    Key? key,
    this.indent,
    this.endIndent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styles = SeparatorTokens.fromDefault(context);
    return Divider(
      color: styles.background,
      height: styles.height,
      thickness: styles.height,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
