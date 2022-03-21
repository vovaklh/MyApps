import 'package:device_apps/presentation/themes/adaptive_theme/adaptive_theme_mode.dart';

abstract class AdaptiveThemeManager {
  AdaptiveThemeMode get mode;

  void setLight();

  void setDark();

  void setThemeMode(AdaptiveThemeMode mode);

  void switchTheme();
}
