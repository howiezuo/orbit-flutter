import 'package:orbit/orbit.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({Key? key}) : super(key: key);

  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Switch(
              value: checked,
              onChanged: (value) => setState(() => checked = value),
            ),
            SizedBox(height: 8),
            Switch(
              value: checked,
              onChanged: (value) => setState(() => checked = value),
              onIcon: OrbitIcons.lock_open,
              offIcon: OrbitIcons.lock,
            ),
          ],
        ),
      ),
    );
  }
}
