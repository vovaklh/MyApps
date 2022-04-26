import 'package:device_apps/presentation/redux/theme/models/theme_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required ThemeState themeState,
  }) = _AppState;

  factory AppState.initial() => AppState(
        themeState: ThemeState.initial(),
      );
}
