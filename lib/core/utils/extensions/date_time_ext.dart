import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String get formattedDate => DateFormat('yyyy-MM-dd').format(this);
}
