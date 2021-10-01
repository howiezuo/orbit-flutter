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
        child: Wrap(
          runSpacing: 8,
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
            Radio(
              value: Radios.withLable,
              groupValue: _selected,
              onChanged: (value) =>
                  setState(() => _selected = Radios.withLable),
              label: 'Label',
            )
          ],
        ),
      ),
    );
  }
}

enum Radios { single, withLable }
