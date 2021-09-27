import 'package:flutter/material.dart';
import 'package:orbit/orbit.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _typedButton(ButtonType.primary),
            _typedButton(ButtonType.secondary),
            _typedButton(ButtonType.critical),
            _typedButton(ButtonType.white),
            _typedButton(ButtonType.primarySubtle),
            _typedButton(ButtonType.ciritcalSubtle),
          ],
        ),
      ),
    );
  }

  Widget _typedButton(ButtonType type) {
    return Column(
      children: [
        Button(child: Text('Label'), onPressed: () => {}, type: type),
        SizedBox(height: 8),
        Button(
          child: Text('Label'),
          onPressed: () => {},
          type: type,
          size: ButtonSize.small,
        ),
        SizedBox(height: 8),
        Button(
          child: Text('Label'),
          onPressed: () => {},
          type: type,
          size: ButtonSize.large,
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
