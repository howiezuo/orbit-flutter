import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';
import 'package:orbit/src/components/heading.dart';
import 'package:orbit/src/tokens/card_tokens.dart';

class Card extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final String? descriprion;
  final List<Widget>? actions;
  final Widget? child;

  const Card({
    Key? key,
    this.icon,
    this.title,
    this.descriprion,
    this.actions,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final baseTokens = theme.baseTokens;
    final style = CardStyles.fromDefault(context);

    return Container(
      color: style.background,
      child: Column(
        children: [
          Header(
            icon: icon,
            title: title,
            descriprion: descriprion,
            actions: actions,
          ),
          if (child != null)
            Padding(
              padding: EdgeInsets.only(
                  left: baseTokens.spaceMedium,
                  top: 0,
                  right: baseTokens.spaceMedium,
                  bottom: baseTokens.spaceMedium),
              child: child!,
            ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final String? descriprion;
  final List<Widget>? actions;

  const Header({
    Key? key,
    this.icon,
    this.title,
    this.descriprion,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final baseTokens = theme.baseTokens;

    if (icon == null &&
        title == null &&
        descriprion == null &&
        actions == null) {
      return SizedBox(height: baseTokens.spaceMedium);
    }

    return Padding(
      padding: EdgeInsets.all(baseTokens.spaceMedium),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (icon != null)
                    Padding(
                      padding: EdgeInsets.only(
                          right: title != null ? baseTokens.spaceSmall : 0),
                      child: Icon(icon),
                    ),
                  if (title != null) Heading.title3(title!),
                ],
              ),
              if (descriprion != null)
                Padding(
                  padding: EdgeInsets.only(
                      top: title != null || icon != null ? baseTokens.spaceXxsmall : 0),
                  child: Text(descriprion!),
                ),
            ],
          ),
          Spacer(),
          ...?actions,
        ],
      ),
    );
  }
}
