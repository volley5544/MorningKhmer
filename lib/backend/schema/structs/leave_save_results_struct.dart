// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// results payload of /api/leave/save.
class LeaveSaveResultsStruct extends FFFirebaseStruct {
  LeaveSaveResultsStruct({
    /// LeaveSaveResults.leave_id
    String? leaveId,

    /// LeaveSaveResults.leave_detail_id
    String? leaveDetailId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _leaveId = leaveId,
        _leaveDetailId = leaveDetailId,
        super(firestoreUtilData);

  // "leave_id" field.
  String? _leaveId;
  String get leaveId => _leaveId ?? '';
  set leaveId(String? val) => _leaveId = val;

  bool hasLeaveId() => _leaveId != null;

  // "leave_detail_id" field.
  String? _leaveDetailId;
  String get leaveDetailId => _leaveDetailId ?? '';
  set leaveDetailId(String? val) => _leaveDetailId = val;

  bool hasLeaveDetailId() => _leaveDetailId != null;

  static LeaveSaveResultsStruct fromMap(Map<String, dynamic> data) =>
      LeaveSaveResultsStruct(
        leaveId: data['leave_id'] as String?,
        leaveDetailId: data['leave_detail_id'] as String?,
      );

  static LeaveSaveResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveSaveResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'leave_id': _leaveId,
        'leave_detail_id': _leaveDetailId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'leave_id': serializeParam(
          _leaveId,
          ParamType.String,
        ),
        'leave_detail_id': serializeParam(
          _leaveDetailId,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeaveSaveResultsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveSaveResultsStruct(
        leaveId: deserializeParam(
          data['leave_id'],
          ParamType.String,
          false,
        ),
        leaveDetailId: deserializeParam(
          data['leave_detail_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeaveSaveResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveSaveResultsStruct &&
        leaveId == other.leaveId &&
        leaveDetailId == other.leaveDetailId;
  }

  @override
  int get hashCode => const ListEquality().hash([leaveId, leaveDetailId]);
}

LeaveSaveResultsStruct createLeaveSaveResultsStruct({
  String? leaveId,
  String? leaveDetailId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveSaveResultsStruct(
      leaveId: leaveId,
      leaveDetailId: leaveDetailId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveSaveResultsStruct? updateLeaveSaveResultsStruct(
  LeaveSaveResultsStruct? leaveSaveResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveSaveResults
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveSaveResultsStructData(
  Map<String, dynamic> firestoreData,
  LeaveSaveResultsStruct? leaveSaveResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveSaveResults == null) {
    return;
  }
  if (leaveSaveResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveSaveResults.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveSaveResultsData =
      getLeaveSaveResultsFirestoreData(leaveSaveResults, forFieldValue);
  final nestedData =
      leaveSaveResultsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveSaveResults.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveSaveResultsFirestoreData(
  LeaveSaveResultsStruct? leaveSaveResults, [
  bool forFieldValue = false,
]) {
  if (leaveSaveResults == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveSaveResults.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveSaveResults.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveSaveResultsListFirestoreData(
  List<LeaveSaveResultsStruct>? leaveSaveResultss,
) =>
    leaveSaveResultss
        ?.map((e) => getLeaveSaveResultsFirestoreData(e, true))
        .toList() ??
    [];
