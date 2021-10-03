import 'package:orbit/orbit.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TabBar(
                currentIndex: selected,
                onTap: (value) => setState(() => selected = value),
                items: [
                  TabBarItem(icon: OrbitIcons.search, label: 'Search'),
                  TabBarItem(icon: OrbitIcons.ticket, label: 'Boking'),
                  TabBarItem(icon: OrbitIcons.alert_circle, label: "Profile"),
                ])
          ],
        ),
      ),
    );
  }
}
