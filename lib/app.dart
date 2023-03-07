import 'package:admin_dashboard/app_localizations.dart';
import 'package:admin_dashboard/auth_widget_builder.dart';
import 'package:admin_dashboard/constants/app_themes.dart';
import 'package:admin_dashboard/providers/path_provider.dart';
import 'package:admin_dashboard/providers/settings_provider.dart';
import 'package:admin_dashboard/route/router.dart';
import 'package:admin_dashboard/services/connexion.dart/connectivity_service.dart';
import 'package:admin_dashboard/ui/main/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  App({Key? key, required this.connectivityService, required this.darkModeOn})
      : super(key: key);

  // Expose builders for 3rd party services at the root of the widget tree
  // This is useful when mocking services while testing
  final bool darkModeOn;
  final ConnectivityStatus Function() connectivityService;
  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (_, settingsProviderRef, __) {
        return Consumer<PathProvider>(
          builder: (_, pathProvider, __) {
            return AuthWidgetBuilder(
              connectivityService: connectivityService,
              builder: (BuildContext context, bool darkMode) {
                return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    locale: settingsProviderRef.appLocale,
                    //List of all supported locales
                    supportedLocales: const [
                      Locale('fr', ''),
                      Locale('en', 'US'),
                    ],
                    //These delegates make sure that the localization data for the proper language is loaded
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                    ],
                    //return a locale which will be used by the app
                    localeResolutionCallback: (locale, supportedLocales) {
                      //check if the current device locale is supported or not
                      for (var supportedLocale in supportedLocales) {
                        if (supportedLocale.languageCode ==
                                locale?.languageCode ||
                            supportedLocale.countryCode ==
                                locale?.countryCode) {
                          return supportedLocale;
                        }
                      }
                      return supportedLocales.first;
                    },
                    title: "Admin dashboard",
                    theme: AppThemes.lightTheme,
                    darkTheme: AppThemes.darkTheme,
                    themeMode: settingsProviderRef.isDarkModeOnNullable == null
                        ? (darkModeOn ? ThemeMode.dark : ThemeMode.light)
                        : darkMode
                            ? ThemeMode.dark
                            : ThemeMode.light,
                    navigatorKey: navKey,
                    onGenerateRoute: generateRoute,
                    home: const MainWidget());
              },
            );
          },
        );
      },
    );
  }
}
