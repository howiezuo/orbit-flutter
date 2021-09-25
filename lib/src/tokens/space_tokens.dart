import 'package:orbit/src/foundation/spaces.dart';

abstract class SpaceTokens {
  double get xXsmall;
  double get xSmall;
  double get small;
  double get medium;
}

class SpaceStyles extends SpaceTokens {
  @override
  double get xXsmall => Spaces.Xxs;

  @override
  double get xSmall => Spaces.Xs;

  @override
  double get small => Spaces.Sm;

  @override
  double get medium => Spaces.Md;
}