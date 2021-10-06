import 'package:orbit/orbit.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Button(
            child: Text('Show BottomSheet'),
            onPressed: () {
              final bottomsheet = BottomSheet(
                child: Container(
                  color: Palette.GreenLight,
                  height: 200,
                ),
              );
              bottomsheet.show(context: context);
            },
          ),
          SizedBox(height: 8),
          Button(
            child: Text('Show BottomSheet with actions'),
            onPressed: () {
              final bottomsheet = BottomSheet(
                child: Container(
                  color: Palette.GreenLight,
                  height: 200,
                ),
                action: Button(
                  child: Text('Action'),
                  onPressed: () => {},
                ),
              );
              bottomsheet.show(context: context);
            },
          ),
        ],
      ),
    );
  }
}
