import 'package:orbit/orbit.dart';

class TilePage extends StatelessWidget {
  const TilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          runSpacing: 8,
          children: [
            Tile(title: 'Title'),
            Tile(title: 'Title', icon: OrbitIcons.airplane),
            Tile(title: 'Title', desctipion: 'Description'),
            Tile(
              title: 'Title',
              icon: OrbitIcons.airplane,
              desctipion: 'Description',
            ),
            Tile.raw(
              child: Container(
                color: Palette.GreenLight,
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
