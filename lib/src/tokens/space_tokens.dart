import 'package:orbit/src/foundation/base.dart';

abstract class SpaceTokens {
  double get xXsmall;
  double get xSmall;
  double get small;
  double get medium;
  double get large;
}

class SpaceStyles extends SpaceTokens {
  @override
  double get xXsmall => Base.SpaceXxs;

  @override
  double get xSmall => Base.SpaceXs;

  @override
  double get small => Base.SpaceSm;

  @override
  double get medium => Base.SpaceMd;

  @override
  double get large => Base.SpaceLg;
}
