// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// One month bucket of the caller's leave history.
class LeaveHistoryMonthStruct extends FFFirebaseStruct {
  LeaveHistoryMonthStruct({
    /// LeaveHistoryMonth.month
    String? month,

    /// LeaveHistoryMonth.name
    String? name,

    /// LeaveHistoryMonth.total
    String? total,

    /// LeaveHistoryMonth.list_date
    List<LeaveRequestRowStruct>? listDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _month = month,
        _name = name,
        _total = total,
        _listDate = listDate,
        super(firestoreUtilData);

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  set month(String? val) => _month = val;

  bool hasMonth() => _month != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "total" field.
  String? _total;
  String get total => _total ?? '';
  set total(String? val) => _total = val;

  bool hasTotal() => _total != null;

  // "list_date" field.
  List<LeaveRequestRowStruct>? _listDate;
  List<LeaveRequestRowStruct> get listDate => _listDate ?? const [];
  set listDate(List<LeaveRequestRowStruct>? val) => _listDate = val;

  void updateListDate(Function(List<LeaveRequestRowStruct>) updateFn) {
    updateFn(_listDate ??= []);
  }

  bool hasListDate() => _listDate != null;

  static LeaveHistoryMonthStruct fromMap(Map<String, dynamic> data) =>
      LeaveHistoryMonthStruct(
        month: data['month'] as String?,
        name: data['name'] as String?,
        total: data['total'] as String?,
        listDate: getStructList(
          data['list_date'],
          LeaveRequestRowStruct.fromMap,
        ),
      );

  static LeaveHistoryMonthStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveHistoryMonthStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'month': _month,
        'name': _name,
        'total': _total,
        'list_date': _listDate?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'month': serializeParam(
          _month,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'total': serializeParam(
          _total,
          ParamType.String,
        ),
        'list_date': serializeParam(
          _listDate,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LeaveHistoryMonthStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveHistoryMonthStruct(
        month: deserializeParam(
          data['month'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.String,
          false,
        ),
        listDate: deserializeStructParam<LeaveRequestRowStruct>(
          data['list_date'],
          ParamType.DataStruct,
          true,
          structBuilder: LeaveRequestRowStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveHistoryMonthStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LeaveHistoryMonthStruct &&
        month == other.month &&
        name == other.name &&
        total == other.total &&
        listEquality.equals(listDate, other.listDate);
  }

  @override
  int get hashCode => const ListEquality().hash([month, name, total, listDate]);
}

LeaveHistoryMonthStruct createLeaveHistoryMonthStruct({
  String? month,
  String? name,
  String? total,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveHistoryMonthStruct(
      month: month,
      name: name,
      total: total,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveHistoryMonthStruct? updateLeaveHistoryMonthStruct(
  LeaveHistoryMonthStruct? leaveHistoryMonth, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveHistoryMonth
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveHistoryMonthStructData(
  Map<String, dynamic> firestoreData,
  LeaveHistoryMonthStruct? leaveHistoryMonth,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveHistoryMonth == null) {
    return;
  }
  if (leaveHistoryMonth.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveHistoryMonth.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveHistoryMonthData =
      getLeaveHistoryMonthFirestoreData(leaveHistoryMonth, forFieldValue);
  final nestedData =
      leaveHistoryMonthData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveHistoryMonth.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveHistoryMonthFirestoreData(
  LeaveHistoryMonthStruct? leaveHistoryMonth, [
  bool forFieldValue = false,
]) {
  if (leaveHistoryMonth == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveHistoryMonth.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveHistoryMonth.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveHistoryMonthListFirestoreData(
  List<LeaveHistoryMonthStruct>? leaveHistoryMonths,
) =>
    leaveHistoryMonths
        ?.map((e) => getLeaveHistoryMonthFirestoreData(e, true))
        .toList() ??
    [];
