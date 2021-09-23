import 'package:catalog/src/component_screen.dart';
import 'package:catalog/src/components/button_page.dart';
import 'package:catalog/src/home.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static Map<String, WidgetBuilder>? routes(BuildContext context) {
    return {
      ROUTE_HOME: (_) => HomeScreen(),
      ROUTE_BUTTON: (_) =>
          ComponentScreen(title: 'Button', child: ButtonPage()),
    };
  }

  static const ROUTE_HOME = '/';
  static const ROUTE_BUTTON = '/button';
}
