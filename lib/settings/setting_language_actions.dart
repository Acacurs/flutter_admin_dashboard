import 'package:admin_dashboard/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_localizations.dart';

enum LanguagesActions { english, french }

class SettingLanguageActions extends StatefulWidget {
  final Color color;
  const SettingLanguageActions({Key? key, required this.color})
      : super(key: key);

  @override
  _SettingLanguageActionsState createState() => _SettingLanguageActionsState();
}

class _SettingLanguageActionsState extends State<SettingLanguageActions> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of(context, listen: true);
    Locale _appCurrentLocale = settingsProvider.appLocale;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).dividerTheme.color,
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: PopupMenuButton<LanguagesActions>(
        color: Theme.of(context).colorScheme.primaryContainer,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Text(
          _appCurrentLocale.toString().toUpperCase(),
          style: Theme.of(context).textTheme.headline5,
        ),
        onSelected: (LanguagesActions result) {
          switch (result) {
            case LanguagesActions.english:
              settingsProvider.updateLanguage("en");
              break;
            case LanguagesActions.french:
              settingsProvider.updateLanguage("fr");
              break;
            default:
              settingsProvider.updateLanguage("fr");
              break;
          }
        },
        itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<LanguagesActions>>[
          PopupMenuItem<LanguagesActions>(
            value: LanguagesActions.english,
            enabled: _appCurrentLocale == const Locale("en") ? false : true,
            child: _appCurrentLocale == const Locale("en")
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.check,
                        color: Theme.of(context).primaryIconTheme.color,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        AppLocalizations.of(context)!
                            .translate("settingPopUpToggleEnglish"),
                        style: Theme.of(context).textTheme.subtitle2,
                      )
                    ],
                  )
                : Text(
                    AppLocalizations.of(context)!
                        .translate("settingPopUpToggleEnglish"),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
          ),
          PopupMenuItem<LanguagesActions>(
            value: LanguagesActions.french,
            enabled: _appCurrentLocale == const Locale("fr") ? false : true,
            child: _appCurrentLocale == const Locale("fr")
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.check,
                        color: Theme.of(context).primaryIconTheme.color,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        AppLocalizations.of(context)!
                            .translate("settingPopUpToggleFrench"),
                        style: Theme.of(context).textTheme.subtitle2,
                      )
                    ],
                  )
                : Text(
                    AppLocalizations.of(context)!
                        .translate("settingPopUpToggleFrench"),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
          ),
        ],
      ),
    );
  }
}
