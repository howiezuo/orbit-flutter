import 'package:catalog/src/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

class Catalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrbitApp(
      title: 'Orbit Catalog',
      initialRoute: Routes.ROUTE_HOME,
      routes: Routes.routes(context),
    );
  }
}
