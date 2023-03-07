import 'package:admin_dashboard/providers/path_provider.dart';
import 'package:admin_dashboard/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// global providers
class ProviderScope extends StatelessWidget {
  const ProviderScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PathProvider>(
          create: (context) => PathProvider(),
        ),
        ChangeNotifierProvider<SettingsProvider>(
          create: (context) => SettingsProvider(),
        ),
      ],
      child: child,
    );
  }
}
