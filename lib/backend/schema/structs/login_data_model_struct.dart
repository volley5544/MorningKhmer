// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginDataModelStruct extends FFFirebaseStruct {
  LoginDataModelStruct({
    int? status,
    String? message,
    String? accessToken,
    String? tokenType,
    UserStruct? user,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _status = status,
        _message = message,
        _accessToken = accessToken,
        _tokenType = tokenType,
        _user = user,
        super(firestoreUtilData);

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "token_type" field.
  String? _tokenType;
  String get tokenType => _tokenType ?? '';
  set tokenType(String? val) => _tokenType = val;

  bool hasTokenType() => _tokenType != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(_user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  static LoginDataModelStruct fromMap(Map<String, dynamic> data) =>
      LoginDataModelStruct(
        status: castToType<int>(data['status']),
        message: data['message'] as String?,
        accessToken: data['access_token'] as String?,
        tokenType: data['token_type'] as String?,
        user: data['user'] is UserStruct
            ? data['user']
            : UserStruct.maybeFromMap(data['user']),
      );

  static LoginDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'message': _message,
        'access_token': _accessToken,
        'token_type': _tokenType,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'token_type': serializeParam(
          _tokenType,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static LoginDataModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginDataModelStruct(
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        tokenType: deserializeParam(
          data['token_type'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LoginDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginDataModelStruct &&
        status == other.status &&
        message == other.message &&
        accessToken == other.accessToken &&
        tokenType == other.tokenType &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([status, message, accessToken, tokenType, user]);
}

LoginDataModelStruct createLoginDataModelStruct({
  int? status,
  String? message,
  String? accessToken,
  String? tokenType,
  UserStruct? user,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LoginDataModelStruct(
      status: status,
      message: message,
      accessToken: accessToken,
      tokenType: tokenType,
      user: user ?? (clearUnsetFields ? UserStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LoginDataModelStruct? updateLoginDataModelStruct(
  LoginDataModelStruct? loginDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    loginDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLoginDataModelStructData(
  Map<String, dynamic> firestoreData,
  LoginDataModelStruct? loginDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (loginDataModel == null) {
    return;
  }
  if (loginDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && loginDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final loginDataModelData =
      getLoginDataModelFirestoreData(loginDataModel, forFieldValue);
  final nestedData =
      loginDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = loginDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLoginDataModelFirestoreData(
  LoginDataModelStruct? loginDataModel, [
  bool forFieldValue = false,
]) {
  if (loginDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(loginDataModel.toMap());

  // Handle nested data for "user" field.
  addUserStructData(
    firestoreData,
    loginDataModel.hasUser() ? loginDataModel.user : null,
    'user',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(loginDataModel.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLoginDataModelListFirestoreData(
  List<LoginDataModelStruct>? loginDataModels,
) =>
    loginDataModels
        ?.map((e) => getLoginDataModelFirestoreData(e, true))
        .toList() ??
    [];
