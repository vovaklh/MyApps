part of '../dark_theme.dart';

class _DarkDeviceAppsTextThemeData implements DeviceAppsTextThemeData {
  const _DarkDeviceAppsTextThemeData();

  @override
  TextStyle get test => _bodyText1.copyWith(
        color: _AppColors.white,
        fontWeight: FontWeight.w500,
      );
}
