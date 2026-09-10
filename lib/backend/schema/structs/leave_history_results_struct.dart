// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// results payload of /api/leave/history.
class LeaveHistoryResultsStruct extends FFFirebaseStruct {
  LeaveHistoryResultsStruct({
    /// LeaveHistoryResults.current_month_only
    String? currentMonthOnly,

    /// LeaveHistoryResults.previous_year
    LeaveHistoryYearStruct? previousYear,

    /// LeaveHistoryResults.current_year
    LeaveHistoryYearStruct? currentYear,

    /// LeaveHistoryResults.next_year
    LeaveHistoryYearStruct? nextYear,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _currentMonthOnly = currentMonthOnly,
        _previousYear = previousYear,
        _currentYear = currentYear,
        _nextYear = nextYear,
        super(firestoreUtilData);

  // "current_month_only" field.
  String? _currentMonthOnly;
  String get currentMonthOnly => _currentMonthOnly ?? '';
  set currentMonthOnly(String? val) => _currentMonthOnly = val;

  bool hasCurrentMonthOnly() => _currentMonthOnly != null;

  // "previous_year" field.
  LeaveHistoryYearStruct? _previousYear;
  LeaveHistoryYearStruct get previousYear =>
      _previousYear ?? LeaveHistoryYearStruct();
  set previousYear(LeaveHistoryYearStruct? val) => _previousYear = val;

  void updatePreviousYear(Function(LeaveHistoryYearStruct) updateFn) {
    updateFn(_previousYear ??= LeaveHistoryYearStruct());
  }

  bool hasPreviousYear() => _previousYear != null;

  // "current_year" field.
  LeaveHistoryYearStruct? _currentYear;
  LeaveHistoryYearStruct get currentYear =>
      _currentYear ?? LeaveHistoryYearStruct();
  set currentYear(LeaveHistoryYearStruct? val) => _currentYear = val;

  void updateCurrentYear(Function(LeaveHistoryYearStruct) updateFn) {
    updateFn(_currentYear ??= LeaveHistoryYearStruct());
  }

  bool hasCurrentYear() => _currentYear != null;

  // "next_year" field.
  LeaveHistoryYearStruct? _nextYear;
  LeaveHistoryYearStruct get nextYear => _nextYear ?? LeaveHistoryYearStruct();
  set nextYear(LeaveHistoryYearStruct? val) => _nextYear = val;

  void updateNextYear(Function(LeaveHistoryYearStruct) updateFn) {
    updateFn(_nextYear ??= LeaveHistoryYearStruct());
  }

  bool hasNextYear() => _nextYear != null;

  static LeaveHistoryResultsStruct fromMap(Map<String, dynamic> data) =>
      LeaveHistoryResultsStruct(
        currentMonthOnly: data['current_month_only'] as String?,
        previousYear: data['previous_year'] is LeaveHistoryYearStruct
            ? data['previous_year']
            : LeaveHistoryYearStruct.maybeFromMap(data['previous_year']),
        currentYear: data['current_year'] is LeaveHistoryYearStruct
            ? data['current_year']
            : LeaveHistoryYearStruct.maybeFromMap(data['current_year']),
        nextYear: data['next_year'] is LeaveHistoryYearStruct
            ? data['next_year']
            : LeaveHistoryYearStruct.maybeFromMap(data['next_year']),
      );

  static LeaveHistoryResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveHistoryResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'current_month_only': _currentMonthOnly,
        'previous_year': _previousYear?.toMap(),
        'current_year': _currentYear?.toMap(),
        'next_year': _nextYear?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'current_month_only': serializeParam(
          _currentMonthOnly,
          ParamType.String,
        ),
        'previous_year': serializeParam(
          _previousYear,
          ParamType.DataStruct,
        ),
        'current_year': serializeParam(
          _currentYear,
          ParamType.DataStruct,
        ),
        'next_year': serializeParam(
          _nextYear,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static LeaveHistoryResultsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveHistoryResultsStruct(
        currentMonthOnly: deserializeParam(
          data['current_month_only'],
          ParamType.String,
          false,
        ),
        previousYear: deserializeStructParam(
          data['previous_year'],
          ParamType.DataStruct,
          false,
          structBuilder: LeaveHistoryYearStruct.fromSerializableMap,
        ),
        currentYear: deserializeStructParam(
          data['current_year'],
          ParamType.DataStruct,
          false,
          structBuilder: LeaveHistoryYearStruct.fromSerializableMap,
        ),
        nextYear: deserializeStructParam(
          data['next_year'],
          ParamType.DataStruct,
          false,
          structBuilder: LeaveHistoryYearStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveHistoryResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveHistoryResultsStruct &&
        currentMonthOnly == other.currentMonthOnly &&
        previousYear == other.previousYear &&
        currentYear == other.currentYear &&
        nextYear == other.nextYear;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([currentMonthOnly, previousYear, currentYear, nextYear]);
}

LeaveHistoryResultsStruct createLeaveHistoryResultsStruct({
  String? currentMonthOnly,
  LeaveHistoryYearStruct? previousYear,
  LeaveHistoryYearStruct? currentYear,
  LeaveHistoryYearStruct? nextYear,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveHistoryResultsStruct(
      currentMonthOnly: currentMonthOnly,
      previousYear:
          previousYear ?? (clearUnsetFields ? LeaveHistoryYearStruct() : null),
      currentYear:
          currentYear ?? (clearUnsetFields ? LeaveHistoryYearStruct() : null),
      nextYear:
          nextYear ?? (clearUnsetFields ? LeaveHistoryYearStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveHistoryResultsStruct? updateLeaveHistoryResultsStruct(
  LeaveHistoryResultsStruct? leaveHistoryResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveHistoryResults
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveHistoryResultsStructData(
  Map<String, dynamic> firestoreData,
  LeaveHistoryResultsStruct? leaveHistoryResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveHistoryResults == null) {
    return;
  }
  if (leaveHistoryResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveHistoryResults.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveHistoryResultsData =
      getLeaveHistoryResultsFirestoreData(leaveHistoryResults, forFieldValue);
  final nestedData =
      leaveHistoryResultsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      leaveHistoryResults.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveHistoryResultsFirestoreData(
  LeaveHistoryResultsStruct? leaveHistoryResults, [
  bool forFieldValue = false,
]) {
  if (leaveHistoryResults == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveHistoryResults.toMap());

  // Handle nested data for "previous_year" field.
  addLeaveHistoryYearStructData(
    firestoreData,
    leaveHistoryResults.hasPreviousYear()
        ? leaveHistoryResults.previousYear
        : null,
    'previous_year',
    forFieldValue,
  );

  // Handle nested data for "current_year" field.
  addLeaveHistoryYearStructData(
    firestoreData,
    leaveHistoryResults.hasCurrentYear()
        ? leaveHistoryResults.currentYear
        : null,
    'current_year',
    forFieldValue,
  );

  // Handle nested data for "next_year" field.
  addLeaveHistoryYearStructData(
    firestoreData,
    leaveHistoryResults.hasNextYear() ? leaveHistoryResults.nextYear : null,
    'next_year',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(leaveHistoryResults.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveHistoryResultsListFirestoreData(
  List<LeaveHistoryResultsStruct>? leaveHistoryResultss,
) =>
    leaveHistoryResultss
        ?.map((e) => getLeaveHistoryResultsFirestoreData(e, true))
        .toList() ??
    [];
