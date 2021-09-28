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
    final spaces = theme.spaceTokens;
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
                  left: spaces.medium,
                  top: 0,
                  right: spaces.medium,
                  bottom: spaces.medium),
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
    final spaces = theme.spaceTokens;

    if (icon == null &&
        title == null &&
        descriprion == null &&
        actions == null) {
      return SizedBox(height: spaces.medium);
    }

    return Padding(
      padding: EdgeInsets.all(spaces.medium),
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
                          right: title != null ? spaces.small : 0),
                      child: Icon(icon),
                    ),
                  if (title != null) Heading.title3(title!),
                ],
              ),
              if (descriprion != null)
                Padding(
                  padding: EdgeInsets.only(
                      top: title != null || icon != null ? spaces.xXsmall : 0),
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
