import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';
import 'package:orbit/src/tokens/alert_tokens.dart';

class Alert extends StatelessWidget {
  final String title;
  final Widget? child;
  final AlertType? type;

  const Alert({
    Key? key,
    required this.title,
    AlertType this.type = AlertType.info,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final defalutAlertStyles = AlertStyles.fromDefault(context);
    return Container(
      padding: defalutAlertStyles.padding,
      decoration: BoxDecoration(
          color: defalutAlertStyles.colorBackgroundInfo,
          border: Border.all(
              color: defalutAlertStyles.colorBorderInfo ??
                  theme.colorTokens.blueLightHover),
          borderRadius: BorderRadius.all(theme.borderRadiusTokens.large)),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: defalutAlertStyles.colorTextInfo,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

enum AlertType { info, success, warning, critical }
