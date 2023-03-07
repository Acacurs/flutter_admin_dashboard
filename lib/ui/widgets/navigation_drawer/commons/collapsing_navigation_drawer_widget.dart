import 'package:admin_dashboard/providers/path_provider.dart';
import 'package:provider/provider.dart';

import '../custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  const CollapsingNavigationDrawer({Key? key}) : super(key: key);

  @override
  CollapsingNavigationDrawerState createState() {
    return CollapsingNavigationDrawerState();
  }
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double maxWidth = 300;
  double minWidth = 70;
  bool isCollapsed = false;
  AnimationController? _animationController;
  Animation<double>? widthAnimation;
  int currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animationController!);
  }

  @override
  Widget build(BuildContext context) {
    final pathProvider = Provider.of<PathProvider>(context, listen: true);
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, widget) => getWidget(context, widget, pathProvider),
    );
  }

  Widget getWidget(context, widget, PathProvider pathProvider) {
    return Material(
      elevation: 80.0,
      child: Container(
        width: widthAnimation!.value,
        color: const Color.fromARGB(255, 5, 30, 52),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: kToolbarHeight,
              child: Center(
                child: CollapsingListTile(
                  title: 'Admin',
                  icon: Icons.person,
                  path: "",
                  image: "assets/images/appicon.png",
                  animationController: _animationController!,
                  items: const [],
                  isTitle: true,
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 3, 21, 37),
              height: 0,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return const Divider(
                    height: 0.0,
                    color: Color.fromARGB(255, 3, 21, 37),
                  );
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CollapsingListTile(
                          path: navigationItems[index].path,
                          isTitle: false,
                          onTap: () {
                            setState(() {
                              currentSelectedIndex = index;
                            });
                            if (navigationItems[index].path ==
                                "/project-overview") {
                              pathProvider.changeCurrentPath(
                                  navigationItems[index].path);
                            }
                          },
                          isSelected: currentSelectedIndex == index,
                          title: navigationItems[index].title,
                          icon: navigationItems[index].icon,
                          items: navigationItems[currentSelectedIndex].items,
                          animationController: _animationController!,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                  isCollapsed
                      ? _animationController!.forward()
                      : _animationController!.reverse();
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.arrow_menu,
                progress: _animationController!,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
