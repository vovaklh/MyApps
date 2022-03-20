import 'package:device_apps/presentation/themes/adaptive_theme/adaptive_theme.dart';
import 'package:device_apps/presentation/themes/dark/dark_theme.dart';
import 'package:device_apps/presentation/themes/light/light_theme.dart';
import 'package:device_apps/presentation/themes/device_apps_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:device_apps/l10n/l10n.dart';
import 'package:device_apps/presentation/pages/home_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      lightTheme: LightDeviceAppsThemeData(),
      darkTheme: DarkDeviceAppsThemeData(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Flutter Demo',
            supportedLocales: L10n.all,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            theme: DeviceAppsTheme.of(context).themeData,
            home: const HomePage(title: 'Flutter Demo Home Page'),
          );
        },
      ),
    );
  }
}
