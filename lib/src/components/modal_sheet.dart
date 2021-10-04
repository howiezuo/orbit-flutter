import 'package:flutter/material.dart';
import 'package:orbit/src/components/heading.dart';

import '../theme.dart';

class ModalSheet extends StatelessWidget {
  final ModalSheetHeader header;
  final Widget child;
  final Widget? action;

  const ModalSheet({
    Key? key,
    required this.header,
    required this.child,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final baseTokens = theme.baseTokens;

    return Padding(
      // TODO doesn't work here
      // padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      padding: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          header,
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(baseTokens.spaceMedium),
              child: Column(
                children: [
                  Expanded(child: child),
                  // child,
                  if (action != null) Padding(
                    padding: EdgeInsets.only(top: baseTokens.spaceMedium),
                    child: action!,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<T?> show<T>({
    required BuildContext context,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
  }) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          // TODO no token?
          top: Radius.circular(16),
          bottom: Radius.zero,
        ),
      ),
      clipBehavior: clipBehavior,
      constraints: constraints,
      isScrollControlled: true,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      routeSettings: routeSettings,
      transitionAnimationController: transitionAnimationController,
      // show itself
      builder: (context) => this,
    );
  }
}

class ModalSheetHeader extends StatelessWidget {
  final String title;
  final List<Widget>? actions;

  const ModalSheetHeader({
    Key? key,
    required this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final iconTokens = IconTokens.fromDefault(context);

    return AppBar(
      title: Heading.title2(
        title,
        color: theme.colorTokens.inkNormal,
      ),
      backgroundColor: theme.colorTokens.whiteNormal,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          OrbitIcons.close,
          color: theme.colorTokens.inkNormal,
          size: iconTokens.sizeLarge,
        ),
      ),
      actions: actions,
    );
  }
}
