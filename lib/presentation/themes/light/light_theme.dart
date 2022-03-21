import 'package:flutter/material.dart';

import '../device_apps_theme.dart';

part 'src/color_theme.dart';
part 'src/text_theme.dart';
part 'src/theme_data.dart';
part 'src/constants.dart';

class LightDeviceAppsThemeData extends DeviceAppsThemeData {
  LightDeviceAppsThemeData()
      : super(
          themeData: _createTheme(),
          textTheme: const _LightDeviceAppsTextThemeData(),
          colorTheme: const _LightDeviceAppsColorThemeData(),
        );
}
