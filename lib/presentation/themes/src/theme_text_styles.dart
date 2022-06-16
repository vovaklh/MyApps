part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle appBarTitle;
  final TextStyle appTitle;
  final TextStyle appDescription;
  final TextStyle labelStyle;
  final TextStyle searchHint;
  final TextStyle searchInput;

  ThemeTextStyles({
    required this.appBarTitle,
    required this.appTitle,
    required this.appDescription,
    required this.labelStyle,
    required this.searchHint,
    required this.searchInput,
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
      appBarTitle: appBarTitle ?? this.appBarTitle,
      appTitle: appTitle ?? this.appTitle,
      appDescription: appDescription ?? this.appDescription,
      labelStyle: labelStyle ?? this.labelStyle,
      searchHint: searchHint ?? this.searchHint,
      searchInput: searchInput ?? this.searchInput,
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
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t)!,
      appTitle: TextStyle.lerp(appTitle, other.appTitle, t)!,
      appDescription: TextStyle.lerp(appDescription, other.appDescription, t)!,
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t)!,
      searchHint: TextStyle.lerp(searchHint, other.searchHint, t)!,
      searchInput: TextStyle.lerp(searchInput, other.searchInput, t)!,
    );
  }

  static get light => ThemeTextStyles(
        appBarTitle: headline1.copyWith(
          color: AppColors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
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
      );

  // TODO : Change later
  static get dark => ThemeTextStyles(
        appBarTitle: headline1.copyWith(
          color: AppColors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
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
          color: AppColors.white,
          fontSize: 18,
        ),
        searchInput: headline1.copyWith(
          fontSize: 18,
        ),
      );
}
