import 'package:flutter/material.dart';

part 'theme/app_color_theme_data.dart';
part 'theme/app_text_theme_data.dart';
part 'theme/app_theme_data.dart';

class AppTheme extends InheritedWidget {
  final AppThemeData theme;

  const AppTheme({
    Key? key,
    required this.theme,
    required Widget child,
  }) : super(key: key, child: child);

  static AppThemeData of(BuildContext context) => maybeOf(context)!;

  static AppThemeData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppTheme>()?.theme;
  }

  static AppTextThemeData text(BuildContext context) => of(context).textTheme;
  static AppColorThemeData color(BuildContext context) =>
      of(context).colorTheme;

  @override
  bool updateShouldNotify(AppTheme oldWidget) {
    return theme != oldWidget.theme;
  }
}
