import 'package:fitbyte_app/src/redux/reducers/counter_reducer.dart';
import 'package:fitbyte_app/src/redux/states/app_state.dart';
import 'auth_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    isLoading: false,
    count: counterReducer(state.count, action),
    currentUser: authReducer(state.currentUser, action)
  );
}