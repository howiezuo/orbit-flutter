import 'package:orbit/orbit.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Wrap(
          runSpacing: 8,
          children: [
            _typedAlert(AlertType.info),
            _typedAlert(AlertType.success),
            _typedAlert(AlertType.warning),
            _typedAlert(AlertType.critical),
          ],
        ),
      ),
    );
  }

  Widget _typedAlert(AlertType type) {
    return Column(
      children: [
        Alert(
          title: 'Your message – make it short & clear',
          child: Text('Description – make it as clear as possible. '),
          type: type,
          showIcon: true,
        ),
        SizedBox(height: 8),
        Alert(
          title: 'The quick, brown fox jumps over a lazy dog.',
          child: Text('Description – make it as clear as possible. '),
          type: type,
          showIcon: false,
        ),
      ],
    );
  }
}
