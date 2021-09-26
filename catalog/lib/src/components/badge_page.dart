import 'package:flutter/material.dart';
import 'package:orbit/orbit.dart';
import 'package:orbit/src/foundation/icons.dart';

class BadgePage extends StatelessWidget {
  const BadgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          for (var type in BadgeType.values) _typedBadge(type),
        ],
      ),
    );
  }

  Widget _typedBadge(BadgeType type) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Badge(
            label: 'Label',
            type: type,
          ),
          SizedBox(width: 8),
          Badge(
            label: 'Label',
            icon: OrbitIcons.airplane,
            type: type,
          ),
          SizedBox(width: 8),
          Badge(
            icon: OrbitIcons.airplane,
            type: type,
          ),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
