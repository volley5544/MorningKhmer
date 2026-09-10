// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Full envelope of /api/leave/history.
class LeaveHistoryResponseStruct extends FFFirebaseStruct {
  LeaveHistoryResponseStruct({
    /// LeaveHistoryResponse.code
    String? code,

    /// LeaveHistoryResponse.message
    String? message,

    /// LeaveHistoryResponse.results
    LeaveHistoryResultsStruct? results,
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
  LeaveHistoryResultsStruct? _results;
  LeaveHistoryResultsStruct get results =>
      _results ?? LeaveHistoryResultsStruct();
  set results(LeaveHistoryResultsStruct? val) => _results = val;

  void updateResults(Function(LeaveHistoryResultsStruct) updateFn) {
    updateFn(_results ??= LeaveHistoryResultsStruct());
  }

  bool hasResults() => _results != null;

  static LeaveHistoryResponseStruct fromMap(Map<String, dynamic> data) =>
      LeaveHistoryResponseStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
        results: data['results'] is LeaveHistoryResultsStruct
            ? data['results']
            : LeaveHistoryResultsStruct.maybeFromMap(data['results']),
      );

  static LeaveHistoryResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveHistoryResponseStruct.fromMap(data.cast<String, dynamic>())
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

  static LeaveHistoryResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveHistoryResponseStruct(
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
          structBuilder: LeaveHistoryResultsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveHistoryResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveHistoryResponseStruct &&
        code == other.code &&
        message == other.message &&
        results == other.results;
  }

  @override
  int get hashCode => const ListEquality().hash([code, message, results]);
}

LeaveHistoryResponseStruct createLeaveHistoryResponseStruct({
  String? code,
  String? message,
  LeaveHistoryResultsStruct? results,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveHistoryResponseStruct(
      code: code,
      message: message,
      results:
          results ?? (clearUnsetFields ? LeaveHistoryResultsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveHistoryResponseStruct? updateLeaveHistoryResponseStruct(
  LeaveHistoryResponseStruct? leaveHistoryResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveHistoryResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveHistoryResponseStructData(
  Map<String, dynamic> firestoreData,
  LeaveHistoryResponseStruct? leaveHistoryResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveHistoryResponse == null) {
    return;
  }
  if (leaveHistoryResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveHistoryResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveHistoryResponseData =
      getLeaveHistoryResponseFirestoreData(leaveHistoryResponse, forFieldValue);
  final nestedData =
      leaveHistoryResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      leaveHistoryResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveHistoryResponseFirestoreData(
  LeaveHistoryResponseStruct? leaveHistoryResponse, [
  bool forFieldValue = false,
]) {
  if (leaveHistoryResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveHistoryResponse.toMap());

  // Handle nested data for "results" field.
  addLeaveHistoryResultsStructData(
    firestoreData,
    leaveHistoryResponse.hasResults() ? leaveHistoryResponse.results : null,
    'results',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(leaveHistoryResponse.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveHistoryResponseListFirestoreData(
  List<LeaveHistoryResponseStruct>? leaveHistoryResponses,
) =>
    leaveHistoryResponses
        ?.map((e) => getLeaveHistoryResponseFirestoreData(e, true))
        .toList() ??
    [];
