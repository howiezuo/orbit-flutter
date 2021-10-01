import 'package:orbit/src/foundation/base.dart';

abstract class SizeTokens {
  double get small;
  double get medium;
  double get large;
  double get xlarge;
  double get xxlarge;
}

class SizeStyles extends SizeTokens {
  @override
  double get small => Base.SizeSm;

  @override
  double get medium => Base.SizeMd;

  @override
  double get large => Base.SizeLg;

  @override
  double get xlarge => Base.SizeXl;

  @override
  double get xxlarge => Base.SizeXxl;
}
