import 'package:flutter/material.dart';

import '../app_theme.dart';

part 'src/color_theme.dart';
part 'src/text_theme.dart';
part 'src/theme_data.dart';
part 'src/constants.dart';

class LightAppThemeData extends AppThemeData {
  LightAppThemeData()
      : super(
          themeData: _createTheme(),
          textTheme: const _LightAppTextThemeData(),
          colorTheme: const _LightAppColorThemeData(),
        );
}
