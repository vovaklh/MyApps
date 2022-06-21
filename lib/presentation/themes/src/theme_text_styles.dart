part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle appTitle;
  final TextStyle appDescription;
  final TextStyle labelStyle;
  final TextStyle searchHint;
  final TextStyle searchInput;
  final TextStyle settingsDialogLanguage;

  ThemeTextStyles({
    required this.appTitle,
    required this.appDescription,
    required this.labelStyle,
    required this.searchHint,
    required this.searchInput,
    required this.settingsDialogLanguage,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? appBarTitle,
    TextStyle? appTitle,
    TextStyle? appDescription,
    TextStyle? labelStyle,
    TextStyle? searchHint,
    TextStyle? searchInput,
  }) {
    return ThemeTextStyles(
      appTitle: appTitle ?? this.appTitle,
      appDescription: appDescription ?? this.appDescription,
      labelStyle: labelStyle ?? this.labelStyle,
      searchHint: searchHint ?? this.searchHint,
      searchInput: searchInput ?? this.searchInput,
      settingsDialogLanguage:
          settingsDialogLanguage ?? this.settingsDialogLanguage,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      appTitle: TextStyle.lerp(appTitle, other.appTitle, t)!,
      appDescription: TextStyle.lerp(appDescription, other.appDescription, t)!,
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t)!,
      searchHint: TextStyle.lerp(searchHint, other.searchHint, t)!,
      searchInput: TextStyle.lerp(searchInput, other.searchInput, t)!,
      settingsDialogLanguage: TextStyle.lerp(
          settingsDialogLanguage, other.settingsDialogLanguage, t)!,
    );
  }

  static get light => ThemeTextStyles(
        appTitle: headline1.copyWith(
          color: AppColors.darkerGrey,
          fontWeight: FontWeight.w700,
        ),
        appDescription: headline3.copyWith(
          color: AppColors.darkerGrey,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: headline1.copyWith(
          fontWeight: FontWeight.w500,
        ),
        searchHint: headline1.copyWith(
          color: AppColors.white,
          fontSize: 18,
        ),
        searchInput: headline1.copyWith(
          fontSize: 18,
        ),
        settingsDialogLanguage: headline2.copyWith(
          color: AppColors.black,
        ),
      );

  static get dark => ThemeTextStyles(
        appTitle: headline1.copyWith(
          color: AppColors.lighterGrey,
          fontWeight: FontWeight.w700,
        ),
        appDescription: headline3.copyWith(
          color: AppColors.lightGrey,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: headline1.copyWith(
          fontWeight: FontWeight.w500,
        ),
        searchHint: headline1.copyWith(
          color: AppColors.lighterGrey,
          fontSize: 18,
        ),
        searchInput: headline1.copyWith(
          fontSize: 18,
          color: AppColors.grey,
        ),
        settingsDialogLanguage: headline2.copyWith(
          color: AppColors.grey,
        ),
      );
}
