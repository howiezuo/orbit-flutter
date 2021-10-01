import 'package:orbit/orbit.dart';

class ListChoicePage extends StatefulWidget {
  const ListChoicePage({Key? key}) : super(key: key);

  @override
  _ListChoicePageState createState() => _ListChoicePageState();
}

class _ListChoicePageState extends State<ListChoicePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Wrap(
          runSpacing: 8,
          children: [
            ListChoice(
              title: 'ListChoice title',
              isSelected: isChecked,
              onClick: (value) => setState(() => isChecked = value!),
              description: 'Further description',
            ),
            ListChoice(
              title: 'ListChoice title',
              isSelected: true,
              onClick: (value) => {},
            ),
            ListChoice(
              title: 'ListChoice title',
              isSelected: false,
              onClick: (value) => {},
              icon: OrbitIcons.accommodation,
              description: 'Further description',
            ),
            ListChoice(
              title: 'ListChoice title',
              isSelected: true,
              onClick: (value) => {},
              icon: OrbitIcons.accommodation,
              description: 'Further description',
              disabled: true,
            ),
            ListChoice(
              title: 'ListChoice title',
              isSelected: false,
              onClick: (value) => {},
              description: 'Further description',
              hasError: true,
            ),
          ],
        ),
      ),
    );
  }
}
