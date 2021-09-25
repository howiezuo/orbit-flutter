import 'package:orbit/src/foundation/sizes.dart';

abstract class SizeTokens {
  double get small;
  double get medium;
  double get large;
  double get xlarge;
  double get xxlarge;
}

class SizeStyles extends SizeTokens {
  @override
  double get small => Sizes.Sm;

  @override
  double get medium => Sizes.Md;

  @override
  double get large => Sizes.Lg;

  @override
  double get xlarge => Sizes.Xl;

  @override
  double get xxlarge => Sizes.Xxl;
}
