import 'package:admin_dashboard/app_localizations.dart';
import 'package:admin_dashboard/constants/constants.dart';
import 'package:admin_dashboard/constants/responsive.dart';
import 'package:admin_dashboard/route/routes.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const SideMenu({
    required this.scaffoldKey,
    Key? key,
  }) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    //final screenController = Provider.of<ScreenControllerProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/appicon.png",
                width: 46,
              ),
              Text(
                "Dbox",
                style: Theme.of(context).textTheme.headline3,
              ),
              if (!Responsive.isDesktop(context))
                CloseButton(
                  color: Theme.of(context).primaryIconTheme.color,
                ),
            ],
          ),
          ListTile(
            title: Text(
              AppLocalizations.of(context)!.translate("HomeText"),
              style: Theme.of(context).textTheme.subtitle2,
            ),
            leading: Icon(Icons.home,
                color: Theme.of(context).textTheme.headline3!.color),
            onTap: () {
              Navigator.of(context).pushNamed(Routes.home);
            },
          ),
          ListTile(
            title: Text(
              "Documents",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            leading: Icon(Icons.book,
                color: Theme.of(context).textTheme.headline3!.color),
            onTap: () {
              Navigator.of(context).pushNamed(Routes.docs);
            },
          ),
          ListTile(
            title: Text(
              "News",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            leading: Icon(CommunityMaterialIcons.newspaper,
                color: Theme.of(context).textTheme.headline3!.color),
            onTap: () {
              Navigator.of(context).pushNamed(Routes.news);
            },
          ),
        ],
      ),
    );
  }
}
