import 'dart:ui';

import 'package:flutter/foundation.dart';

@immutable
class Product {
  static const Light = Color(0xFFECF8F7);
  static const Normal = Color(0xFF00A991);
  static const Dark = Color(0xFF007F6D);
  static const Darker = Color(0xFF005C4E);
}

@immutable
class White {
  static const Normal = Color(0xFFFFFFFF);
}

@immutable
class Cloud {
  static const Light = Color(0xFFF5F7F9);
  static const Dark = Color(0xFFE8EDF1);
}

@immutable
class Ink {
  static const Normal = Color(0xFF252A31);
}

@immutable
class Green {
  static const Light = Color(0xFFEBF4EC);
  static const LightHover = Color(0xFFD7EAD9);
  static const Normal = Color(0xFF28A138);
  static const Dark = Color(0xFF2B7336);
}

@immutable
class Orange {
  static const Light = Color(0xFFFDF0E3);
  static const LightHover = Color(0xFFFAE2C7);
  static const Normal = Color(0xFFE98305);
  static const Dark = Color(0xFFA25100);
}

@immutable
class Red {
  static const Light = Color(0xFFFAEAEA);
  static const LightHover = Color(0xFFF4D2D2);
  static const Normal = Color(0xFFD21C1C);
  static const Dark = Color(0xFF970C0C);
}

@immutable
class Blue {
  static const Light = Color(0xFFE8F4FD);
  static const LightHover = Color(0xFFD0E9FB);
  static const Normal = Color(0xFF0172CB);
  static const Dark = Color(0xFF005AA3);
}
