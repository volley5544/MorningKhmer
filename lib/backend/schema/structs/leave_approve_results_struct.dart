// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// results payload of /api/leave/get-list-approve.
class LeaveApproveResultsStruct extends FFFirebaseStruct {
  LeaveApproveResultsStruct({
    /// LeaveApproveResults.list_approve
    List<LeaveApprovalRowStruct>? listApprove,

    /// LeaveApproveResults.all_leave_id
    List<String>? allLeaveId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _listApprove = listApprove,
        _allLeaveId = allLeaveId,
        super(firestoreUtilData);

  // "list_approve" field.
  List<LeaveApprovalRowStruct>? _listApprove;
  List<LeaveApprovalRowStruct> get listApprove => _listApprove ?? const [];
  set listApprove(List<LeaveApprovalRowStruct>? val) => _listApprove = val;

  void updateListApprove(Function(List<LeaveApprovalRowStruct>) updateFn) {
    updateFn(_listApprove ??= []);
  }

  bool hasListApprove() => _listApprove != null;

  // "all_leave_id" field.
  List<String>? _allLeaveId;
  List<String> get allLeaveId => _allLeaveId ?? const [];
  set allLeaveId(List<String>? val) => _allLeaveId = val;

  void updateAllLeaveId(Function(List<String>) updateFn) {
    updateFn(_allLeaveId ??= []);
  }

  bool hasAllLeaveId() => _allLeaveId != null;

  static LeaveApproveResultsStruct fromMap(Map<String, dynamic> data) =>
      LeaveApproveResultsStruct(
        listApprove: getStructList(
          data['list_approve'],
          LeaveApprovalRowStruct.fromMap,
        ),
        allLeaveId: getDataList(data['all_leave_id']),
      );

  static LeaveApproveResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveApproveResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'list_approve': _listApprove?.map((e) => e.toMap()).toList(),
        'all_leave_id': _allLeaveId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'list_approve': serializeParam(
          _listApprove,
          ParamType.DataStruct,
          isList: true,
        ),
        'all_leave_id': serializeParam(
          _allLeaveId,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static LeaveApproveResultsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveApproveResultsStruct(
        listApprove: deserializeStructParam<LeaveApprovalRowStruct>(
          data['list_approve'],
          ParamType.DataStruct,
          true,
          structBuilder: LeaveApprovalRowStruct.fromSerializableMap,
        ),
        allLeaveId: deserializeParam<String>(
          data['all_leave_id'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'LeaveApproveResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LeaveApproveResultsStruct &&
        listEquality.equals(listApprove, other.listApprove) &&
        listEquality.equals(allLeaveId, other.allLeaveId);
  }

  @override
  int get hashCode => const ListEquality().hash([listApprove, allLeaveId]);
}

LeaveApproveResultsStruct createLeaveApproveResultsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveApproveResultsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveApproveResultsStruct? updateLeaveApproveResultsStruct(
  LeaveApproveResultsStruct? leaveApproveResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveApproveResults
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveApproveResultsStructData(
  Map<String, dynamic> firestoreData,
  LeaveApproveResultsStruct? leaveApproveResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveApproveResults == null) {
    return;
  }
  if (leaveApproveResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveApproveResults.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveApproveResultsData =
      getLeaveApproveResultsFirestoreData(leaveApproveResults, forFieldValue);
  final nestedData =
      leaveApproveResultsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      leaveApproveResults.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveApproveResultsFirestoreData(
  LeaveApproveResultsStruct? leaveApproveResults, [
  bool forFieldValue = false,
]) {
  if (leaveApproveResults == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveApproveResults.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveApproveResults.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveApproveResultsListFirestoreData(
  List<LeaveApproveResultsStruct>? leaveApproveResultss,
) =>
    leaveApproveResultss
        ?.map((e) => getLeaveApproveResultsFirestoreData(e, true))
        .toList() ??
    [];
