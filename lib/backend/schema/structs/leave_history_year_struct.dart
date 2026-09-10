// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// One year bucket of the caller's leave history.
class LeaveHistoryYearStruct extends FFFirebaseStruct {
  LeaveHistoryYearStruct({
    /// LeaveHistoryYear.leave_list
    List<LeaveHistoryMonthStruct>? leaveList,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _leaveList = leaveList,
        super(firestoreUtilData);

  // "leave_list" field.
  List<LeaveHistoryMonthStruct>? _leaveList;
  List<LeaveHistoryMonthStruct> get leaveList => _leaveList ?? const [];
  set leaveList(List<LeaveHistoryMonthStruct>? val) => _leaveList = val;

  void updateLeaveList(Function(List<LeaveHistoryMonthStruct>) updateFn) {
    updateFn(_leaveList ??= []);
  }

  bool hasLeaveList() => _leaveList != null;

  static LeaveHistoryYearStruct fromMap(Map<String, dynamic> data) =>
      LeaveHistoryYearStruct(
        leaveList: getStructList(
          data['leave_list'],
          LeaveHistoryMonthStruct.fromMap,
        ),
      );

  static LeaveHistoryYearStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveHistoryYearStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'leave_list': _leaveList?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'leave_list': serializeParam(
          _leaveList,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LeaveHistoryYearStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveHistoryYearStruct(
        leaveList: deserializeStructParam<LeaveHistoryMonthStruct>(
          data['leave_list'],
          ParamType.DataStruct,
          true,
          structBuilder: LeaveHistoryMonthStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveHistoryYearStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LeaveHistoryYearStruct &&
        listEquality.equals(leaveList, other.leaveList);
  }

  @override
  int get hashCode => const ListEquality().hash([leaveList]);
}

LeaveHistoryYearStruct createLeaveHistoryYearStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveHistoryYearStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveHistoryYearStruct? updateLeaveHistoryYearStruct(
  LeaveHistoryYearStruct? leaveHistoryYear, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveHistoryYear
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveHistoryYearStructData(
  Map<String, dynamic> firestoreData,
  LeaveHistoryYearStruct? leaveHistoryYear,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveHistoryYear == null) {
    return;
  }
  if (leaveHistoryYear.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveHistoryYear.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveHistoryYearData =
      getLeaveHistoryYearFirestoreData(leaveHistoryYear, forFieldValue);
  final nestedData =
      leaveHistoryYearData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveHistoryYear.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveHistoryYearFirestoreData(
  LeaveHistoryYearStruct? leaveHistoryYear, [
  bool forFieldValue = false,
]) {
  if (leaveHistoryYear == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveHistoryYear.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveHistoryYear.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveHistoryYearListFirestoreData(
  List<LeaveHistoryYearStruct>? leaveHistoryYears,
) =>
    leaveHistoryYears
        ?.map((e) => getLeaveHistoryYearFirestoreData(e, true))
        .toList() ??
    [];
