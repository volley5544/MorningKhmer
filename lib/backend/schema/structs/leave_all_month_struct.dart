// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// One month bucket of decided leave requests.
class LeaveAllMonthStruct extends FFFirebaseStruct {
  LeaveAllMonthStruct({
    /// LeaveAllMonth.month
    String? month,

    /// LeaveAllMonth.name
    String? name,

    /// LeaveAllMonth.total
    String? total,

    /// LeaveAllMonth.list_date
    List<LeaveAllRowStruct>? listDate,
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
  List<LeaveAllRowStruct>? _listDate;
  List<LeaveAllRowStruct> get listDate => _listDate ?? const [];
  set listDate(List<LeaveAllRowStruct>? val) => _listDate = val;

  void updateListDate(Function(List<LeaveAllRowStruct>) updateFn) {
    updateFn(_listDate ??= []);
  }

  bool hasListDate() => _listDate != null;

  static LeaveAllMonthStruct fromMap(Map<String, dynamic> data) =>
      LeaveAllMonthStruct(
        month: data['month'] as String?,
        name: data['name'] as String?,
        total: data['total'] as String?,
        listDate: getStructList(
          data['list_date'],
          LeaveAllRowStruct.fromMap,
        ),
      );

  static LeaveAllMonthStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveAllMonthStruct.fromMap(data.cast<String, dynamic>())
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

  static LeaveAllMonthStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveAllMonthStruct(
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
        listDate: deserializeStructParam<LeaveAllRowStruct>(
          data['list_date'],
          ParamType.DataStruct,
          true,
          structBuilder: LeaveAllRowStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveAllMonthStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LeaveAllMonthStruct &&
        month == other.month &&
        name == other.name &&
        total == other.total &&
        listEquality.equals(listDate, other.listDate);
  }

  @override
  int get hashCode => const ListEquality().hash([month, name, total, listDate]);
}

LeaveAllMonthStruct createLeaveAllMonthStruct({
  String? month,
  String? name,
  String? total,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveAllMonthStruct(
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

LeaveAllMonthStruct? updateLeaveAllMonthStruct(
  LeaveAllMonthStruct? leaveAllMonth, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveAllMonth
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveAllMonthStructData(
  Map<String, dynamic> firestoreData,
  LeaveAllMonthStruct? leaveAllMonth,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveAllMonth == null) {
    return;
  }
  if (leaveAllMonth.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveAllMonth.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveAllMonthData =
      getLeaveAllMonthFirestoreData(leaveAllMonth, forFieldValue);
  final nestedData =
      leaveAllMonthData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveAllMonth.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveAllMonthFirestoreData(
  LeaveAllMonthStruct? leaveAllMonth, [
  bool forFieldValue = false,
]) {
  if (leaveAllMonth == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveAllMonth.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveAllMonth.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveAllMonthListFirestoreData(
  List<LeaveAllMonthStruct>? leaveAllMonths,
) =>
    leaveAllMonths
        ?.map((e) => getLeaveAllMonthFirestoreData(e, true))
        .toList() ??
    [];
