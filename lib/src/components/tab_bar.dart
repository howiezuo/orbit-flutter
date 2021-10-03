import 'package:flutter/material.dart';
import 'package:orbit/src/components/separator.dart';

import '../theme.dart';

class TabBar extends StatelessWidget {
  final List<TabBarItem> items;
  final ValueChanged<int>? onTap;
  final int currentIndex;

  const TabBar({
    Key? key,
    required this.items,
    this.onTap,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final iconTokens = IconTokens.fromDefalut(context);

    return Column(
      children: [
        Separator(),
        SizedBox(
          height: 64,
          child: BottomNavigationBar(
            items: items,
            currentIndex: currentIndex,
            onTap: onTap,
            elevation: 0,
            iconSize: iconTokens.sizeLarge,
            selectedLabelStyle: TextStyle(
              fontSize: theme.typographyTokens.fontSizeSmall,
              fontWeight: theme.typographyTokens.fontWeightMedium,
            ),
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: TextStyle(
              fontSize: theme.typographyTokens.fontSizeSmall,
              fontWeight: theme.typographyTokens.fontWeightMedium,
            ),
          ),
        ),
      ],
    );
  }
}

class TabBarItem extends BottomNavigationBarItem {
  TabBarItem({
    required icon,
    String? label,
  }) : super(icon: Icon(icon), label: label);
}
