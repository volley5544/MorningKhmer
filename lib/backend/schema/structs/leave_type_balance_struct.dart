// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// One leave type with its per-year balances.
class LeaveTypeBalanceStruct extends FFFirebaseStruct {
  LeaveTypeBalanceStruct({
    /// LeaveTypeBalance.leave_type
    String? leaveType,

    /// LeaveTypeBalance.name
    String? name,

    /// LeaveTypeBalance.icon
    String? icon,

    /// LeaveTypeBalance.color
    String? color,

    /// LeaveTypeBalance.leave_period
    List<LeavePeriodOptionStruct>? leavePeriod,

    /// LeaveTypeBalance.current_year
    LeaveYearQuotaStruct? currentYear,

    /// LeaveTypeBalance.next_year
    LeaveYearQuotaStruct? nextYear,

    /// LeaveTypeBalance.previous_year
    LeaveYearQuotaStruct? previousYear,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _leaveType = leaveType,
        _name = name,
        _icon = icon,
        _color = color,
        _leavePeriod = leavePeriod,
        _currentYear = currentYear,
        _nextYear = nextYear,
        _previousYear = previousYear,
        super(firestoreUtilData);

  // "leave_type" field.
  String? _leaveType;
  String get leaveType => _leaveType ?? '';
  set leaveType(String? val) => _leaveType = val;

  bool hasLeaveType() => _leaveType != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  set color(String? val) => _color = val;

  bool hasColor() => _color != null;

  // "leave_period" field.
  List<LeavePeriodOptionStruct>? _leavePeriod;
  List<LeavePeriodOptionStruct> get leavePeriod => _leavePeriod ?? const [];
  set leavePeriod(List<LeavePeriodOptionStruct>? val) => _leavePeriod = val;

  void updateLeavePeriod(Function(List<LeavePeriodOptionStruct>) updateFn) {
    updateFn(_leavePeriod ??= []);
  }

  bool hasLeavePeriod() => _leavePeriod != null;

  // "current_year" field.
  LeaveYearQuotaStruct? _currentYear;
  LeaveYearQuotaStruct get currentYear =>
      _currentYear ?? LeaveYearQuotaStruct();
  set currentYear(LeaveYearQuotaStruct? val) => _currentYear = val;

  void updateCurrentYear(Function(LeaveYearQuotaStruct) updateFn) {
    updateFn(_currentYear ??= LeaveYearQuotaStruct());
  }

  bool hasCurrentYear() => _currentYear != null;

  // "next_year" field.
  LeaveYearQuotaStruct? _nextYear;
  LeaveYearQuotaStruct get nextYear => _nextYear ?? LeaveYearQuotaStruct();
  set nextYear(LeaveYearQuotaStruct? val) => _nextYear = val;

  void updateNextYear(Function(LeaveYearQuotaStruct) updateFn) {
    updateFn(_nextYear ??= LeaveYearQuotaStruct());
  }

  bool hasNextYear() => _nextYear != null;

  // "previous_year" field.
  LeaveYearQuotaStruct? _previousYear;
  LeaveYearQuotaStruct get previousYear =>
      _previousYear ?? LeaveYearQuotaStruct();
  set previousYear(LeaveYearQuotaStruct? val) => _previousYear = val;

  void updatePreviousYear(Function(LeaveYearQuotaStruct) updateFn) {
    updateFn(_previousYear ??= LeaveYearQuotaStruct());
  }

  bool hasPreviousYear() => _previousYear != null;

  static LeaveTypeBalanceStruct fromMap(Map<String, dynamic> data) =>
      LeaveTypeBalanceStruct(
        leaveType: data['leave_type'] as String?,
        name: data['name'] as String?,
        icon: data['icon'] as String?,
        color: data['color'] as String?,
        leavePeriod: getStructList(
          data['leave_period'],
          LeavePeriodOptionStruct.fromMap,
        ),
        currentYear: data['current_year'] is LeaveYearQuotaStruct
            ? data['current_year']
            : LeaveYearQuotaStruct.maybeFromMap(data['current_year']),
        nextYear: data['next_year'] is LeaveYearQuotaStruct
            ? data['next_year']
            : LeaveYearQuotaStruct.maybeFromMap(data['next_year']),
        previousYear: data['previous_year'] is LeaveYearQuotaStruct
            ? data['previous_year']
            : LeaveYearQuotaStruct.maybeFromMap(data['previous_year']),
      );

  static LeaveTypeBalanceStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveTypeBalanceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'leave_type': _leaveType,
        'name': _name,
        'icon': _icon,
        'color': _color,
        'leave_period': _leavePeriod?.map((e) => e.toMap()).toList(),
        'current_year': _currentYear?.toMap(),
        'next_year': _nextYear?.toMap(),
        'previous_year': _previousYear?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'leave_type': serializeParam(
          _leaveType,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.String,
        ),
        'leave_period': serializeParam(
          _leavePeriod,
          ParamType.DataStruct,
          isList: true,
        ),
        'current_year': serializeParam(
          _currentYear,
          ParamType.DataStruct,
        ),
        'next_year': serializeParam(
          _nextYear,
          ParamType.DataStruct,
        ),
        'previous_year': serializeParam(
          _previousYear,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static LeaveTypeBalanceStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveTypeBalanceStruct(
        leaveType: deserializeParam(
          data['leave_type'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.String,
          false,
        ),
        leavePeriod: deserializeStructParam<LeavePeriodOptionStruct>(
          data['leave_period'],
          ParamType.DataStruct,
          true,
          structBuilder: LeavePeriodOptionStruct.fromSerializableMap,
        ),
        currentYear: deserializeStructParam(
          data['current_year'],
          ParamType.DataStruct,
          false,
          structBuilder: LeaveYearQuotaStruct.fromSerializableMap,
        ),
        nextYear: deserializeStructParam(
          data['next_year'],
          ParamType.DataStruct,
          false,
          structBuilder: LeaveYearQuotaStruct.fromSerializableMap,
        ),
        previousYear: deserializeStructParam(
          data['previous_year'],
          ParamType.DataStruct,
          false,
          structBuilder: LeaveYearQuotaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveTypeBalanceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LeaveTypeBalanceStruct &&
        leaveType == other.leaveType &&
        name == other.name &&
        icon == other.icon &&
        color == other.color &&
        listEquality.equals(leavePeriod, other.leavePeriod) &&
        currentYear == other.currentYear &&
        nextYear == other.nextYear &&
        previousYear == other.previousYear;
  }

  @override
  int get hashCode => const ListEquality().hash([
        leaveType,
        name,
        icon,
        color,
        leavePeriod,
        currentYear,
        nextYear,
        previousYear
      ]);
}

LeaveTypeBalanceStruct createLeaveTypeBalanceStruct({
  String? leaveType,
  String? name,
  String? icon,
  String? color,
  LeaveYearQuotaStruct? currentYear,
  LeaveYearQuotaStruct? nextYear,
  LeaveYearQuotaStruct? previousYear,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveTypeBalanceStruct(
      leaveType: leaveType,
      name: name,
      icon: icon,
      color: color,
      currentYear:
          currentYear ?? (clearUnsetFields ? LeaveYearQuotaStruct() : null),
      nextYear: nextYear ?? (clearUnsetFields ? LeaveYearQuotaStruct() : null),
      previousYear:
          previousYear ?? (clearUnsetFields ? LeaveYearQuotaStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveTypeBalanceStruct? updateLeaveTypeBalanceStruct(
  LeaveTypeBalanceStruct? leaveTypeBalance, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveTypeBalance
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveTypeBalanceStructData(
  Map<String, dynamic> firestoreData,
  LeaveTypeBalanceStruct? leaveTypeBalance,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveTypeBalance == null) {
    return;
  }
  if (leaveTypeBalance.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveTypeBalance.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveTypeBalanceData =
      getLeaveTypeBalanceFirestoreData(leaveTypeBalance, forFieldValue);
  final nestedData =
      leaveTypeBalanceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveTypeBalance.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveTypeBalanceFirestoreData(
  LeaveTypeBalanceStruct? leaveTypeBalance, [
  bool forFieldValue = false,
]) {
  if (leaveTypeBalance == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveTypeBalance.toMap());

  // Handle nested data for "current_year" field.
  addLeaveYearQuotaStructData(
    firestoreData,
    leaveTypeBalance.hasCurrentYear() ? leaveTypeBalance.currentYear : null,
    'current_year',
    forFieldValue,
  );

  // Handle nested data for "next_year" field.
  addLeaveYearQuotaStructData(
    firestoreData,
    leaveTypeBalance.hasNextYear() ? leaveTypeBalance.nextYear : null,
    'next_year',
    forFieldValue,
  );

  // Handle nested data for "previous_year" field.
  addLeaveYearQuotaStructData(
    firestoreData,
    leaveTypeBalance.hasPreviousYear() ? leaveTypeBalance.previousYear : null,
    'previous_year',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(leaveTypeBalance.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveTypeBalanceListFirestoreData(
  List<LeaveTypeBalanceStruct>? leaveTypeBalances,
) =>
    leaveTypeBalances
        ?.map((e) => getLeaveTypeBalanceFirestoreData(e, true))
        .toList() ??
    [];
