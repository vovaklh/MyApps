import 'package:async_redux/async_redux.dart';
import 'app_state.dart';

Store<AppState> newStore() {
  return Store<AppState>(initialState: AppState.initial());
}
