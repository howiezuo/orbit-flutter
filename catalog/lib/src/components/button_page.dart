import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Button(
          onPressed: () => {},
          child: Text('Button'),
        ),
      ],
    );
  }
}