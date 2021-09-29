import 'package:catalog/src/components/empty_state_page.dart';
import 'package:catalog/src/home.dart';
import 'package:flutter/widgets.dart';

import 'component_screen.dart';
import 'components/alert_page.dart';
import 'components/badge_page.dart';
import 'components/bottom_sheet_page.dart';
import 'components/button_page.dart';
import 'components/card_page.dart';
import 'components/checkbox_page.dart';
import 'components/dialog_page.dart';

class Routes {
  static Map<String, WidgetBuilder>? routes(BuildContext context) {
    return {
      ROUTE_HOME: (_) => HomeScreen(),
      ROUTE_ALERT: (_) => ComponentScreen(title: 'Alert', child: AlertPage()),
      ROUTE_BADGE: (_) => ComponentScreen(title: 'Badge', child: BadgePage()),
      ROUTE_BUTTON: (_) =>
          ComponentScreen(title: 'Button', child: ButtonPage()),
      ROUTE_BOTTOM_SHEET: (_) =>
          ComponentScreen(title: 'BottomSheet', child: BottomSheetPage()),
      ROUTE_CARD: (_) => ComponentScreen(title: 'Card', child: CardPage()),
      ROUTE_CHECKBOX: (_) =>
          ComponentScreen(title: 'CheckBox', child: CheckBoxPage()),
      ROUTE_DIALOG: (_) =>
          ComponentScreen(title: 'Dialog', child: DialogPage()),
      ROUTE_EMPTY_STATE: (_) =>
          ComponentScreen(title: 'EmptyState', child: EmptyStatePage()),
    };
  }

  static const ROUTE_HOME = '/';
  static const ROUTE_ALERT = '/alert';
  static const ROUTE_BADGE = '/badge';
  static const ROUTE_BUTTON = '/button';
  static const ROUTE_BOTTOM_SHEET = '/bottom_sheet';
  static const ROUTE_CARD = '/card';
  static const ROUTE_CHECKBOX = '/checkbox';
  static const ROUTE_DIALOG = '/dialog';
  static const ROUTE_EMPTY_STATE = '/empty_state';
}
