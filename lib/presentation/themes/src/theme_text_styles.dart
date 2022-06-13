part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle appBarTitle;
  final TextStyle appTitle;
  final TextStyle appDescription;
  final TextStyle labelStyle;

  ThemeTextStyles({
    required this.appBarTitle,
    required this.appTitle,
    required this.appDescription,
    required this.labelStyle,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? appBarTitle,
    TextStyle? appTitle,
    TextStyle? appDescription,
    TextStyle? labelStyle,
  }) {
    return ThemeTextStyles(
      appBarTitle: appBarTitle ?? this.appBarTitle,
      appTitle: appTitle ?? this.appTitle,
      appDescription: appDescription ?? this.appDescription,
      labelStyle: labelStyle ?? this.labelStyle,
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
    );
  }

  static final light = ThemeTextStyles(
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
  );

  // TODO : Change later
  static final dark = ThemeTextStyles(
    appBarTitle: headline1.copyWith(
      color: AppColors.white,
      fontSize: 24,
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
  );
}
