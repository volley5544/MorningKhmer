// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// results payload of /api/leave/get-list.
class LeaveListResultsStruct extends FFFirebaseStruct {
  LeaveListResultsStruct({
    /// LeaveListResults.total
    String? total,

    /// LeaveListResults.leave_list
    List<LeaveTypeBalanceStruct>? leaveList,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _total = total,
        _leaveList = leaveList,
        super(firestoreUtilData);

  // "total" field.
  String? _total;
  String get total => _total ?? '';
  set total(String? val) => _total = val;

  bool hasTotal() => _total != null;

  // "leave_list" field.
  List<LeaveTypeBalanceStruct>? _leaveList;
  List<LeaveTypeBalanceStruct> get leaveList => _leaveList ?? const [];
  set leaveList(List<LeaveTypeBalanceStruct>? val) => _leaveList = val;

  void updateLeaveList(Function(List<LeaveTypeBalanceStruct>) updateFn) {
    updateFn(_leaveList ??= []);
  }

  bool hasLeaveList() => _leaveList != null;

  static LeaveListResultsStruct fromMap(Map<String, dynamic> data) =>
      LeaveListResultsStruct(
        total: data['total'] as String?,
        leaveList: getStructList(
          data['leave_list'],
          LeaveTypeBalanceStruct.fromMap,
        ),
      );

  static LeaveListResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveListResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total': _total,
        'leave_list': _leaveList?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total': serializeParam(
          _total,
          ParamType.String,
        ),
        'leave_list': serializeParam(
          _leaveList,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LeaveListResultsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveListResultsStruct(
        total: deserializeParam(
          data['total'],
          ParamType.String,
          false,
        ),
        leaveList: deserializeStructParam<LeaveTypeBalanceStruct>(
          data['leave_list'],
          ParamType.DataStruct,
          true,
          structBuilder: LeaveTypeBalanceStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveListResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LeaveListResultsStruct &&
        total == other.total &&
        listEquality.equals(leaveList, other.leaveList);
  }

  @override
  int get hashCode => const ListEquality().hash([total, leaveList]);
}

LeaveListResultsStruct createLeaveListResultsStruct({
  String? total,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveListResultsStruct(
      total: total,
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
