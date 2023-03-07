import 'package:admin_dashboard/providers/path_provider.dart';
import 'package:admin_dashboard/providers/settings_provider.dart';
import 'package:admin_dashboard/ui/widgets/app_bar.dart';
import 'package:admin_dashboard/ui/widgets/navigation_drawer/custom_navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final settingsProvider =
        Provider.of<SettingsProvider>(context, listen: true);
    final pathProvider = Provider.of<PathProvider>(context, listen: true);
    return Scaffold(
        key: _scaffoldKey,
        body: Row(children: [
          const CollapsingNavigationDrawer(),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                appBar(context, _scaffoldKey, settingsProvider),
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    pageSnapping: false,
                    controller: pathProvider.pageController,
                    children: pageViewModel.map((e) => e.widget).toList(),
                    onPageChanged: (int index) {},
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
