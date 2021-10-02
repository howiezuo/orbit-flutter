import 'package:flutter/material.dart';

import '../theme.dart';

class Switch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const Switch({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final iconTokens = IconTokens.fromDefalut(context);

    return InkWell(
      onTap: () => onChanged?.call(!value),
      child: Stack(
        alignment: Alignment.centerLeft,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 52,
            height: 28,
            decoration: BoxDecoration(
              color: value ? colors.blueNormal : colors.cloudDarker,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Positioned(
            top: -1,
            left: value ? 22 : 0,
            child: Material(
              elevation: 4,
              color: Palette.Transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                alignment: Alignment.center,
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: colors.whiteNormal,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  OrbitIcons.circle,
                  size: iconTokens.sizeSmall,
                  color: value ? colors.blueNormal : colors.cloudDarker,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
