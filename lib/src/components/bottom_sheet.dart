import 'package:flutter/material.dart';

import '../theme.dart';

class BottomSheet extends StatelessWidget {
  final Widget child;
  final Widget? action;

  const BottomSheet({
    Key? key,
    required this.child,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final baseTokens = theme.baseTokens;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: baseTokens.spaceMedium,
        vertical: baseTokens.spaceLarge,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          child,
          if (action != null)
            Padding(
              padding: EdgeInsets.only(top: baseTokens.spaceMedium),
              child: action!,
            ),
        ],
      ),
    );
  }

  Future<T?> show<T>({
    required BuildContext context,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    bool isScrollControlled = false,
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
      isScrollControlled: isScrollControlled,
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
