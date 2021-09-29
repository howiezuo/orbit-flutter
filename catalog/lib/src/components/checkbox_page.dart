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
        child: Column(
          children: [
            Row(
              children: [
                CheckBox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                SizedBox(width: 8),
                CheckBox(
                  value: true,
                  onChanged: (value) {},
                ),
                SizedBox(width: 8),
                CheckBox(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            SizedBox(height: 16),
            CheckBox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
              label: 'Label',
            ),
            SizedBox(height: 8),
            CheckBox(
              value: true,
              onChanged: (value) {},
              label: 'Label',
            ),
            SizedBox(height: 8),
            CheckBox(
              value: false,
              onChanged: (value) {},
              label: 'Label',
            ),
          ],
        ),
      ),
    );
  }
}
