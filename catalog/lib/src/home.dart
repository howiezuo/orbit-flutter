import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO apply orbit to home
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
            title: Text('BadgeList (TODO)'),
            onTap: () => {/** TODO */},
          ),
          ListTile(
            title: Text('BottomSheet (TODO)'),
            onTap: () => {/** TODO */},
          ),
          ListTile(
            title: Text('Button'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_BUTTON),
          ),
        ],
      ),
    );
  }
}
