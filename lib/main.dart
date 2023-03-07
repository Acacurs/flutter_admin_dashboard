import 'package:admin_dashboard/app.dart';
import 'package:admin_dashboard/initializer.dart';
import 'package:admin_dashboard/provider_scope.dart';
import 'package:admin_dashboard/providers/settings_provider.dart';
import 'package:admin_dashboard/services/connexion.dart/connectivity_service.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() async {
  await Initializer.load();
  ConnectivityStatus initialConnectivityStatus =
      await ConnectivityService().getConnectivityStatus();
  bool darkMode = await SettingsProvider().isDarkModeOnFuture;
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return ProviderScope(
          child: App(
              connectivityService: () => initialConnectivityStatus,
              darkModeOn: darkMode));
    }),
  );
}
