import 'package:orbit/orbit.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({Key? key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          runSpacing: 8,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckBox(
                  value: isChecked,
                  onChanged: (value) => setState(() => isChecked = value!),
                ),
                Spacer(),
                CheckBox(
                  value: isChecked,
                  onChanged: (value) => setState(() => isChecked = value!),
                  label: 'Label',
                ),
                Spacer(),
                CheckBox(
                  value: isChecked,
                  onChanged: (value) => setState(() => isChecked = value!),
                  label: 'Label',
                  info: 'Additional information for this choice',
                ),
              ],
            ),
            _checkboxes(true, false, false),
            _checkboxes(false, false, false),
            _checkboxes(true, true, false),
            _checkboxes(false, true, false),
            _checkboxes(true, false, true),
            _checkboxes(false, false, true),
          ],
        ),
      ),
    );
  }

  Widget _checkboxes(bool value, bool disabled, bool hasError) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckBox(
          value: value,
          onChanged: (value) {},
          disabled: disabled,
          hasError: hasError,
        ),
        Spacer(),
        CheckBox(
          value: value,
          onChanged: (value) {},
          label: 'Label',
          disabled: disabled,
          hasError: hasError,
        ),
        Spacer(),
        CheckBox(
          value: value,
          onChanged: (value) {},
          label: 'Label',
          info: 'Additional information for this choice',
          disabled: disabled,
          hasError: hasError,
        ),
      ],
    );
  }
}
