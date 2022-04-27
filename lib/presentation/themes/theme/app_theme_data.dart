part of '../app_theme.dart';

class AppThemeData {
  final ThemeData themeData;

  @protected
  final AppTextThemeData textTheme;

  @protected
  final AppColorThemeData colorTheme;

  AppThemeData({
    required this.themeData,
    required this.textTheme,
    required this.colorTheme,
  });
}
