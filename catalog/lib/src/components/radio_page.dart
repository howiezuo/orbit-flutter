import 'package:orbit/orbit.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  Radios _selected = Radios.single;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Radio(
                  value: Radios.single,
                  groupValue: _selected,
                  onChanged: (value) =>
                      setState(() => _selected = Radios.single),
                ),
              ],
            ),
            SizedBox(height: 8),
            Radio(
              value: Radios.withLable,
              groupValue: _selected,
              onChanged: (value) =>
                  setState(() => _selected = Radios.withLable),
              label: 'Label',
            ),
            SizedBox(height: 8),
            Radio(
              value: Radios.withInfo,
              groupValue: _selected,
              onChanged: (value) => setState(() => _selected = Radios.withInfo),
              label: 'Label',
              info: 'Additional information for this choice',
            ),
            SizedBox(height: 8),
            Radio(
              value: Radios.hasError,
              groupValue: _selected,
              onChanged: (value) => setState(() => _selected = Radios.hasError),
              label: 'Label',
              info: 'Additional information for this choice',
              hasError: true,
            ),
          ],
        ),
      ),
    );
  }
}

enum Radios { single, withLable, withInfo, hasError }
