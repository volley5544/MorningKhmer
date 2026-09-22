// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// results payload of /api/leave/get-list.
class LeaveListResultsStruct extends FFFirebaseStruct {
  LeaveListResultsStruct({
    /// LeaveListResults.total
    dynamic total,

    /// LeaveListResults.leave_list
    dynamic leaveList,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _total = total,
        _leaveList = leaveList,
        super(firestoreUtilData);

  // "total" field.
  dynamic _total;
  dynamic get total => _total;
  set total(dynamic val) => _total = val;

  bool hasTotal() => _total != null;

  // "leave_list" field.
  dynamic _leaveList;
  dynamic get leaveList => _leaveList;
  set leaveList(dynamic val) => _leaveList = val;

  bool hasLeaveList() => _leaveList != null;

  static LeaveListResultsStruct fromMap(Map<String, dynamic> data) =>
      LeaveListResultsStruct(
        total: data['total'] as dynamic,
        leaveList: data['leave_list'] as dynamic,
      );

  static LeaveListResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveListResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total': _total,
        'leave_list': _leaveList,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total': serializeParam(
          _total,
          ParamType.JSON,
        ),
        'leave_list': serializeParam(
          _leaveList,
          ParamType.JSON,
        ),
      }.withoutNulls;

  static LeaveListResultsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveListResultsStruct(
        total: deserializeParam(
          data['total'],
          ParamType.JSON,
          false,
        ),
        leaveList: deserializeParam(
          data['leave_list'],
          ParamType.JSON,
          false,
        ),
      );

  @override
  String toString() => 'LeaveListResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveListResultsStruct &&
        total == other.total &&
        leaveList == other.leaveList;
  }

  @override
  int get hashCode => const ListEquality().hash([total, leaveList]);
}

LeaveListResultsStruct createLeaveListResultsStruct({
  dynamic total,
  dynamic leaveList,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveListResultsStruct(
      total: total,
      leaveList: leaveList,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveListResultsStruct? updateLeaveListResultsStruct(
  LeaveListResultsStruct? leaveListResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveListResults
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveListResultsStructData(
  Map<String, dynamic> firestoreData,
  LeaveListResultsStruct? leaveListResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveListResults == null) {
    return;
  }
  if (leaveListResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveListResults.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveListResultsData =
      getLeaveListResultsFirestoreData(leaveListResults, forFieldValue);
  final nestedData =
      leaveListResultsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveListResults.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveListResultsFirestoreData(
  LeaveListResultsStruct? leaveListResults, [
  bool forFieldValue = false,
]) {
  if (leaveListResults == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveListResults.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveListResults.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveListResultsListFirestoreData(
  List<LeaveListResultsStruct>? leaveListResultss,
) =>
    leaveListResultss
        ?.map((e) => getLeaveListResultsFirestoreData(e, true))
        .toList() ??
    [];
