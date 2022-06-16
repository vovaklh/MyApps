part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    scaffoldBackgroundColor: AppColors.lighterDark,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.dark,
      ThemeTextStyles.dark,
    ],
  );
}
