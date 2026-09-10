// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// results payload of /api/leave/get-all-leave.
class LeaveAllResultsStruct extends FFFirebaseStruct {
  LeaveAllResultsStruct({
    /// LeaveAllResults.previous_year
    LeaveAllBucketStruct? previousYear,

    /// LeaveAllResults.current_year
    LeaveAllBucketStruct? currentYear,

    /// LeaveAllResults.next_year
    LeaveAllBucketStruct? nextYear,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _previousYear = previousYear,
        _currentYear = currentYear,
        _nextYear = nextYear,
        super(firestoreUtilData);

  // "previous_year" field.
  LeaveAllBucketStruct? _previousYear;
  LeaveAllBucketStruct get previousYear =>
      _previousYear ?? LeaveAllBucketStruct();
  set previousYear(LeaveAllBucketStruct? val) => _previousYear = val;

  void updatePreviousYear(Function(LeaveAllBucketStruct) updateFn) {
    updateFn(_previousYear ??= LeaveAllBucketStruct());
  }

  bool hasPreviousYear() => _previousYear != null;

  // "current_year" field.
  LeaveAllBucketStruct? _currentYear;
  LeaveAllBucketStruct get currentYear =>
      _currentYear ?? LeaveAllBucketStruct();
  set currentYear(LeaveAllBucketStruct? val) => _currentYear = val;

  void updateCurrentYear(Function(LeaveAllBucketStruct) updateFn) {
    updateFn(_currentYear ??= LeaveAllBucketStruct());
  }

  bool hasCurrentYear() => _currentYear != null;

  // "next_year" field.
  LeaveAllBucketStruct? _nextYear;
  LeaveAllBucketStruct get nextYear => _nextYear ?? LeaveAllBucketStruct();
  set nextYear(LeaveAllBucketStruct? val) => _nextYear = val;

  void updateNextYear(Function(LeaveAllBucketStruct) updateFn) {
    updateFn(_nextYear ??= LeaveAllBucketStruct());
  }

  bool hasNextYear() => _nextYear != null;

  static LeaveAllResultsStruct fromMap(Map<String, dynamic> data) =>
      LeaveAllResultsStruct(
        previousYear: data['previous_year'] is LeaveAllBucketStruct
            ? data['previous_year']
            : LeaveAllBucketStruct.maybeFromMap(data['previous_year']),
        currentYear: data['current_year'] is LeaveAllBucketStruct
            ? data['current_year']
            : LeaveAllBucketStruct.maybeFromMap(data['current_year']),
        nextYear: data['next_year'] is LeaveAllBucketStruct
            ? data['next_year']
            : LeaveAllBucketStruct.maybeFromMap(data['next_year']),
      );

  static LeaveAllResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveAllResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'previous_year': _previousYear?.toMap(),
        'current_year': _currentYear?.toMap(),
        'next_year': _nextYear?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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

  static LeaveAllResultsStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveAllResultsStruct(
        previousYear: deserializeStructParam(
          data['previous_year'],
          ParamType.DataStruct,
          false,
          structBuilder: LeaveAllBucketStruct.fromSerializableMap,
        ),
        currentYear: deserializeStructParam(
          data['current_year'],
          ParamType.DataStruct,
          false,
          structBuilder: LeaveAllBucketStruct.fromSerializableMap,
        ),
        nextYear: deserializeStructParam(
          data['next_year'],
          ParamType.DataStruct,
          false,
          structBuilder: LeaveAllBucketStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveAllResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveAllResultsStruct &&
        previousYear == other.previousYear &&
        currentYear == other.currentYear &&
        nextYear == other.nextYear;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([previousYear, currentYear, nextYear]);
}

LeaveAllResultsStruct createLeaveAllResultsStruct({
  LeaveAllBucketStruct? previousYear,
  LeaveAllBucketStruct? currentYear,
  LeaveAllBucketStruct? nextYear,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveAllResultsStruct(
      previousYear:
          previousYear ?? (clearUnsetFields ? LeaveAllBucketStruct() : null),
      currentYear:
          currentYear ?? (clearUnsetFields ? LeaveAllBucketStruct() : null),
      nextYear: nextYear ?? (clearUnsetFields ? LeaveAllBucketStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveAllResultsStruct? updateLeaveAllResultsStruct(
  LeaveAllResultsStruct? leaveAllResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveAllResults
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveAllResultsStructData(
  Map<String, dynamic> firestoreData,
  LeaveAllResultsStruct? leaveAllResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveAllResults == null) {
    return;
  }
  if (leaveAllResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveAllResults.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveAllResultsData =
      getLeaveAllResultsFirestoreData(leaveAllResults, forFieldValue);
  final nestedData =
      leaveAllResultsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveAllResults.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveAllResultsFirestoreData(
  LeaveAllResultsStruct? leaveAllResults, [
  bool forFieldValue = false,
]) {
  if (leaveAllResults == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveAllResults.toMap());

  // Handle nested data for "previous_year" field.
  addLeaveAllBucketStructData(
    firestoreData,
    leaveAllResults.hasPreviousYear() ? leaveAllResults.previousYear : null,
    'previous_year',
    forFieldValue,
  );

  // Handle nested data for "current_year" field.
  addLeaveAllBucketStructData(
    firestoreData,
    leaveAllResults.hasCurrentYear() ? leaveAllResults.currentYear : null,
    'current_year',
    forFieldValue,
  );

  // Handle nested data for "next_year" field.
  addLeaveAllBucketStructData(
    firestoreData,
    leaveAllResults.hasNextYear() ? leaveAllResults.nextYear : null,
    'next_year',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(leaveAllResults.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveAllResultsListFirestoreData(
  List<LeaveAllResultsStruct>? leaveAllResultss,
) =>
    leaveAllResultss
        ?.map((e) => getLeaveAllResultsFirestoreData(e, true))
        .toList() ??
    [];
