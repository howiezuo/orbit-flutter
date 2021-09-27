import 'package:orbit/src/foundation/base.dart';

abstract class OpacityTokens {
  double get small;
  double get medium;
  double get large;
}

class OpacityStyles extends OpacityTokens {
  @override
  double get large => Base.OpacityLarge;

  @override
  double get medium => Base.OpacityMedium;

  @override
  double get small => Base.OpacitySmall;
}
