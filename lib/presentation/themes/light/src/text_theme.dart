part of '../light_theme.dart';

class _LightDeviceAppsTextThemeData implements DeviceAppsTextThemeData {
  const _LightDeviceAppsTextThemeData();

  @override
  TextStyle get test => _bodyText1.copyWith(
        color: _AppColors.white,
        fontWeight: FontWeight.w500,
      );
}
