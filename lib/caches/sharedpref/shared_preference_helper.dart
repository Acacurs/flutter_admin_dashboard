import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  Future<SharedPreferences>? _sharedPreference;
  static const String darkMode = "darkMode";
  static const String languageCode = "languageCode";

  SharedPreferenceHelper() {
    _sharedPreference = SharedPreferences.getInstance();
  }

  //Theme module
  Future<void> changeTheme(bool value) {
    return _sharedPreference!.then((prefs) => prefs.setBool(darkMode, value));
  }

  Future<bool> get isDarkMode async {
    return _sharedPreference!.then((prefs) {
      return prefs.getBool(darkMode) ?? false;
    });
  }

  //Locale module
  Future<String?> get appLocale {
    return _sharedPreference!.then((prefs) {
      return prefs.getString(languageCode);
    });
  }

  Future<void> changeLanguage(String? value) {
    return _sharedPreference!
        .then((prefs) => prefs.setString(languageCode, value!));
  }
}
