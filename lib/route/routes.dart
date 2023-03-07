import 'package:admin_dashboard/ui/main/main_widget.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();
  static const String home = '/';
  static const String about = '/about';
  static const String login = '/login';
  static const String privacyPolicy = '/privacy-policy';
  static const String termsConditions = '/terms-conditions';
  static const String docs = '/docs';
  static const String news = '/news';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const MainWidget(),
  };
}
