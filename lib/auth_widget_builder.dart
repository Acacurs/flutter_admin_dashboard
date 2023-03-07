import 'package:admin_dashboard/providers/settings_provider.dart';
import 'package:admin_dashboard/services/connexion.dart/connectivity_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthWidgetBuilder extends StatelessWidget {
  const AuthWidgetBuilder(
      {Key? key, required this.builder, required this.connectivityService})
      : super(key: key);

  final Widget Function(BuildContext context, bool isDarkModeOn) builder;

  final ConnectivityStatus Function() connectivityService;

  @override
  Widget build(BuildContext context) {
    final settingsProvider =
        Provider.of<SettingsProvider>(context, listen: true);
    return MultiProvider(
      providers: [
        StreamProvider<ConnectivityStatus>(
          initialData: ConnectivityStatus.oneline,
          create: (context) =>
              ConnectivityService().connectionStatusController.stream,
        ),
      ],
      child: builder(context, settingsProvider.isDarkModeOn),
    );
  }
}
