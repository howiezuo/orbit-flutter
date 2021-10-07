import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';

import '../theme.dart';
import 'heading.dart';

/**
 * TODO style
 */
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
    final colors = theme.colorTokens;
    final baseTokens = theme.baseTokens;
    final shadows = theme.shadowTokens;
    final textTokens = TextTokens.fromDefault(context);

    return material.Dialog(
      backgroundColor: Palette.Transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.fromLTRB(
          baseTokens.spaceMedium,
          baseTokens.spaceLarge,
          baseTokens.spaceMedium,
          baseTokens.spaceMedium,
        ),
        decoration: BoxDecoration(
          color: colors.whiteNormal,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: shadows.overlay,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (illustration != null)
              material.Padding(
                padding: EdgeInsets.only(bottom: baseTokens.spaceMedium),
                child: illustration!,
              ),
            Heading.title3(title, textAlign: TextAlign.center),
            if (description != null)
              Padding(
                padding: EdgeInsets.only(
                  top: baseTokens.spaceXsmall,
                ),
                child: Text(
                  description!,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: textTokens.colorSecondary),
                ),
              ),
            SizedBox(height: baseTokens.spaceMedium),
            Wrap(
              runSpacing: baseTokens.spaceXsmall,
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
