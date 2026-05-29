import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class MorningKhmerAuthUser {
  MorningKhmerAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MorningKhmerAuthUser> morningKhmerAuthUserSubject =
    BehaviorSubject.seeded(MorningKhmerAuthUser(loggedIn: false));
Stream<MorningKhmerAuthUser> morningKhmerAuthUserStream() =>
    morningKhmerAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
