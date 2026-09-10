// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// Entitlement, usage and remaining balance for one year.
class LeaveYearQuotaStruct extends FFFirebaseStruct {
  LeaveYearQuotaStruct({
    /// LeaveYearQuota.year
    String? year,

    /// LeaveYearQuota.leave_limit
    String? leaveLimit,

    /// LeaveYearQuota.leave_use
    String? leaveUse,

    /// LeaveYearQuota.leave_remain
    String? leaveRemain,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _year = year,
        _leaveLimit = leaveLimit,
        _leaveUse = leaveUse,
        _leaveRemain = leaveRemain,
        super(firestoreUtilData);

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  set year(String? val) => _year = val;

  bool hasYear() => _year != null;

  // "leave_limit" field.
  String? _leaveLimit;
  String get leaveLimit => _leaveLimit ?? '';
  set leaveLimit(String? val) => _leaveLimit = val;

  bool hasLeaveLimit() => _leaveLimit != null;

  // "leave_use" field.
  String? _leaveUse;
  String get leaveUse => _leaveUse ?? '';
  set leaveUse(String? val) => _leaveUse = val;

  bool hasLeaveUse() => _leaveUse != null;

  // "leave_remain" field.
  String? _leaveRemain;
  String get leaveRemain => _leaveRemain ?? '';
  set leaveRemain(String? val) => _leaveRemain = val;

  bool hasLeaveRemain() => _leaveRemain != null;

  static LeaveYearQuotaStruct fromMap(Map<String, dynamic> data) =>
      LeaveYearQuotaStruct(
        year: data['year'] as String?,
        leaveLimit: data['leave_limit'] as String?,
        leaveUse: data['leave_use'] as String?,
        leaveRemain: data['leave_remain'] as String?,
      );

  static LeaveYearQuotaStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveYearQuotaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'year': _year,
        'leave_limit': _leaveLimit,
        'leave_use': _leaveUse,
        'leave_remain': _leaveRemain,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'year': serializeParam(
          _year,
          ParamType.String,
        ),
        'leave_limit': serializeParam(
          _leaveLimit,
          ParamType.String,
        ),
        'leave_use': serializeParam(
          _leaveUse,
          ParamType.String,
        ),
        'leave_remain': serializeParam(
          _leaveRemain,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeaveYearQuotaStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveYearQuotaStruct(
        year: deserializeParam(
          data['year'],
          ParamType.String,
          false,
        ),
        leaveLimit: deserializeParam(
          data['leave_limit'],
          ParamType.String,
          false,
        ),
        leaveUse: deserializeParam(
          data['leave_use'],
          ParamType.String,
          false,
        ),
        leaveRemain: deserializeParam(
          data['leave_remain'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeaveYearQuotaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveYearQuotaStruct &&
        year == other.year &&
        leaveLimit == other.leaveLimit &&
        leaveUse == other.leaveUse &&
        leaveRemain == other.leaveRemain;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([year, leaveLimit, leaveUse, leaveRemain]);
}

LeaveYearQuotaStruct createLeaveYearQuotaStruct({
  String? year,
  String? leaveLimit,
  String? leaveUse,
  String? leaveRemain,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveYearQuotaStruct(
      year: year,
      leaveLimit: leaveLimit,
      leaveUse: leaveUse,
      leaveRemain: leaveRemain,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveYearQuotaStruct? updateLeaveYearQuotaStruct(
  LeaveYearQuotaStruct? leaveYearQuota, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveYearQuota
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveYearQuotaStructData(
  Map<String, dynamic> firestoreData,
  LeaveYearQuotaStruct? leaveYearQuota,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveYearQuota == null) {
    return;
  }
  if (leaveYearQuota.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveYearQuota.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveYearQuotaData =
      getLeaveYearQuotaFirestoreData(leaveYearQuota, forFieldValue);
  final nestedData =
      leaveYearQuotaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveYearQuota.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveYearQuotaFirestoreData(
  LeaveYearQuotaStruct? leaveYearQuota, [
  bool forFieldValue = false,
]) {
  if (leaveYearQuota == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveYearQuota.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveYearQuota.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveYearQuotaListFirestoreData(
  List<LeaveYearQuotaStruct>? leaveYearQuotas,
) =>
    leaveYearQuotas
        ?.map((e) => getLeaveYearQuotaFirestoreData(e, true))
        .toList() ??
    [];
