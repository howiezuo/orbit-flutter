import 'package:orbit/orbit.dart';

class ModalSheetPage extends StatelessWidget {
  const ModalSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Button(
            label: 'Show ModalSheet',
            onPressed: () {
              final sheet = ModalSheet(
                header: ModalSheetHeader(
                  title: 'Title',
                ),
                child: Container(color: Palette.GreenLight),
              );
              sheet.show(context: context);
            },
          ),
          Button(
            label: 'Show ModalSheet with Action',
            onPressed: () {
              final sheet = ModalSheet(
                header: ModalSheetHeader(
                  title: 'Title',
                ),
                child: Container(color: Palette.GreenLight),
                action: Button(label: 'Action', onPressed: () => {}),
              );
              sheet.show(context: context);
            },
          ),
        ],
      ),
    );
  }
}
