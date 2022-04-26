import 'package:async_redux/async_redux.dart';
import 'package:device_apps/core/di/locator.dart';
import 'package:device_apps/data/datasources/local/shared_prefs.dart';
import 'package:device_apps/presentation/redux/app_state.dart';
import 'package:device_apps/presentation/themes/adaptive_theme/app_theme_mode.dart';

class SwitchThemeAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final currentThemeMode = state.themeState.themeMode;
    switch (currentThemeMode) {
      case AppThemeMode.light:
        await locator<SharedPrefs>().setThemeMode(AppThemeMode.dark);
        return state.copyWith.themeState(themeMode: AppThemeMode.dark);
      case AppThemeMode.dark:
        await locator<SharedPrefs>().setThemeMode(AppThemeMode.light);
        return state.copyWith.themeState(themeMode: AppThemeMode.light);
    }
  }
}
