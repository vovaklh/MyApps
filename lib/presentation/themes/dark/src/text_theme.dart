part of '../dark_theme.dart';

class _DarkAppTextThemeData implements AppTextThemeData {
  const _DarkAppTextThemeData();

  @override
  TextStyle get test => _bodyText1.copyWith(
        color: _AppColors.white,
        fontWeight: FontWeight.w500,
      );
}
