import 'package:catalog/src/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO apply orbit to home
    return Scaffold(
      appBar: AppBar(title: Text('Catalog')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Button'),
            onTap: () => Navigator.pushNamed(context, Routes.ROUTE_BUTTON),
          ),
        ],
      ),
    );
  }
}
