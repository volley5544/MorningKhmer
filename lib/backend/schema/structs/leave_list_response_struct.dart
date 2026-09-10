// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Full envelope of /api/leave/get-list.
class LeaveListResponseStruct extends FFFirebaseStruct {
  LeaveListResponseStruct({
    /// LeaveListResponse.code
    String? code,

    /// LeaveListResponse.message
    String? message,

    /// LeaveListResponse.results
    LeaveListResultsStruct? results,
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
  LeaveListResultsStruct? _results;
  LeaveListResultsStruct get results => _results ?? LeaveListResultsStruct();
  set results(LeaveListResultsStruct? val) => _results = val;

  void updateResults(Function(LeaveListResultsStruct) updateFn) {
    updateFn(_results ??= LeaveListResultsStruct());
  }

  bool hasResults() => _results != null;

  static LeaveListResponseStruct fromMap(Map<String, dynamic> data) =>
      LeaveListResponseStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
        results: data['results'] is LeaveListResultsStruct
            ? data['results']
            : LeaveListResultsStruct.maybeFromMap(data['results']),
      );

  static LeaveListResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveListResponseStruct.fromMap(data.cast<String, dynamic>())
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

  static LeaveListResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveListResponseStruct(
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
          structBuilder: LeaveListResultsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveListResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveListResponseStruct &&
        code == other.code &&
        message == other.message &&
        results == other.results;
  }

  @override
  int get hashCode => const ListEquality().hash([code, message, results]);
}

LeaveListResponseStruct createLeaveListResponseStruct({
  String? code,
  String? message,
  LeaveListResultsStruct? results,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveListResponseStruct(
      code: code,
      message: message,
      results: results ?? (clearUnsetFields ? LeaveListResultsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveListResponseStruct? updateLeaveListResponseStruct(
  LeaveListResponseStruct? leaveListResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveListResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveListResponseStructData(
  Map<String, dynamic> firestoreData,
  LeaveListResponseStruct? leaveListResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveListResponse == null) {
    return;
  }
  if (leaveListResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveListResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveListResponseData =
      getLeaveListResponseFirestoreData(leaveListResponse, forFieldValue);
  final nestedData =
      leaveListResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveListResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveListResponseFirestoreData(
  LeaveListResponseStruct? leaveListResponse, [
  bool forFieldValue = false,
]) {
  if (leaveListResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveListResponse.toMap());

  // Handle nested data for "results" field.
  addLeaveListResultsStructData(
    firestoreData,
    leaveListResponse.hasResults() ? leaveListResponse.results : null,
    'results',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(leaveListResponse.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveListResponseListFirestoreData(
  List<LeaveListResponseStruct>? leaveListResponses,
) =>
    leaveListResponses
        ?.map((e) => getLeaveListResponseFirestoreData(e, true))
        .toList() ??
    [];
