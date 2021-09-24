import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orbit/orbit.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(length: AlertType.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
        bottom: TabBar(
          isScrollable: false,
          controller: _tabController,
          tabs: [
            for (final type in AlertType.values)
              Tab(text: _resolveTabName(type))
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [for (final type in AlertType.values) _singleView(type)],
      ),
    );
  }

  Widget _singleView(AlertType type) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Alert(
            title: 'Your message – make it short & clear',
            type: type,
          ),
        ],
      ),
    );
  }

  String _resolveTabName(AlertType type) {
    switch (type) {
      case AlertType.success:
        return 'Success';
      case AlertType.warning:
        return 'Warning';
      case AlertType.critical:
        return 'Critical';
      default:
        return 'Info';
    }
  }
}
