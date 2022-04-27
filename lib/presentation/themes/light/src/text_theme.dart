part of '../light_theme.dart';

class _LightAppTextThemeData implements AppTextThemeData {
  const _LightAppTextThemeData();

  @override
  TextStyle get test => _bodyText1.copyWith(
        color: _AppColors.white,
        fontWeight: FontWeight.w500,
      );
}
