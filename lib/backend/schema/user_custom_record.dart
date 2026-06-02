import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCustomRecord extends FirestoreRecord {
  UserCustomRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "employee_id" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  bool hasEmployeeId() => _employeeId != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "profile_image" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  bool hasProfileImage() => _profileImage != null;

  // "fcm_token" field.
  String? _fcmToken;
  String get fcmToken => _fcmToken ?? '';
  bool hasFcmToken() => _fcmToken != null;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  bool hasAccessToken() => _accessToken != null;

  void _initializeFields() {
    _employeeId = snapshotData['employee_id'] as String?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _profileImage = snapshotData['profile_image'] as String?;
    _fcmToken = snapshotData['fcm_token'] as String?;
    _accessToken = snapshotData['access_token'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserCustom');

  static Stream<UserCustomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCustomRecord.fromSnapshot(s));

  static Future<UserCustomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCustomRecord.fromSnapshot(s));

  static UserCustomRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCustomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCustomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCustomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCustomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCustomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCustomRecordData({
  String? employeeId,
  DateTime? createdDate,
  String? uid,
  String? email,
  String? phoneNumber,
  String? profileImage,
  String? fcmToken,
  String? accessToken,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'employee_id': employeeId,
      'created_date': createdDate,
      'uid': uid,
      'email': email,
      'phone_number': phoneNumber,
      'profile_image': profileImage,
      'fcm_token': fcmToken,
      'access_token': accessToken,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCustomRecordDocumentEquality implements Equality<UserCustomRecord> {
  const UserCustomRecordDocumentEquality();

  @override
  bool equals(UserCustomRecord? e1, UserCustomRecord? e2) {
    return e1?.employeeId == e2?.employeeId &&
        e1?.createdDate == e2?.createdDate &&
        e1?.uid == e2?.uid &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.profileImage == e2?.profileImage &&
        e1?.fcmToken == e2?.fcmToken &&
        e1?.accessToken == e2?.accessToken;
  }

  @override
  int hash(UserCustomRecord? e) => const ListEquality().hash([
        e?.employeeId,
        e?.createdDate,
        e?.uid,
        e?.email,
        e?.phoneNumber,
        e?.profileImage,
        e?.fcmToken,
        e?.accessToken
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCustomRecord;
}
