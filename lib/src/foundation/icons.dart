import 'package:flutter/widgets.dart' show IconData;

class OrbitIcons {
  OrbitIcons._();

  static const alert = OrbitIconData(0xe07f);

  static const alertCircle = OrbitIconData(0x0055);

  static const check = OrbitIconData(0x0056);

  static const information_circle = OrbitIconData(0x0052);
}

class OrbitIconData extends IconData {
  const OrbitIconData(int codePoint)
      : super(
          codePoint,
          fontFamily: 'orbit-icons',
          fontPackage: 'orbit',
        );
}
