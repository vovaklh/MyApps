import 'package:flutter/material.dart';

import '../app_theme.dart';

part 'src/color_theme.dart';
part 'src/text_theme.dart';
part 'src/theme_data.dart';
part 'src/constants.dart';

class DarkAppThemeData extends AppThemeData {
  DarkAppThemeData()
      : super(
          themeData: _createTheme(),
          textTheme: const _DarkAppTextThemeData(),
          colorTheme: const _DarkAppColorThemeData(),
        );
}
