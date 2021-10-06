import 'package:flutter/widgets.dart';

import '../theme.dart';
import 'heading.dart';

class Card extends StatelessWidget {
  final String? title;
  final Widget? action;
  final Widget child;

  const Card({
    Key? key,
    this.title,
    this.action,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final bases = theme.baseTokens;
    final style = CardTokens.fromDefault(context);

    final header = _header(theme);

    return Container(
      color: style.background,
      child: Column(
        children: [
          if (header != null) header,
          Padding(
            padding: EdgeInsets.only(
              left: bases.spaceMedium,
              right: bases.spaceMedium,
              bottom: bases.spaceMedium,
            ),
            child: child,
          ),
        ],
      ),
    );
  }

  Widget? _header(OrbitThemeData theme) {
    if (title == null && action == null) return null;

    final bases = theme.baseTokens;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: bases.spaceMedium,
        vertical: action == null ? bases.spaceMedium : 6,
      ),
      child: Row(
        children: [
          if (title != null) Heading.title3(title!),
          Spacer(),
          if (action != null) action!,
        ],
      ),
    );
  }
}
