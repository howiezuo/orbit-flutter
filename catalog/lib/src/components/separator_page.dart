import 'package:orbit/orbit.dart';

class SeparatorPage extends StatelessWidget {
  const SeparatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Separator(),
      ),
    );
  }
}
