part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color appContainerBackground;
  final Color appContainerShadow;
  final Color selectedLabel;
  final Color unselectedLabel;

  const ThemeColors({
    required this.appContainerBackground,
    required this.appContainerShadow,
    required this.selectedLabel,
    required this.unselectedLabel,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? appContainerBackground,
    Color? appContainerShadow,
    Color? selectedLabel,
    Color? unselectedLabel,
  }) {
    return ThemeColors(
      appContainerBackground:
          appContainerBackground ?? this.appContainerBackground,
      appContainerShadow: appContainerShadow ?? this.appContainerShadow,
      selectedLabel: selectedLabel ?? this.selectedLabel,
      unselectedLabel: unselectedLabel ?? this.unselectedLabel,
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
    );
  }

  static final light = ThemeColors(
    appContainerBackground: AppColors.white,
    appContainerShadow: AppColors.grey.withOpacity(0.5),
    selectedLabel: AppColors.darkestGrey,
    unselectedLabel: AppColors.darkestGrey.withOpacity(0.7),
  );

  // TODO : Change later
  static final dark = ThemeColors(
    appContainerBackground: AppColors.white,
    appContainerShadow: AppColors.grey.withOpacity(0.5),
    selectedLabel: AppColors.darkestGrey,
    unselectedLabel: AppColors.darkestGrey.withOpacity(0.7),
  );
}
