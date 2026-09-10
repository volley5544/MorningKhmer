// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// Full envelope of /api/leave/save-status.
class LeaveStatusResponseStruct extends FFFirebaseStruct {
  LeaveStatusResponseStruct({
    /// LeaveStatusResponse.code
    String? code,

    /// LeaveStatusResponse.message
    String? message,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _code = code,
        _message = message,
        super(firestoreUtilData);

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static LeaveStatusResponseStruct fromMap(Map<String, dynamic> data) =>
      LeaveStatusResponseStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
      );

  static LeaveStatusResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveStatusResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeaveStatusResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveStatusResponseStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeaveStatusResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveStatusResponseStruct &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([code, message]);
}

LeaveStatusResponseStruct createLeaveStatusResponseStruct({
  String? code,
  String? message,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveStatusResponseStruct(
      code: code,
      message: message,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveStatusResponseStruct? updateLeaveStatusResponseStruct(
  LeaveStatusResponseStruct? leaveStatusResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveStatusResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveStatusResponseStructData(
  Map<String, dynamic> firestoreData,
  LeaveStatusResponseStruct? leaveStatusResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveStatusResponse == null) {
    return;
  }
  if (leaveStatusResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveStatusResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveStatusResponseData =
      getLeaveStatusResponseFirestoreData(leaveStatusResponse, forFieldValue);
  final nestedData =
      leaveStatusResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      leaveStatusResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveStatusResponseFirestoreData(
  LeaveStatusResponseStruct? leaveStatusResponse, [
  bool forFieldValue = false,
]) {
  if (leaveStatusResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveStatusResponse.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveStatusResponse.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveStatusResponseListFirestoreData(
  List<LeaveStatusResponseStruct>? leaveStatusResponses,
) =>
    leaveStatusResponses
        ?.map((e) => getLeaveStatusResponseFirestoreData(e, true))
        .toList() ??
    [];
