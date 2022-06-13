import 'dart:math';

extension StringExt on String {
  String maxLength(int maxLength) => substring(0, min(length, maxLength));
}
