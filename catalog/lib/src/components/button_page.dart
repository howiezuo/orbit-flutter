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
            for (var type in ButtonType.values) _styledButton(type),
          ],
        ),
      ),
    );
  }

  Widget _styledButton(ButtonType type) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Button(label: 'Label', onPressed: () => {}, type: type),
        SizedBox(height: 8),
        Button(
          label: 'Label',
          onPressed: () => {},
          type: type,
          size: ButtonSize.small,
        ),
        SizedBox(height: 8),
        Button(
          label: 'Label',
          onPressed: () => {},
          type: type,
          size: ButtonSize.large,
        ),
        SizedBox(height: 8),
        Button(
          label: 'Label',
          iconLeft: OrbitIcons.airplane,
          onPressed: () => {},
          type: type,
        ),
        SizedBox(height: 8),
        Button(
          label: 'Label',
          iconRight: OrbitIcons.chevron_right,
          onPressed: () => {},
          type: type,
        ),
        SizedBox(height: 8),
        Button(
          label: 'Label',
          iconLeft: OrbitIcons.airplane,
          iconRight: OrbitIcons.chevron_right,
          onPressed: () => {},
          type: type,
        ),
        SizedBox(height: 8),
        Button.icon(icon: OrbitIcons.airplane, onPressed: () => {}, type: type),
        SizedBox(height: 8),
        Button(
          label: 'Label',
          onPressed: () => {},
          type: type,
          isFullWidth: false,
        ),
        SizedBox(height: 8),
        Button(
          label: 'Label',
          iconLeft: OrbitIcons.airplane,
          onPressed: () => {},
          type: type,
          isFullWidth: false,
        ),
        SizedBox(height: 8),
        Button(
          label: 'Label',
          iconRight: OrbitIcons.chevron_right,
          onPressed: () => {},
          type: type,
          isFullWidth: false,
        ),
        SizedBox(height: 8),
        Button(
          label: 'Label',
          iconLeft: OrbitIcons.airplane,
          iconRight: OrbitIcons.chevron_right,
          onPressed: () => {},
          type: type,
          isFullWidth: false,
        ),
        SizedBox(height: 8),
        Button.icon(
          icon: OrbitIcons.airplane,
          onPressed: () => {},
          type: type,
          isFullWidth: false,
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
