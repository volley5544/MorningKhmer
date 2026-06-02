// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserFirestoreDataModelStruct extends FFFirebaseStruct {
  UserFirestoreDataModelStruct({
    DateTime? createdDate,
    String? email,
    String? employeeId,
    String? phoneNumber,
    String? profileImage,
    String? uid,
    String? fcmToken,
    String? accessToken,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _createdDate = createdDate,
        _email = email,
        _employeeId = employeeId,
        _phoneNumber = phoneNumber,
        _profileImage = profileImage,
        _uid = uid,
        _fcmToken = fcmToken,
        _accessToken = accessToken,
        super(firestoreUtilData);

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  set createdDate(DateTime? val) => _createdDate = val;

  bool hasCreatedDate() => _createdDate != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "employee_id" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  set employeeId(String? val) => _employeeId = val;

  bool hasEmployeeId() => _employeeId != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "profile_image" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  set profileImage(String? val) => _profileImage = val;

  bool hasProfileImage() => _profileImage != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "fcm_token" field.
  String? _fcmToken;
  String get fcmToken => _fcmToken ?? '';
  set fcmToken(String? val) => _fcmToken = val;

  bool hasFcmToken() => _fcmToken != null;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  static UserFirestoreDataModelStruct fromMap(Map<String, dynamic> data) =>
      UserFirestoreDataModelStruct(
        createdDate: data['created_date'] as DateTime?,
        email: data['email'] as String?,
        employeeId: data['employee_id'] as String?,
        phoneNumber: data['phone_number'] as String?,
        profileImage: data['profile_image'] as String?,
        uid: data['uid'] as String?,
        fcmToken: data['fcm_token'] as String?,
        accessToken: data['access_token'] as String?,
      );

  static UserFirestoreDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserFirestoreDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_date': _createdDate,
        'email': _email,
        'employee_id': _employeeId,
        'phone_number': _phoneNumber,
        'profile_image': _profileImage,
        'uid': _uid,
        'fcm_token': _fcmToken,
        'access_token': _accessToken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_date': serializeParam(
          _createdDate,
          ParamType.DateTime,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'employee_id': serializeParam(
          _employeeId,
          ParamType.String,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'profile_image': serializeParam(
          _profileImage,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'fcm_token': serializeParam(
          _fcmToken,
          ParamType.String,
        ),
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserFirestoreDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserFirestoreDataModelStruct(
        createdDate: deserializeParam(
          data['created_date'],
          ParamType.DateTime,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        employeeId: deserializeParam(
          data['employee_id'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        profileImage: deserializeParam(
          data['profile_image'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        fcmToken: deserializeParam(
          data['fcm_token'],
          ParamType.String,
          false,
        ),
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserFirestoreDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserFirestoreDataModelStruct &&
        createdDate == other.createdDate &&
        email == other.email &&
        employeeId == other.employeeId &&
        phoneNumber == other.phoneNumber &&
        profileImage == other.profileImage &&
        uid == other.uid &&
        fcmToken == other.fcmToken &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode => const ListEquality().hash([
        createdDate,
        email,
        employeeId,
        phoneNumber,
        profileImage,
        uid,
        fcmToken,
        accessToken
      ]);
}

UserFirestoreDataModelStruct createUserFirestoreDataModelStruct({
  DateTime? createdDate,
  String? email,
  String? employeeId,
  String? phoneNumber,
  String? profileImage,
  String? uid,
  String? fcmToken,
  String? accessToken,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserFirestoreDataModelStruct(
      createdDate: createdDate,
      email: email,
      employeeId: employeeId,
      phoneNumber: phoneNumber,
      profileImage: profileImage,
      uid: uid,
      fcmToken: fcmToken,
      accessToken: accessToken,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserFirestoreDataModelStruct? updateUserFirestoreDataModelStruct(
  UserFirestoreDataModelStruct? userFirestoreDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userFirestoreDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserFirestoreDataModelStructData(
  Map<String, dynamic> firestoreData,
  UserFirestoreDataModelStruct? userFirestoreDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userFirestoreDataModel == null) {
    return;
  }
  if (userFirestoreDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      userFirestoreDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userFirestoreDataModelData = getUserFirestoreDataModelFirestoreData(
      userFirestoreDataModel, forFieldValue);
  final nestedData =
      userFirestoreDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      userFirestoreDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreDataModelFirestoreData(
  UserFirestoreDataModelStruct? userFirestoreDataModel, [
  bool forFieldValue = false,
]) {
  if (userFirestoreDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userFirestoreDataModel.toMap());

  // Add any Firestore field values
  mapToFirestore(userFirestoreDataModel.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserFirestoreDataModelListFirestoreData(
  List<UserFirestoreDataModelStruct>? userFirestoreDataModels,
) =>
    userFirestoreDataModels
        ?.map((e) => getUserFirestoreDataModelFirestoreData(e, true))
        .toList() ??
    [];
