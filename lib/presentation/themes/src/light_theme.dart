part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    scaffoldBackgroundColor: AppColors.white,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light,
      ThemeTextStyles.light,
    ],
  );
}
