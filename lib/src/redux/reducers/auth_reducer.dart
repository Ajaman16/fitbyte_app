import 'package:fitbyte_app/src/redux/actions/auth_actions.dart';
import 'package:redux/redux.dart';
import 'package:firebase_auth/firebase_auth.dart';

final authReducer = combineReducers<FirebaseUser>([
  // create a reducer binding for each possible reducer--
  // generally thered be one for each possible action a user
  // will take.
  // We'll pass in what a method, which takes a piece of
  // application state and an action.
  // In this case, auth methods take a user as the piece
  // of state
  //
  new TypedReducer<FirebaseUser, LogInSuccessful>(_logIn),
  new TypedReducer<FirebaseUser, LogOut>(_logOut),
]);


FirebaseUser _logIn(FirebaseUser user, action) {
  return action.user;
}

Null _logOut(FirebaseUser user, action) {
  return null;
}