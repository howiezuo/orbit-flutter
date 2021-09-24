import 'package:orbit/src/foundation/space.dart';

abstract class SpaceTokens {
  double get small;
  double get medium;
}

class SpaceStyles extends SpaceTokens {
  @override
  double get small => Space.Small;

  @override
  double get medium => Space.Medium;
}
