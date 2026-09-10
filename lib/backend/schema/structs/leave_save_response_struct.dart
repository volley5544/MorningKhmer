// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Full envelope of /api/leave/save.
class LeaveSaveResponseStruct extends FFFirebaseStruct {
  LeaveSaveResponseStruct({
    /// LeaveSaveResponse.code
    String? code,

    /// LeaveSaveResponse.message
    String? message,

    /// LeaveSaveResponse.results
    LeaveSaveResultsStruct? results,
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
  LeaveSaveResultsStruct? _results;
  LeaveSaveResultsStruct get results => _results ?? LeaveSaveResultsStruct();
  set results(LeaveSaveResultsStruct? val) => _results = val;

  void updateResults(Function(LeaveSaveResultsStruct) updateFn) {
    updateFn(_results ??= LeaveSaveResultsStruct());
  }

  bool hasResults() => _results != null;

  static LeaveSaveResponseStruct fromMap(Map<String, dynamic> data) =>
      LeaveSaveResponseStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
        results: data['results'] is LeaveSaveResultsStruct
            ? data['results']
            : LeaveSaveResultsStruct.maybeFromMap(data['results']),
      );

  static LeaveSaveResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveSaveResponseStruct.fromMap(data.cast<String, dynamic>())
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

  static LeaveSaveResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveSaveResponseStruct(
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
          structBuilder: LeaveSaveResultsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveSaveResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveSaveResponseStruct &&
        code == other.code &&
        message == other.message &&
        results == other.results;
  }

  @override
  int get hashCode => const ListEquality().hash([code, message, results]);
}

LeaveSaveResponseStruct createLeaveSaveResponseStruct({
  String? code,
  String? message,
  LeaveSaveResultsStruct? results,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveSaveResponseStruct(
      code: code,
      message: message,
      results: results ?? (clearUnsetFields ? LeaveSaveResultsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveSaveResponseStruct? updateLeaveSaveResponseStruct(
  LeaveSaveResponseStruct? leaveSaveResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveSaveResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveSaveResponseStructData(
  Map<String, dynamic> firestoreData,
  LeaveSaveResponseStruct? leaveSaveResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveSaveResponse == null) {
    return;
  }
  if (leaveSaveResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveSaveResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveSaveResponseData =
      getLeaveSaveResponseFirestoreData(leaveSaveResponse, forFieldValue);
  final nestedData =
      leaveSaveResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveSaveResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveSaveResponseFirestoreData(
  LeaveSaveResponseStruct? leaveSaveResponse, [
  bool forFieldValue = false,
]) {
  if (leaveSaveResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveSaveResponse.toMap());

  // Handle nested data for "results" field.
  addLeaveSaveResultsStructData(
    firestoreData,
    leaveSaveResponse.hasResults() ? leaveSaveResponse.results : null,
    'results',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(leaveSaveResponse.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveSaveResponseListFirestoreData(
  List<LeaveSaveResponseStruct>? leaveSaveResponses,
) =>
    leaveSaveResponses
        ?.map((e) => getLeaveSaveResponseFirestoreData(e, true))
        .toList() ??
    [];
