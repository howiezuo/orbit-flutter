import 'package:orbit/orbit.dart';

import 'routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO apply orbit theme
    return Scaffold(
      appBar: AppBar(title: Text('Catalog')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Alert'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_ALERT),
          ),
          ListTile(
            title: Text('Badge'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_BADGE),
          ),
          ListTile(
            title: Text('BottomSheet'),
            onTap: () =>
                Navigator.pushNamed(context, Routes.ROUTE_BOTTOM_SHEET),
          ),
          ListTile(
            title: Text('Button'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_BUTTON),
          ),
          ListTile(
            title: Text('ButtonLink'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_BUTTON_LINK),
          ),
          ListTile(
            title: Text('Card'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_CARD),
          ),
          ListTile(
            title: Text('CheckBox'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_CHECKBOX),
          ),
          ListTile(
            title: Text('Dialog'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_DIALOG),
          ),
          ListTile(
            title: Text('EmptyState'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_EMPTY_STATE),
          ),
          ListTile(
            title: Text('InputField'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_INPUT_FIELD),
          ),
          ListTile(
            title: Text('ListChoice'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_LIST_CHOICE),
          ),
          ListTile(
            title: Text('Loading (TODO)'),
            onTap: () => {},
          ),
          ListTile(
            title: Text('ModalSheet'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_MODAL_SHEET),
          ),
          ListTile(
            title: Text('NavigationBar'),
            onTap: () =>
                Navigator.pushNamed(context, Routes.ROUTE_NAVIGATION_BAR),
          ),
          ListTile(
            title: Text('Radio'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_RADIO),
          ),
          ListTile(
            title: Text('Select'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_SELECT),
          ),
          ListTile(
            title: Text('Separator'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_SEPARATOR),
          ),
          ListTile(
            title: Text('SocialButton (TODO)'),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Switch'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_SWITCH),
          ),
          ListTile(
            title: Text('TabBar'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_TAB_BAR),
          ),
          ListTile(
            title: Text('Tag'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_TAG),
          ),
          ListTile(
            title: Text('TextLink'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_TEXT_LINK),
          ),
          ListTile(
            title: Text('Tile'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_TILE),
          ),
        ],
      ),
    );
  }
}
