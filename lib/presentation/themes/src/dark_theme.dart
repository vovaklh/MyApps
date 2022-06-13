part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    scaffoldBackgroundColor: AppColors.black,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.dark,
      ThemeTextStyles.dark,
    ],
  );
}
