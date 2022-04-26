import 'package:device_apps/presentation/themes/dark/dark_theme.dart';
import 'package:device_apps/presentation/themes/device_apps_theme.dart';
import 'package:device_apps/presentation/themes/light/light_theme.dart';

enum AppThemeMode {
  light,
  dark,
}

extension AppThemeModeExt on AppThemeMode {
  DeviceAppsThemeData get theme {
    switch (this) {
      case AppThemeMode.light:
        return LightDeviceAppsThemeData();
      case AppThemeMode.dark:
        return DarkDeviceAppsThemeData();
    }
  }
}
