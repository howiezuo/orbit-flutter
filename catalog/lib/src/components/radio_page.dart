import 'package:orbit/orbit.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          runSpacing: 8,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Radio(
                      value: 0,
                      groupValue: _selected,
                      onChanged: (value) => setState(() => _selected = 0),
                    ),
                    SizedBox(width: 8),
                    Radio(
                      value: 1,
                      groupValue: _selected,
                      onChanged: (value) => setState(() => _selected = 1),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
