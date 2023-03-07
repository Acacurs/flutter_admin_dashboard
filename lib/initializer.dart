import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_strategy/url_strategy.dart';

class Initializer {
  static Future<void> load() async {
    WidgetsFlutterBinding.ensureInitialized();
    setPathUrlStrategy();
    await SharedPreferences.getInstance();
  }
}
