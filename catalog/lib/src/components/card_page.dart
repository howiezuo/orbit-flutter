import 'package:orbit/orbit.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          runSpacing: 8,
          children: [
            Card(
              title: 'Card title',
              child: Container(
                color: Palette.GreenLight,
                height: 120,
              ),
            ),
            Card(
              title: 'Card title',
              // TODO small size
              action: ButtonLink(
                child: Text('Action'),
                onPressed: () => {},
                fullWidth: false,
              ),
              child: Container(
                color: Palette.GreenLight,
                height: 120,
              ),
            ),
            Card(
              // TODO small size
              action: ButtonLink(
                child: Text('Action'),
                onPressed: () => {},
                fullWidth: false,
              ),
              child: Container(
                color: Palette.GreenLight,
                height: 120,
              ),
            ),
            Card(
              child: Container(
                color: Palette.GreenLight,
                height: 160,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
