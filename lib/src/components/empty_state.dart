import 'package:flutter/widgets.dart';

import '../theme.dart';
import 'heading.dart';

class EmptyState extends StatelessWidget {
  final Image image;
  final String title;
  final String? description;
  final Widget? action;

  const EmptyState({
    Key? key,
    required this.image,
    required this.title,
    this.description,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final baseTokens = theme.baseTokens;
    final textTokens = TextTokens.fromDefault(context);

    return Padding(
      padding: EdgeInsets.all(baseTokens.spaceMedium),
      child: Column(
        children: [
          image,
          SizedBox(height: baseTokens.spaceMedium),
          Heading.title3(title),
          if (description != null)
            Padding(
              padding: EdgeInsets.all(baseTokens.spaceXsmall),
              child: Text(
                description!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colors.inkLight,
                  fontSize: textTokens.fontSizeNormal,
                ),
              ),
            ),
          if (action != null)
            Padding(
              padding: EdgeInsets.all(baseTokens.spaceMedium),
              child: action!,
            ),
        ],
      ),
    );
  }
}
