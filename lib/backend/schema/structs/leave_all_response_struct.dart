// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Full envelope of /api/leave/get-all-leave.
class LeaveAllResponseStruct extends FFFirebaseStruct {
  LeaveAllResponseStruct({
    /// LeaveAllResponse.code
    String? code,

    /// LeaveAllResponse.message
    String? message,

    /// LeaveAllResponse.results
    LeaveAllResultsStruct? results,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _code = code,
        _message = message,
        _results = results,
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

  // "results" field.
  LeaveAllResultsStruct? _results;
  LeaveAllResultsStruct get results => _results ?? LeaveAllResultsStruct();
  set results(LeaveAllResultsStruct? val) => _results = val;

  void updateResults(Function(LeaveAllResultsStruct) updateFn) {
    updateFn(_results ??= LeaveAllResultsStruct());
  }

  bool hasResults() => _results != null;

  static LeaveAllResponseStruct fromMap(Map<String, dynamic> data) =>
      LeaveAllResponseStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
        results: data['results'] is LeaveAllResultsStruct
            ? data['results']
            : LeaveAllResultsStruct.maybeFromMap(data['results']),
      );

  static LeaveAllResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveAllResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'message': _message,
        'results': _results?.toMap(),
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
        'results': serializeParam(
          _results,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static LeaveAllResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveAllResponseStruct(
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
        results: deserializeStructParam(
          data['results'],
          ParamType.DataStruct,
          false,
          structBuilder: LeaveAllResultsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveAllResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveAllResponseStruct &&
        code == other.code &&
        message == other.message &&
        results == other.results;
  }

  @override
  int get hashCode => const ListEquality().hash([code, message, results]);
}

LeaveAllResponseStruct createLeaveAllResponseStruct({
  String? code,
  String? message,
  LeaveAllResultsStruct? results,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveAllResponseStruct(
      code: code,
      message: message,
      results: results ?? (clearUnsetFields ? LeaveAllResultsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveAllResponseStruct? updateLeaveAllResponseStruct(
  LeaveAllResponseStruct? leaveAllResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveAllResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveAllResponseStructData(
  Map<String, dynamic> firestoreData,
  LeaveAllResponseStruct? leaveAllResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveAllResponse == null) {
    return;
  }
  if (leaveAllResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveAllResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveAllResponseData =
      getLeaveAllResponseFirestoreData(leaveAllResponse, forFieldValue);
  final nestedData =
      leaveAllResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveAllResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveAllResponseFirestoreData(
  LeaveAllResponseStruct? leaveAllResponse, [
  bool forFieldValue = false,
]) {
  if (leaveAllResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveAllResponse.toMap());

  // Handle nested data for "results" field.
  addLeaveAllResultsStructData(
    firestoreData,
    leaveAllResponse.hasResults() ? leaveAllResponse.results : null,
    'results',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(leaveAllResponse.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveAllResponseListFirestoreData(
  List<LeaveAllResponseStruct>? leaveAllResponses,
) =>
    leaveAllResponses
        ?.map((e) => getLeaveAllResponseFirestoreData(e, true))
        .toList() ??
    [];
