import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Alert(
              title: 'The quick, brown fox jumps over a lazy dog.',
              showIcon: true,
            ),
            SizedBox(height: 8),
            _typedAlert('Some additional information', AlertType.info),
            SizedBox(height: 8),
            _typedAlert('You did it!', AlertType.success),
            SizedBox(height: 8),
            _typedAlert('Be careful!', AlertType.warning),
            SizedBox(height: 8),
            _typedAlert(
                'Something has gone horribly wrong', AlertType.critical),
            SizedBox(height: 8),
            Alert(
              title: 'The quick, brown fox jumps over a lazy dog.',
              showIcon: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _typedAlert(String title, AlertType type) {
    return Alert(
      title: title,
      child: Text('The quick, brown fox jumps over a lazy dog.'),
      type: type,
      showIcon: true,
    );
  }
}
