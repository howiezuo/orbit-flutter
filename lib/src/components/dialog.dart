import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:orbit/src/foundation/palette.dart';
import 'package:orbit/src/tokens/text_tokens.dart';

import '../theme.dart';
import 'heading.dart';

class Dialog extends StatelessWidget {
  final String title;
  final Widget? primaryAction;
  final Widget? secondaryAction;
  final List<Widget> actions;
  final Image? illustration;
  final String? description;

  const Dialog({
    Key? key,
    required this.title,
    required Widget this.primaryAction,
    this.secondaryAction,
    this.illustration,
    this.description,
  })  : actions = const <Widget>[],
        super(key: key);

  const Dialog.actions({
    Key? key,
    required this.title,
    required this.actions,
    this.illustration,
    this.description,
  })  : primaryAction = null,
        secondaryAction = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final spaces = theme.spaceTokens;
    final textTokens = TextTokens.fromDefault(context);

    return material.Dialog(
      backgroundColor: Palette.Transparent,
      child: Container(
        padding: EdgeInsets.all(spaces.medium),
        decoration: BoxDecoration(
          color: theme.colorTokens.whiteNormal,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (illustration != null)
              material.Padding(
                padding: EdgeInsets.only(bottom: spaces.medium),
                child: illustration!,
              ),
            Heading.title3(title, textAlign: TextAlign.center),
            if (description != null)
              Padding(
                padding: EdgeInsets.only(
                  top: spaces.xSmall,
                ),
                child: Text(
                  description!,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: textTokens.colorSecondary),
                ),
              ),
            SizedBox(height: spaces.medium),
            Wrap(
              runSpacing: spaces.xSmall,
              children: [
                if (primaryAction != null) primaryAction!,
                if (secondaryAction != null) secondaryAction!,
                ...actions,
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<T?> show<T>({
    required BuildContext context,
    bool barrierDismissible = true,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  }) {
    return material.showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel,
      useSafeArea: useRootNavigator,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      builder: (context) => this,
    );
  }
}
