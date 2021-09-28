import 'package:flutter/material.dart';
import 'package:orbit/orbit.dart';

class ComponentScreen extends StatelessWidget {
  final String _title;
  final Widget _child;

  ComponentScreen({Key? key, required String title, required Widget child})
      : _title = title,
        _child = child,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title),),
      backgroundColor: Palette.CloudLight,
      body: _child,
    );
  }
}
