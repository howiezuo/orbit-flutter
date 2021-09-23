import 'package:flutter/material.dart';
import 'package:orbit/src/tokens/button_tokens.dart';

class OrbitThemeData {
  final ButtonTokens buttonTokens;

  final ThemeData materialTheme;

  OrbitThemeData({required this.buttonTokens}) : materialTheme = ThemeData();

  factory OrbitThemeData.light() => OrbitThemeData(
    buttonTokens: ButtonStyles.light(),
  );
}

class OrbitTheme extends InheritedWidget {
  final OrbitThemeData _themeData;

  OrbitTheme({
    Key? key,
    required Widget child,
    required OrbitThemeData themeData,
  })  : this._themeData = themeData,
        super(key: key, child: child);

  static OrbitThemeData of(BuildContext context) {
    return context
            .dependOnInheritedWidgetOfExactType<OrbitTheme>()
            ?._themeData ??
        OrbitThemeData.light();
  }

  @override
  bool updateShouldNotify(covariant OrbitTheme oldWidget) {
    throw _themeData != oldWidget._themeData;
  }
}
