import 'package:orbit/orbit.dart';

class InputFieldPage extends StatefulWidget {
  const InputFieldPage({Key? key}) : super(key: key);

  @override
  _InputFieldPageState createState() => _InputFieldPageState();
}

class _InputFieldPageState extends State<InputFieldPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          runSpacing: 16,
          children: [
            InputField(
              label: 'Label',
              placeholder: 'Placeholder',
            ),
            InputField(
              label: 'Label',
              placeholder: 'Placeholder',
              icon: OrbitIcons.search,
            ),
            InputField(
              label: 'Label',
              inlineLable: true,
              placeholder: 'Placeholder',
            ),
            InputField(
              placeholder: 'Placeholder',
            ),
            InputField(
              label: 'Label',
              placeholder: 'Placeholder',
              state: InputFieldStateHelp(message: 'Help message'),
            ),
            InputField(
              label: 'Label',
              placeholder: 'Placeholder',
              state: InputFieldStateError(message: 'Error message'),
            ),
          ],
        ),
      ),
    );
  }
}
