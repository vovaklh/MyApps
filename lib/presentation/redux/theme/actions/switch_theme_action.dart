import 'package:async_redux/async_redux.dart';
import 'package:my_apps/core/di/locator.dart';
import 'package:my_apps/data/datasources/local/shared_prefs.dart';
import 'package:my_apps/presentation/redux/app_state.dart';
import 'package:my_apps/presentation/themes/adaptive_theme/app_theme_mode.dart';

class SwitchThemeAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final currentThemeMode = state.themeMode;
    switch (currentThemeMode) {
      case AppThemeMode.light:
        await locator<SharedPrefs>().setThemeMode(AppThemeMode.dark);
        return state.copyWith(themeMode: AppThemeMode.dark);
      case AppThemeMode.dark:
        await locator<SharedPrefs>().setThemeMode(AppThemeMode.light);
        return state.copyWith(themeMode: AppThemeMode.light);
    }
  }
}
