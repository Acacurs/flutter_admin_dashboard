import 'package:admin_dashboard/caches/sharedpref/shared_preference_helper.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  // shared pref object
  SharedPreferenceHelper? _sharedPrefsHelper;

  SettingsProvider() {
    _sharedPrefsHelper = SharedPreferenceHelper();
  }

  // Language provider
  Locale _appLocale = const Locale('fr');
  Locale get appLocale {
    _sharedPrefsHelper!.appLocale.then((localeValue) {
      if (localeValue != null) {
        _appLocale = Locale(localeValue);
      }
    });

    return _appLocale;
  }

  void updateLanguage(String languageCode) {
    if (languageCode == "fr") {
      _appLocale = const Locale("fr");
    } else {
      _appLocale = const Locale("en");
    }

    _sharedPrefsHelper!.changeLanguage(languageCode);
    notifyListeners();
  }

  //  Theme provider
  bool _isDarkModeOn = false;
  bool? _isDarkModeOnNullable;

  bool get isDarkModeOn {
    _sharedPrefsHelper!.isDarkMode.then((statusValue) {
      _isDarkModeOn = statusValue;
      _isDarkModeOnNullable = statusValue;
    });

    return _isDarkModeOn;
  }

  bool? get isDarkModeOnNullable {
    _sharedPrefsHelper!.isDarkMode.then((statusValue) {
      _isDarkModeOnNullable = _isDarkModeOnNullable;
    });
    return _isDarkModeOnNullable;
  }

  Future<bool> get isDarkModeOnFuture async {
    return _sharedPrefsHelper!.isDarkMode;
  }

  void updateTheme(bool isDarkModeOn) {
    _sharedPrefsHelper!.changeTheme(isDarkModeOn);
    _sharedPrefsHelper!.isDarkMode.then((darkModeStatus) {
      _isDarkModeOn = darkModeStatus;
    });

    notifyListeners();
  }
}
