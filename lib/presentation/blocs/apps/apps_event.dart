part of 'apps_bloc.dart';

@freezed
class AppsEvent with _$AppsEvent {
  const factory AppsEvent.getApps() = GetAppsEvent;
}
