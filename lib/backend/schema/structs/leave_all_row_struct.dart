// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// One decided request from /api/leave/get-all-leave.
class LeaveAllRowStruct extends FFFirebaseStruct {
  LeaveAllRowStruct({
    /// LeaveAllRow.id
    String? id,

    /// LeaveAllRow.leave_id
    String? leaveId,

    /// LeaveAllRow.emp_code
    String? empCode,

    /// LeaveAllRow.full_name
    String? fullName,

    /// LeaveAllRow.leave_name
    String? leaveName,

    /// LeaveAllRow.leave_period_name
    String? leavePeriodName,

    /// LeaveAllRow.leave_reason
    String? leaveReason,

    /// LeaveAllRow.leave_start_end_date
    String? leaveStartEndDate,

    /// LeaveAllRow.leave_count_day
    String? leaveCountDay,

    /// LeaveAllRow.leave_status_approve
    String? leaveStatusApprove,

    /// LeaveAllRow.leave_status_name
    String? leaveStatusName,

    /// LeaveAllRow.create_date
    String? createDate,

    /// LeaveAllRow.update_by
    String? updateBy,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _leaveId = leaveId,
        _empCode = empCode,
        _fullName = fullName,
        _leaveName = leaveName,
        _leavePeriodName = leavePeriodName,
        _leaveReason = leaveReason,
        _leaveStartEndDate = leaveStartEndDate,
        _leaveCountDay = leaveCountDay,
        _leaveStatusApprove = leaveStatusApprove,
        _leaveStatusName = leaveStatusName,
        _createDate = createDate,
        _updateBy = updateBy,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "leave_id" field.
  String? _leaveId;
  String get leaveId => _leaveId ?? '';
  set leaveId(String? val) => _leaveId = val;

  bool hasLeaveId() => _leaveId != null;

  // "emp_code" field.
  String? _empCode;
  String get empCode => _empCode ?? '';
  set empCode(String? val) => _empCode = val;

  bool hasEmpCode() => _empCode != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "leave_name" field.
  String? _leaveName;
  String get leaveName => _leaveName ?? '';
  set leaveName(String? val) => _leaveName = val;

  bool hasLeaveName() => _leaveName != null;

  // "leave_period_name" field.
  String? _leavePeriodName;
  String get leavePeriodName => _leavePeriodName ?? '';
  set leavePeriodName(String? val) => _leavePeriodName = val;

  bool hasLeavePeriodName() => _leavePeriodName != null;

  // "leave_reason" field.
  String? _leaveReason;
  String get leaveReason => _leaveReason ?? '';
  set leaveReason(String? val) => _leaveReason = val;

  bool hasLeaveReason() => _leaveReason != null;

  // "leave_start_end_date" field.
  String? _leaveStartEndDate;
  String get leaveStartEndDate => _leaveStartEndDate ?? '';
  set leaveStartEndDate(String? val) => _leaveStartEndDate = val;

  bool hasLeaveStartEndDate() => _leaveStartEndDate != null;

  // "leave_count_day" field.
  String? _leaveCountDay;
  String get leaveCountDay => _leaveCountDay ?? '';
  set leaveCountDay(String? val) => _leaveCountDay = val;

  bool hasLeaveCountDay() => _leaveCountDay != null;

  // "leave_status_approve" field.
  String? _leaveStatusApprove;
  String get leaveStatusApprove => _leaveStatusApprove ?? '';
  set leaveStatusApprove(String? val) => _leaveStatusApprove = val;

  bool hasLeaveStatusApprove() => _leaveStatusApprove != null;

  // "leave_status_name" field.
  String? _leaveStatusName;
  String get leaveStatusName => _leaveStatusName ?? '';
  set leaveStatusName(String? val) => _leaveStatusName = val;

  bool hasLeaveStatusName() => _leaveStatusName != null;

  // "create_date" field.
  String? _createDate;
  String get createDate => _createDate ?? '';
  set createDate(String? val) => _createDate = val;

  bool hasCreateDate() => _createDate != null;

  // "update_by" field.
  String? _updateBy;
  String get updateBy => _updateBy ?? '';
  set updateBy(String? val) => _updateBy = val;

  bool hasUpdateBy() => _updateBy != null;

  static LeaveAllRowStruct fromMap(Map<String, dynamic> data) =>
      LeaveAllRowStruct(
        id: data['id'] as String?,
        leaveId: data['leave_id'] as String?,
        empCode: data['emp_code'] as String?,
        fullName: data['full_name'] as String?,
        leaveName: data['leave_name'] as String?,
        leavePeriodName: data['leave_period_name'] as String?,
        leaveReason: data['leave_reason'] as String?,
        leaveStartEndDate: data['leave_start_end_date'] as String?,
        leaveCountDay: data['leave_count_day'] as String?,
        leaveStatusApprove: data['leave_status_approve'] as String?,
        leaveStatusName: data['leave_status_name'] as String?,
        createDate: data['create_date'] as String?,
        updateBy: data['update_by'] as String?,
      );

  static LeaveAllRowStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveAllRowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'leave_id': _leaveId,
        'emp_code': _empCode,
        'full_name': _fullName,
        'leave_name': _leaveName,
        'leave_period_name': _leavePeriodName,
        'leave_reason': _leaveReason,
        'leave_start_end_date': _leaveStartEndDate,
        'leave_count_day': _leaveCountDay,
        'leave_status_approve': _leaveStatusApprove,
        'leave_status_name': _leaveStatusName,
        'create_date': _createDate,
        'update_by': _updateBy,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'leave_id': serializeParam(
          _leaveId,
          ParamType.String,
        ),
        'emp_code': serializeParam(
          _empCode,
          ParamType.String,
        ),
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'leave_name': serializeParam(
          _leaveName,
          ParamType.String,
        ),
        'leave_period_name': serializeParam(
          _leavePeriodName,
          ParamType.String,
        ),
        'leave_reason': serializeParam(
          _leaveReason,
          ParamType.String,
        ),
        'leave_start_end_date': serializeParam(
          _leaveStartEndDate,
          ParamType.String,
        ),
        'leave_count_day': serializeParam(
          _leaveCountDay,
          ParamType.String,
        ),
        'leave_status_approve': serializeParam(
          _leaveStatusApprove,
          ParamType.String,
        ),
        'leave_status_name': serializeParam(
          _leaveStatusName,
          ParamType.String,
        ),
        'create_date': serializeParam(
          _createDate,
          ParamType.String,
        ),
        'update_by': serializeParam(
          _updateBy,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeaveAllRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveAllRowStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        leaveId: deserializeParam(
          data['leave_id'],
          ParamType.String,
          false,
        ),
        empCode: deserializeParam(
          data['emp_code'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        leaveName: deserializeParam(
          data['leave_name'],
          ParamType.String,
          false,
        ),
        leavePeriodName: deserializeParam(
          data['leave_period_name'],
          ParamType.String,
          false,
        ),
        leaveReason: deserializeParam(
          data['leave_reason'],
          ParamType.String,
          false,
        ),
        leaveStartEndDate: deserializeParam(
          data['leave_start_end_date'],
          ParamType.String,
          false,
        ),
        leaveCountDay: deserializeParam(
          data['leave_count_day'],
          ParamType.String,
          false,
        ),
        leaveStatusApprove: deserializeParam(
          data['leave_status_approve'],
          ParamType.String,
          false,
        ),
        leaveStatusName: deserializeParam(
          data['leave_status_name'],
          ParamType.String,
          false,
        ),
        createDate: deserializeParam(
          data['create_date'],
          ParamType.String,
          false,
        ),
        updateBy: deserializeParam(
          data['update_by'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeaveAllRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveAllRowStruct &&
        id == other.id &&
        leaveId == other.leaveId &&
        empCode == other.empCode &&
        fullName == other.fullName &&
        leaveName == other.leaveName &&
        leavePeriodName == other.leavePeriodName &&
        leaveReason == other.leaveReason &&
        leaveStartEndDate == other.leaveStartEndDate &&
        leaveCountDay == other.leaveCountDay &&
        leaveStatusApprove == other.leaveStatusApprove &&
        leaveStatusName == other.leaveStatusName &&
        createDate == other.createDate &&
        updateBy == other.updateBy;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        leaveId,
        empCode,
        fullName,
        leaveName,
        leavePeriodName,
        leaveReason,
        leaveStartEndDate,
        leaveCountDay,
        leaveStatusApprove,
        leaveStatusName,
        createDate,
        updateBy
      ]);
}

LeaveAllRowStruct createLeaveAllRowStruct({
  String? id,
  String? leaveId,
  String? empCode,
  String? fullName,
  String? leaveName,
  String? leavePeriodName,
  String? leaveReason,
  String? leaveStartEndDate,
  String? leaveCountDay,
  String? leaveStatusApprove,
  String? leaveStatusName,
  String? createDate,
  String? updateBy,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveAllRowStruct(
      id: id,
      leaveId: leaveId,
      empCode: empCode,
      fullName: fullName,
      leaveName: leaveName,
      leavePeriodName: leavePeriodName,
      leaveReason: leaveReason,
      leaveStartEndDate: leaveStartEndDate,
      leaveCountDay: leaveCountDay,
      leaveStatusApprove: leaveStatusApprove,
      leaveStatusName: leaveStatusName,
      createDate: createDate,
      updateBy: updateBy,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveAllRowStruct? updateLeaveAllRowStruct(
  LeaveAllRowStruct? leaveAllRow, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveAllRow
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveAllRowStructData(
  Map<String, dynamic> firestoreData,
  LeaveAllRowStruct? leaveAllRow,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveAllRow == null) {
    return;
  }
  if (leaveAllRow.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveAllRow.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveAllRowData =
      getLeaveAllRowFirestoreData(leaveAllRow, forFieldValue);
  final nestedData =
      leaveAllRowData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveAllRow.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveAllRowFirestoreData(
  LeaveAllRowStruct? leaveAllRow, [
  bool forFieldValue = false,
]) {
  if (leaveAllRow == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveAllRow.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveAllRow.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveAllRowListFirestoreData(
  List<LeaveAllRowStruct>? leaveAllRows,
) =>
    leaveAllRows?.map((e) => getLeaveAllRowFirestoreData(e, true)).toList() ??
    [];
