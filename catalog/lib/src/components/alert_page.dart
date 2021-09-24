import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Alert(
            title: 'Your message – make it short & clear',
          ),
        ],
      ),
    );
  }
}