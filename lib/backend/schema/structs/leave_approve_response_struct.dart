// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Full envelope of /api/leave/get-list-approve.
class LeaveApproveResponseStruct extends FFFirebaseStruct {
  LeaveApproveResponseStruct({
    /// LeaveApproveResponse.code
    String? code,

    /// LeaveApproveResponse.message
    String? message,

    /// LeaveApproveResponse.results
    LeaveApproveResultsStruct? results,
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
  LeaveApproveResultsStruct? _results;
  LeaveApproveResultsStruct get results =>
      _results ?? LeaveApproveResultsStruct();
  set results(LeaveApproveResultsStruct? val) => _results = val;

  void updateResults(Function(LeaveApproveResultsStruct) updateFn) {
    updateFn(_results ??= LeaveApproveResultsStruct());
  }

  bool hasResults() => _results != null;

  static LeaveApproveResponseStruct fromMap(Map<String, dynamic> data) =>
      LeaveApproveResponseStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
        results: data['results'] is LeaveApproveResultsStruct
            ? data['results']
            : LeaveApproveResultsStruct.maybeFromMap(data['results']),
      );

  static LeaveApproveResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveApproveResponseStruct.fromMap(data.cast<String, dynamic>())
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

  static LeaveApproveResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveApproveResponseStruct(
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
          structBuilder: LeaveApproveResultsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveApproveResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveApproveResponseStruct &&
        code == other.code &&
        message == other.message &&
        results == other.results;
  }

  @override
  int get hashCode => const ListEquality().hash([code, message, results]);
}

LeaveApproveResponseStruct createLeaveApproveResponseStruct({
  String? code,
  String? message,
  LeaveApproveResultsStruct? results,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveApproveResponseStruct(
      code: code,
      message: message,
      results:
          results ?? (clearUnsetFields ? LeaveApproveResultsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveApproveResponseStruct? updateLeaveApproveResponseStruct(
  LeaveApproveResponseStruct? leaveApproveResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveApproveResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveApproveResponseStructData(
  Map<String, dynamic> firestoreData,
  LeaveApproveResponseStruct? leaveApproveResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveApproveResponse == null) {
    return;
  }
  if (leaveApproveResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveApproveResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveApproveResponseData =
      getLeaveApproveResponseFirestoreData(leaveApproveResponse, forFieldValue);
  final nestedData =
      leaveApproveResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      leaveApproveResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveApproveResponseFirestoreData(
  LeaveApproveResponseStruct? leaveApproveResponse, [
  bool forFieldValue = false,
]) {
  if (leaveApproveResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveApproveResponse.toMap());

  // Handle nested data for "results" field.
  addLeaveApproveResultsStructData(
    firestoreData,
    leaveApproveResponse.hasResults() ? leaveApproveResponse.results : null,
    'results',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(leaveApproveResponse.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveApproveResponseListFirestoreData(
  List<LeaveApproveResponseStruct>? leaveApproveResponses,
) =>
    leaveApproveResponses
        ?.map((e) => getLeaveApproveResponseFirestoreData(e, true))
        .toList() ??
    [];
