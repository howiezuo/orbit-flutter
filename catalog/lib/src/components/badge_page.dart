import 'package:orbit/orbit.dart';

class BadgePage extends StatelessWidget {
  const BadgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              for (var type in BadgeType.values) _typedBadge(type),
            ],
          ),
        ),
      ),
    );
  }

  Widget _typedBadge(BadgeType type) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Wrap(
        spacing: 8,
        children: [
          Badge(
            child: Text('Label'),
            type: type,
          ),
          Badge(
            icon: OrbitIcons.airplane,
            child: Text('Label'),
            type: type,
          ),
          Badge(
            icon: OrbitIcons.airplane,
            type: type,
          ),
        ],
      ),
    );
  }
}
