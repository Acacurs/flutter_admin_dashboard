import 'package:admin_dashboard/providers/path_provider.dart';
import 'package:admin_dashboard/providers/settings_provider.dart';
import 'package:admin_dashboard/route/routes.dart';
import 'package:admin_dashboard/settings/setting_language_actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List<Widget> appBarActions(
    BuildContext context, SettingsProvider settingsProvider) {
  return [
    IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notifications,
          color: Colors.grey,
        )),
    const SizedBox(
      width: 20.0,
    ),
    IconButton(
        onPressed: () {
          Provider.of<SettingsProvider>(context, listen: false)
              .updateTheme(!settingsProvider.isDarkModeOn);
        },
        icon: settingsProvider.isDarkModeOn
            ? const Icon(CupertinoIcons.moon_stars_fill)
            : Icon(
                CupertinoIcons.sun_min_fill,
                color: Colors.orangeAccent[700],
              )),
    const SizedBox(
      width: 20,
    ),
    Center(
        child: SettingLanguageActions(
            color: Theme.of(context).primaryIconTheme.color!)),
    const SizedBox(
      width: 20,
    ),
    Center(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              color: Theme.of(context).dividerTheme.color),
          child: const Icon(Icons.account_circle_rounded, color: Colors.grey),
        ),
      ),
    ),
    const SizedBox(
      width: 50,
    ),
  ];
}

AppBar appBar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey,
    SettingsProvider settingsProvider) {
  final pathProvider = Provider.of<PathProvider>(context, listen: true);
  return AppBar(
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(Routes.home);
            },
            child: Text("admin",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Theme.of(context).buttonTheme.colorScheme!.primary)),
          ),
          InkWell(
            onTap: () {},
            child: Text(pathProvider.getCurrrentPath,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Colors.grey)),
          ),
        ],
      ),
      actions: appBarActions(context, settingsProvider));
}
