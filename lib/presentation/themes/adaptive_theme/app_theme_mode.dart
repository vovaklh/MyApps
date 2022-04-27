import 'package:my_apps/presentation/themes/dark/dark_theme.dart';
import 'package:my_apps/presentation/themes/app_theme.dart';
import 'package:my_apps/presentation/themes/light/light_theme.dart';

enum AppThemeMode {
  light,
  dark,
}

extension AppThemeModeExt on AppThemeMode {
  AppThemeData get theme {
    switch (this) {
      case AppThemeMode.light:
        return LightAppThemeData();
      case AppThemeMode.dark:
        return DarkAppThemeData();
    }
  }
}
