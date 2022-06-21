part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    scaffoldBackgroundColor: AppColors.lighterDark,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.dark,
      ThemeTextStyles.dark,
    ],
    appBarTheme: AppBarTheme(
      color: AppColors.lightDark,
      iconTheme: const IconThemeData(color: AppColors.lightGrey),
      titleTextStyle: headline1.copyWith(
        color: AppColors.grey,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.lightDark,
      titleTextStyle: headline1.copyWith(
        color: AppColors.darkestGrey,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      contentTextStyle: headline1.copyWith(
        color: AppColors.darkestGrey,
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.lighterDark,
      textStyle: headline1.copyWith(
        color: AppColors.lighterGrey,
      ),
    ),
  );
}
