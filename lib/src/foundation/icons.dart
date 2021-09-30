import 'package:flutter/widgets.dart' show IconData;

class OrbitIcons {
  OrbitIcons._();

  static const airplane = OrbitIconData(0x0061);

  static const alert = OrbitIconData(0xe07f);

  static const alert_circle = OrbitIconData(0x0055);

  static const check = OrbitIconData(0x0056);

  static const chevron_right = OrbitIconData(0xe01f);

  static const information_circle = OrbitIconData(0x0052);

  static const search = OrbitIconData(0xe07c);
}

class OrbitIconData extends IconData {
  const OrbitIconData(int codePoint)
      : super(
          codePoint,
          fontFamily: 'orbit-icons',
          fontPackage: 'orbit',
        );
}
