import 'package:orbit/orbit.dart';

class EmptyStatePage extends StatelessWidget {
  const EmptyStatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          runSpacing: 16,
          children: [
            EmptyState(
              image: Image.asset('images/empty.png'),
              message: 'Sorry, we couldn\'t find that connection. ',
            ),
            EmptyState(
              image: Image.asset('images/empty.png'),
              message: 'Sorry, we couldn\'t find that connection. ',
              action: Button(
                child: Text('Adjust serach'),
                onPressed: () => {},
                fullWidth: false,
              ),
            ),
            EmptyState(
              image: Image.asset('images/empty.png'),
              message: 'Sorry, we couldn\'t find that connection. ',
              action: Button(
                child: Text('Adjust serach'),
                onPressed: () => {},
                type: ButtonType.primarySubtle,
                fullWidth: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
