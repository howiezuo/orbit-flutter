import 'package:flutter/material.dart';

class NavigationBarPage extends StatelessWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text('Use defalut Appbar and CupertinoNavigationBar'),
      ),
    );
  }
}
