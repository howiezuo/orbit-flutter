import 'package:flutter/material.dart';
import 'package:orbit/orbit.dart';

class Button extends StatelessWidget {
  final Widget _child;
  final VoidCallback? _onPressed;

  const Button({
    Key? key,
    required Widget child,
    required VoidCallback? onPressed,
  })  : this._child = child,
        this._onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO radius token
    final theme = OrbitTheme.of(context);
    // TODO fix status
    return ElevatedButton(
      onPressed: _onPressed,
      child: _child,
      // style: ElevatedButton.styleFrom(
      //   primary: theme.buttonTokens.background,
      //   onPrimary: theme.buttonTokens.colorText,
      //   elevation: 0,
      //   textStyle: TextStyle(fontSize: theme.buttonTokens.fontSize),
      //   padding: theme.buttonTokens.padding,
      //   fixedSize: Size.fromHeight(theme.buttonTokens.height),
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.all(Radius.circular(6))),
      // ),
    );
  }
}

enum ButtonType { primary }

enum ButtonSize { normal }
