part of 'apps_bloc.dart';

@freezed
class AppsState with _$AppsState {
  const factory AppsState.initial() = _AppsInitialState;
  const factory AppsState.loading() = _AppsLoadingState;
  const factory AppsState.error(Object exception) = _AppsErrorState;
  const factory AppsState.success(
    List<Application> installedApps,
    List<Application> systemApps,
  ) = _AppsSuccessState;
}
