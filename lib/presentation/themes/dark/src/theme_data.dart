part of '../dark_theme.dart';

ThemeData _createTheme() {
  const textTheme = TextTheme(
    bodyText1: _bodyText1,
  );

  final theme = ThemeData(
    textTheme: textTheme,
    scaffoldBackgroundColor: Colors.black,
  );
  return theme;
}
