import 'package:flutter/widgets.dart' show IconData;

class OrbitIcons {
  OrbitIcons._();

  static const accommodation = OrbitIconData(0xe085);

  static const airplane = OrbitIconData(0x0061);

  static const alert = OrbitIconData(0xe07f);

  static const alert_circle = OrbitIconData(0x0055);

  static const check = OrbitIconData(0x0056);

  static const chevron_down = OrbitIconData(0xe09d);

  static const chevron_right = OrbitIconData(0xe01f);

  static const circle = OrbitIconData(0xe013);

  static const close = OrbitIconData(0x0058);

  static const information_circle = OrbitIconData(0x0052);

  static const lock = OrbitIconData(0xe169);

  static const lock_open = OrbitIconData(0xe170);

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
