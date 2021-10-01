import 'package:orbit/orbit.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  final items = <String>['One', 'Two', 'Free', 'Four'];
  String? _selected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          runSpacing: 8,
          children: [
            Select<String>(
              value: _selected,
              placeholder: 'Placeholder',
              onChanged: (value) => setState(() => _selected = value!),
              items: items.map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
            Select<String>(
              value: _selected,
              label: 'Field Label',
              placeholder: 'Placeholder',
              onChanged: (value) => setState(() => _selected = value!),
              items: items.map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
            Select<String>(
              value: _selected,
              label: 'Field Label',
              prefix: Icon(OrbitIcons.airplane),
              placeholder: 'Placeholder',
              onChanged: (value) => setState(() => _selected = value!),
              items: items.map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
