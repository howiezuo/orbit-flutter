import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

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
    final spaces = theme.spaceTokens;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: spaces.medium,
        vertical: spaces.large,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          child,
          if (action != null)
            Padding(
              padding: EdgeInsets.only(top: spaces.medium),
              child: action!,
            ),
        ],
      ),
    );
  }

  Future<T?> show<T>({
    required BuildContext context,
    // Color? backgroundColor,
    // double? elevation,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    // Color? barrierColor,
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
