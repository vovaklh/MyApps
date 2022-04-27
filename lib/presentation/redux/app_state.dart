import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_apps/l10n/app_locale.dart';
import 'package:my_apps/presentation/themes/adaptive_theme/app_theme_mode.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required AppThemeMode themeMode,
    required AppLocale appLocale,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        themeMode: AppThemeMode.light,
        appLocale: AppLocale.en,
      );
}
