import 'package:async_redux/async_redux.dart';
import 'package:my_apps/core/di/locator.dart';
import 'package:my_apps/data/datasources/local/shared_prefs.dart';
import 'package:my_apps/l10n/app_locale.dart';
import 'package:my_apps/presentation/redux/app_state.dart';

class SetEnLocaleAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    await locator<SharedPrefs>().setLocale(AppLocale.en);
    return state.copyWith(appLocale: AppLocale.en);
  }
}
