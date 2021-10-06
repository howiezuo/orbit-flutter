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
        Button(child: Text('Label'), onPressed: () => {}, type: type),
        SizedBox(height: 8),
        Button(
          child: Text('Label'),
          onPressed: () => {},
          type: type,
          disabled: true,
        ),
        SizedBox(height: 8),
        Button(
          child: Text('Label'),
          iconLeft: OrbitIcons.airplane,
          onPressed: () => {},
          type: type,
        ),
        SizedBox(height: 8),
        Button(
          child: Text('Label'),
          iconRight: OrbitIcons.chevron_right,
          onPressed: () => {},
          type: type,
        ),
        SizedBox(height: 8),
        Button(
          child: Text('Label'),
          iconLeft: OrbitIcons.airplane,
          iconRight: OrbitIcons.chevron_right,
          onPressed: () => {},
          type: type,
        ),
        SizedBox(height: 8),
        Button.icon(icon: OrbitIcons.airplane, onPressed: () => {}, type: type),
        SizedBox(height: 8),
        Button(
          child: Text('Label'),
          onPressed: () => {},
          type: type,
          fullWidth: false,
        ),
        SizedBox(height: 8),
        Button(
          child: Text('Label'),
          iconLeft: OrbitIcons.airplane,
          onPressed: () => {},
          type: type,
          fullWidth: false,
        ),
        SizedBox(height: 8),
        Button(
          child: Text('Label'),
          iconRight: OrbitIcons.chevron_right,
          onPressed: () => {},
          type: type,
          fullWidth: false,
        ),
        SizedBox(height: 8),
        Button(
          child: Text('Label'),
          iconLeft: OrbitIcons.airplane,
          iconRight: OrbitIcons.chevron_right,
          onPressed: () => {},
          type: type,
          fullWidth: false,
        ),
        SizedBox(height: 8),
        Button.icon(
          icon: OrbitIcons.airplane,
          onPressed: () => {},
          type: type,
          fullWidth: false,
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
