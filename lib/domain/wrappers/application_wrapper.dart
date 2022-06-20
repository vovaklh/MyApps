import 'package:device_apps/device_apps.dart';

class ApplicationWrapper {
  final ApplicationWithIcon application;
  final int size;

  ApplicationWrapper({
    required this.application,
    required this.size,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApplicationWrapper &&
        other.application == application &&
        other.size == size;
  }

  @override
  int get hashCode => application.hashCode ^ size.hashCode;
}
