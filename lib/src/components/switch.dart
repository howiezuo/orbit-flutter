import 'package:flutter/material.dart';

import '../theme.dart';

class Switch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final IconData? onIcon;
  final IconData? offIcon;

  const Switch({
    Key? key,
    required this.value,
    required this.onChanged,
    this.onIcon,
    this.offIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final colors = theme.colorTokens;
    final iconTokens = IconTokens.fromDefault(context);

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
                  value
                      ? onIcon ?? OrbitIcons.circle
                      : offIcon ?? OrbitIcons.circle,
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
