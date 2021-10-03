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
import 'components/empty_state_page.dart';
import 'components/input_field_page.dart';
import 'components/list_choice_page.dart';
import 'components/modal_sheet_page.dart';
import 'components/navigation_bar_page.dart';
import 'components/radio_page.dart';
import 'components/select_page.dart';
import 'components/separator_page.dart';
import 'components/switch_page.dart';
import 'components/tab_bar_page.dart';
import 'components/tag_page.dart';

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
      ROUTE_INPUT_FIELD: (_) =>
          ComponentScreen(title: 'InputField', child: InputFieldPage()),
      ROUTE_LIST_CHOICE: (_) =>
          ComponentScreen(title: 'ListChoice', child: ListChoicePage()),
      ROUTE_MODAL_SHEET: (_) =>
          ComponentScreen(title: 'ModalSheet', child: ModalSheetPage()),
      ROUTE_NAVIGATION_BAR: (_) =>
          ComponentScreen(title: 'NavigationBar', child: NavigationBarPage()),
      ROUTE_RADIO: (_) => ComponentScreen(title: 'Radio', child: RadioPage()),
      ROUTE_SELECT: (_) =>
          ComponentScreen(title: 'Select', child: SelectPage()),
      ROUTE_SEPARATOR: (_) =>
          ComponentScreen(title: 'Separator', child: SeparatorPage()),
      ROUTE_SWITCH: (_) =>
          ComponentScreen(title: 'Switch', child: SwitchPage()),
      ROUTE_TAB_BAR: (_) =>
          ComponentScreen(title: 'TabBar', child: TabBarPage()),
      ROUTE_TAG: (_) => ComponentScreen(title: 'Tag', child: TagPage()),
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
  static const ROUTE_INPUT_FIELD = '/input_field';
  static const ROUTE_LIST_CHOICE = '/list_choice';
  static const ROUTE_MODAL_SHEET = '/modal_sheet';
  static const ROUTE_NAVIGATION_BAR = '/navigation_bar';
  static const ROUTE_RADIO = '/radio';
  static const ROUTE_SELECT = '/select';
  static const ROUTE_SEPARATOR = '/separator';
  static const ROUTE_SWITCH = '/switch';
  static const ROUTE_TAB_BAR = '/tab_bar';
  static const ROUTE_TAG = '/tag';
}
