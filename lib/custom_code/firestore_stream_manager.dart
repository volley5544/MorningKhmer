import 'dart:async';

import 'package:arun_sawad/app_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../auth/base_auth_user_provider.dart';
import '../backend/schema/user_custom_record.dart';
import '/app_events/index.dart';

class FirestoreStreamManager {
  FirestoreStreamManager._();
  static final FirestoreStreamManager instance = FirestoreStreamManager._();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// ----------------------------
  /// Stream Controllers
  /// ----------------------------

  final StreamController<QuerySnapshot?> _userProfileController =
      StreamController<QuerySnapshot?>.broadcast();
  final StreamController<QuerySnapshot?> _appConfigController =
      StreamController<QuerySnapshot?>.broadcast();

  /// Public streams

  Stream<QuerySnapshot?> get userProfileStream => _userProfileController.stream;
  Stream<QuerySnapshot?> get appConfigStream => _appConfigController.stream;

  /// ----------------------------
  /// Firestore subscriptions
  /// ----------------------------

  StreamSubscription<QuerySnapshot>? _userProfileSubscription;
  StreamSubscription<QuerySnapshot>? _appConfigSubscription;

  /// ----------------------------
  /// Start listeners
  /// ----------------------------

  void startListenUserProfile() {
    print('start listenProfile :');
    _startUserProfileListener();
  }

  void stopListenUserProfile() {
    print('stopped listenProfile :');
    _userProfileSubscription?.cancel();
  }

  void startListenVersion() {
    print('start listen Version :');
    _startAppConfigListener();
  }

  void stopListenVersion() {
    print('stopped listen Version :');
    _appConfigSubscription?.cancel();
  }

  /// ============================================================
  /// PRIVATE METHODS
  /// ============================================================

  void _startUserProfileListener() {
    /// Prevent duplicate listener
    _userProfileSubscription?.cancel();

    _userProfileSubscription = _firestore
        .collection('user_custom')
        .where('employee_id', isEqualTo: '${FFAppState().employeeID}')
        .snapshots()
        .listen((docSnapshot) async {
      if (docSnapshot.docs.isNotEmpty) {
        print('user_custom : ${docSnapshot.docs.first.data()!}');
        print('token : ${docSnapshot.docs.first.data()!['access_token']}');
        FFAppState().accessTokenFirestore =
            '${docSnapshot.docs.first.data()!['access_token']}';
        if (loggedIn) {
          if ('${docSnapshot.docs.first.data()!['access_token']}' != '' &&
              '${docSnapshot.docs.first.data()!['access_token']}' != 'null') {
            if ('${FFAppState().accessToken}' != '' &&
                '${FFAppState().accessToken}' != 'null' &&
                '${FFAppState().accessToken}' != 'access_token') {
              if (FFAppState().isProductionNew) {
                if ('${docSnapshot.docs.first.data()!['access_token']}' !=
                    '${FFAppState().accessToken}') {
                  print('Force Logout 5544');
                  // FFAppEventService.instance.triggerAppEvent(
                  //   ForceLogoutEventEvent(
                  //     timestamp: DateTime.now(),
                  //     waitForCompletion: true,
                  //     debugId: '3579',
                  //   ),
                  // );
                }
              }
            }
          } else {
            if ('${FFAppState().accessToken}' != '' &&
                '${FFAppState().accessToken}' != 'null' &&
                '${FFAppState().accessToken}' != 'access_token') {
              if ('${FFAppState().userRef!}' != '' &&
                  '${FFAppState().userRef!}' != 'null') {
                // update token in firebase
                await FFAppState().userRef!.update(createUserCustomRecordData(
                      accessToken: FFAppState().accessToken,
                    ));
              }
            }
          }
        }
      }
    });
  }

  void _startAppConfigListener() {
    /// Prevent duplicate listener
    _userProfileSubscription?.cancel();

    _userProfileSubscription = _firestore
        .collection('AppConfig')
        .doc('Djewnrk92oQa4g3EK76s')
        .snapshots()
        .listen((docSnapshot) async {
      print('queryVersion : ${docSnapshot.data()!}');
      // FFAppState().firestoreAppVersion = Platform.isAndroid
      //     ? docSnapshot.data()!['build_number_android']
      //     : Platform.isIOS
      //     ? docSnapshot.data()!['build_number_ios']
      //     : 0;

      // if (FFAppState().isProductionNew) {
      //   if (FFAppState().isInApp) {
      //     int appVersion = await getBuildNumber() ?? 0;
      //     print('app version : ${appVersion}');
      //     if (Platform.isAndroid) {
      //       print(
      //           'android build : ${docSnapshot.data()!['build_number_android']}');
      //
      //       docSnapshot.data()!['build_number_android'];
      //       if (int.parse('${appVersion}') <
      //           docSnapshot.data()!['build_number_android']) {
      //         if (docSnapshot.data()!['force_update'] &&
      //             '${FFAppState().employeeID}' != '31622' &&
      //             '${FFAppState().employeeID}' != '33511') {
      //           // FFAppEventService.instance.triggerAppEvent(
      //           //   CheckAppVersionEvent(
      //           //     timestamp: DateTime.now(),
      //           //     waitForCompletion: true,
      //           //     debugId: '5544',
      //           //   ),
      //           // );
      //         } else {
      //           // FFAppEventService.instance.triggerAppEvent(
      //           //   AlertAppUpdateEventEvent(
      //           //     timestamp: DateTime.now(),
      //           //     waitForCompletion: true,
      //           //     debugId: '5544',
      //           //   ),
      //           // );
      //         }
      //       }
      //     } else if (Platform.isIOS) {
      //       print('ios build : ${docSnapshot.data()!['build_number_ios']}');
      //       docSnapshot.data()!['build_number_ios'];
      //       if (int.parse('${appVersion}') <
      //           docSnapshot.data()!['build_number_ios']) {
      //         if (docSnapshot.data()!['force_update'] &&
      //             '${FFAppState().employeeID}' != '31622' &&
      //             '${FFAppState().employeeID}' != '33511') {
      //           FFAppEventService.instance.triggerAppEvent(
      //             CheckAppVersionEvent(
      //               timestamp: DateTime.now(),
      //               waitForCompletion: true,
      //               debugId: '5544',
      //             ),
      //           );
      //         } else {
      //           FFAppEventService.instance.triggerAppEvent(
      //             AlertAppUpdateEventEvent(
      //               timestamp: DateTime.now(),
      //               waitForCompletion: true,
      //               debugId: '5544',
      //             ),
      //           );
      //         }
      //       }
      //     } else {}
      //   }
      // }
    });
  }
}
