part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color appContainerBackground;
  final Color appContainerShadow;
  final Color selectedLabel;
  final Color unselectedLabel;
  final Color coursorColor;
  final Color micIcon;

  const ThemeColors({
    required this.appContainerBackground,
    required this.appContainerShadow,
    required this.selectedLabel,
    required this.unselectedLabel,
    required this.coursorColor,
    required this.micIcon,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? appContainerBackground,
    Color? appContainerShadow,
    Color? selectedLabel,
    Color? unselectedLabel,
    Color? coursorColor,
    Color? micIcon,
  }) {
    return ThemeColors(
      appContainerBackground:
          appContainerBackground ?? this.appContainerBackground,
      appContainerShadow: appContainerShadow ?? this.appContainerShadow,
      selectedLabel: selectedLabel ?? this.selectedLabel,
      unselectedLabel: unselectedLabel ?? this.unselectedLabel,
      coursorColor: coursorColor ?? this.coursorColor,
      micIcon: micIcon ?? this.micIcon,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      appContainerBackground:
          Color.lerp(appContainerBackground, other.appContainerBackground, t)!,
      appContainerShadow:
          Color.lerp(appContainerShadow, other.appContainerShadow, t)!,
      selectedLabel: Color.lerp(selectedLabel, other.selectedLabel, t)!,
      unselectedLabel: Color.lerp(unselectedLabel, other.unselectedLabel, t)!,
      coursorColor: Color.lerp(coursorColor, other.coursorColor, t)!,
      micIcon: Color.lerp(micIcon, other.micIcon, t)!,
    );
  }

  static get light => ThemeColors(
        appContainerBackground: AppColors.white,
        appContainerShadow: AppColors.grey.withOpacity(0.5),
        selectedLabel: AppColors.darkestGrey,
        unselectedLabel: AppColors.darkestGrey.withOpacity(0.7),
        coursorColor: AppColors.pink,
        micIcon: AppColors.white,
      );

  // TODO : Change later
  static get dark => ThemeColors(
        appContainerBackground: AppColors.lightDark,
        appContainerShadow: AppColors.darkerGrey.withOpacity(0.2),
        selectedLabel: AppColors.darkestGrey,
        unselectedLabel: AppColors.darkestGrey.withOpacity(0.7),
        coursorColor: AppColors.pink,
        micIcon: AppColors.white,
      );
}
