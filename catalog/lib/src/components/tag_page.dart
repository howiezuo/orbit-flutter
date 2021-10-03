import 'package:orbit/orbit.dart';

class TagPage extends StatelessWidget {
  const TagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Tag(
              label: 'Prague',
              selected: false,
              onSelected: (value) => {},
            ),
            Tag(
              label: 'Prague',
              selected: true,
              onSelected: (value) => {},
            ),
            Tag(
              label: 'Prague',
              selected: false,
              onSelected: (value) => {},
              onRemoved: () => {},
            ),
            Tag(
              label: 'Prague',
              selected: true,
              onSelected: (value) => {},
              onRemoved: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
