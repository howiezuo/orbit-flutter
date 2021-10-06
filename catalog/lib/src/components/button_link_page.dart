import 'package:orbit/orbit.dart';

class ButtonLinkPage extends StatelessWidget {
  const ButtonLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            for (var type in ButtonLinkType.values) _styledButton(type),
          ],
        ),
      ),
    );
  }

  Widget _styledButton(ButtonLinkType type) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ButtonLink(child: Text('Label'), onPressed: () => {}, type: type),
        SizedBox(height: 8),
        ButtonLink(
          child: Text('Label'),
          onPressed: () => {},
          type: type,
          disabled: true,
        ),
        SizedBox(height: 8),
        ButtonLink(
            child: Text('Label'),
            onPressed: () => {},
            iconLeft: OrbitIcons.airplane,
            type: type),
        SizedBox(height: 8),
        ButtonLink(
            child: Text('Label'),
            onPressed: () => {},
            iconRight: OrbitIcons.chevron_right,
            type: type),
        SizedBox(height: 8),
        ButtonLink(
            child: Text('Label'),
            onPressed: () => {},
            iconLeft: OrbitIcons.airplane,
            iconRight: OrbitIcons.chevron_right,
            type: type),
        SizedBox(height: 8),
        ButtonLink.icon(
            icon: OrbitIcons.airplane, onPressed: () => {}, type: type),
        ButtonLink(
          child: Text('Label'),
          onPressed: () => {},
          type: type,
          fullWidth: false,
        ),
        SizedBox(height: 8),
        ButtonLink(
          child: Text('Label'),
          iconLeft: OrbitIcons.airplane,
          onPressed: () => {},
          type: type,
          fullWidth: false,
        ),
        SizedBox(height: 8),
        ButtonLink(
          child: Text('Label'),
          iconRight: OrbitIcons.chevron_right,
          onPressed: () => {},
          type: type,
          fullWidth: false,
        ),
        SizedBox(height: 8),
        ButtonLink(
          child: Text('Label'),
          iconLeft: OrbitIcons.airplane,
          iconRight: OrbitIcons.chevron_right,
          onPressed: () => {},
          type: type,
          fullWidth: false,
        ),
        SizedBox(height: 8),
        ButtonLink.icon(
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
