import 'package:flutter/widgets.dart';
import 'package:orbit/src/components/heading.dart';

import '../theme.dart';

class EmptyState extends StatelessWidget {
  final Image image;
  final String message;
  final Widget? action;

  const EmptyState({
    Key? key,
    required this.image,
    required this.message,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final spaces = theme.spaceTokens;

    return Padding(
      padding: EdgeInsets.all(spaces.medium),
      child: Column(
        children: [
          Wrap(
            runSpacing: spaces.medium,
            alignment: WrapAlignment.center,
            children: [
              image,
              Heading.title3(message),
              if (action != null) action!
            ],
          ),
        ],
      ),
    );
  }
}
