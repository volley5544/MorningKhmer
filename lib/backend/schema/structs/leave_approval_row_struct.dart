// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// One request awaiting this approver's decision.
class LeaveApprovalRowStruct extends FFFirebaseStruct {
  LeaveApprovalRowStruct({
    /// LeaveApprovalRow.id
    String? id,

    /// LeaveApprovalRow.leave_id
    String? leaveId,

    /// LeaveApprovalRow.emp_code
    String? empCode,

    /// LeaveApprovalRow.nick_name
    String? nickName,

    /// LeaveApprovalRow.full_name
    String? fullName,

    /// LeaveApprovalRow.emp_tel
    String? empTel,

    /// LeaveApprovalRow.company_name
    String? companyName,

    /// LeaveApprovalRow.leave_name
    String? leaveName,

    /// LeaveApprovalRow.leave_period_name
    String? leavePeriodName,

    /// LeaveApprovalRow.leave_reason
    String? leaveReason,

    /// LeaveApprovalRow.leave_start_end_date
    String? leaveStartEndDate,

    /// LeaveApprovalRow.leave_count_day
    String? leaveCountDay,

    /// LeaveApprovalRow.leave_status_name
    String? leaveStatusName,

    /// LeaveApprovalRow.create_date
    String? createDate,

    /// LeaveApprovalRow.leave_detail
    List<LeaveDayDetailStruct>? leaveDetail,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _leaveId = leaveId,
        _empCode = empCode,
        _nickName = nickName,
        _fullName = fullName,
        _empTel = empTel,
        _companyName = companyName,
        _leaveName = leaveName,
        _leavePeriodName = leavePeriodName,
        _leaveReason = leaveReason,
        _leaveStartEndDate = leaveStartEndDate,
        _leaveCountDay = leaveCountDay,
        _leaveStatusName = leaveStatusName,
        _createDate = createDate,
        _leaveDetail = leaveDetail,
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

  // "nick_name" field.
  String? _nickName;
  String get nickName => _nickName ?? '';
  set nickName(String? val) => _nickName = val;

  bool hasNickName() => _nickName != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "emp_tel" field.
  String? _empTel;
  String get empTel => _empTel ?? '';
  set empTel(String? val) => _empTel = val;

  bool hasEmpTel() => _empTel != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  set companyName(String? val) => _companyName = val;

  bool hasCompanyName() => _companyName != null;

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

  // "leave_detail" field.
  List<LeaveDayDetailStruct>? _leaveDetail;
  List<LeaveDayDetailStruct> get leaveDetail => _leaveDetail ?? const [];
  set leaveDetail(List<LeaveDayDetailStruct>? val) => _leaveDetail = val;

  void updateLeaveDetail(Function(List<LeaveDayDetailStruct>) updateFn) {
    updateFn(_leaveDetail ??= []);
  }

  bool hasLeaveDetail() => _leaveDetail != null;

  static LeaveApprovalRowStruct fromMap(Map<String, dynamic> data) =>
      LeaveApprovalRowStruct(
        id: data['id'] as String?,
        leaveId: data['leave_id'] as String?,
        empCode: data['emp_code'] as String?,
        nickName: data['nick_name'] as String?,
        fullName: data['full_name'] as String?,
        empTel: data['emp_tel'] as String?,
        companyName: data['company_name'] as String?,
        leaveName: data['leave_name'] as String?,
        leavePeriodName: data['leave_period_name'] as String?,
        leaveReason: data['leave_reason'] as String?,
        leaveStartEndDate: data['leave_start_end_date'] as String?,
        leaveCountDay: data['leave_count_day'] as String?,
        leaveStatusName: data['leave_status_name'] as String?,
        createDate: data['create_date'] as String?,
        leaveDetail: getStructList(
          data['leave_detail'],
          LeaveDayDetailStruct.fromMap,
        ),
      );

  static LeaveApprovalRowStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveApprovalRowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'leave_id': _leaveId,
        'emp_code': _empCode,
        'nick_name': _nickName,
        'full_name': _fullName,
        'emp_tel': _empTel,
        'company_name': _companyName,
        'leave_name': _leaveName,
        'leave_period_name': _leavePeriodName,
        'leave_reason': _leaveReason,
        'leave_start_end_date': _leaveStartEndDate,
        'leave_count_day': _leaveCountDay,
        'leave_status_name': _leaveStatusName,
        'create_date': _createDate,
        'leave_detail': _leaveDetail?.map((e) => e.toMap()).toList(),
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
        'nick_name': serializeParam(
          _nickName,
          ParamType.String,
        ),
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'emp_tel': serializeParam(
          _empTel,
          ParamType.String,
        ),
        'company_name': serializeParam(
          _companyName,
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
        'leave_status_name': serializeParam(
          _leaveStatusName,
          ParamType.String,
        ),
        'create_date': serializeParam(
          _createDate,
          ParamType.String,
        ),
        'leave_detail': serializeParam(
          _leaveDetail,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LeaveApprovalRowStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeaveApprovalRowStruct(
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
        nickName: deserializeParam(
          data['nick_name'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        empTel: deserializeParam(
          data['emp_tel'],
          ParamType.String,
          false,
        ),
        companyName: deserializeParam(
          data['company_name'],
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
        leaveDetail: deserializeStructParam<LeaveDayDetailStruct>(
          data['leave_detail'],
          ParamType.DataStruct,
          true,
          structBuilder: LeaveDayDetailStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveApprovalRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LeaveApprovalRowStruct &&
        id == other.id &&
        leaveId == other.leaveId &&
        empCode == other.empCode &&
        nickName == other.nickName &&
        fullName == other.fullName &&
        empTel == other.empTel &&
        companyName == other.companyName &&
        leaveName == other.leaveName &&
        leavePeriodName == other.leavePeriodName &&
        leaveReason == other.leaveReason &&
        leaveStartEndDate == other.leaveStartEndDate &&
        leaveCountDay == other.leaveCountDay &&
        leaveStatusName == other.leaveStatusName &&
        createDate == other.createDate &&
        listEquality.equals(leaveDetail, other.leaveDetail);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        leaveId,
        empCode,
        nickName,
        fullName,
        empTel,
        companyName,
        leaveName,
        leavePeriodName,
        leaveReason,
        leaveStartEndDate,
        leaveCountDay,
        leaveStatusName,
        createDate,
        leaveDetail
      ]);
}

LeaveApprovalRowStruct createLeaveApprovalRowStruct({
  String? id,
  String? leaveId,
  String? empCode,
  String? nickName,
  String? fullName,
  String? empTel,
  String? companyName,
  String? leaveName,
  String? leavePeriodName,
  String? leaveReason,
  String? leaveStartEndDate,
  String? leaveCountDay,
  String? leaveStatusName,
  String? createDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveApprovalRowStruct(
      id: id,
      leaveId: leaveId,
      empCode: empCode,
      nickName: nickName,
      fullName: fullName,
      empTel: empTel,
      companyName: companyName,
      leaveName: leaveName,
      leavePeriodName: leavePeriodName,
      leaveReason: leaveReason,
      leaveStartEndDate: leaveStartEndDate,
      leaveCountDay: leaveCountDay,
      leaveStatusName: leaveStatusName,
      createDate: createDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveApprovalRowStruct? updateLeaveApprovalRowStruct(
  LeaveApprovalRowStruct? leaveApprovalRow, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveApprovalRow
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveApprovalRowStructData(
  Map<String, dynamic> firestoreData,
  LeaveApprovalRowStruct? leaveApprovalRow,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveApprovalRow == null) {
    return;
  }
  if (leaveApprovalRow.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveApprovalRow.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveApprovalRowData =
      getLeaveApprovalRowFirestoreData(leaveApprovalRow, forFieldValue);
  final nestedData =
      leaveApprovalRowData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveApprovalRow.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveApprovalRowFirestoreData(
  LeaveApprovalRowStruct? leaveApprovalRow, [
  bool forFieldValue = false,
]) {
  if (leaveApprovalRow == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveApprovalRow.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveApprovalRow.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveApprovalRowListFirestoreData(
  List<LeaveApprovalRowStruct>? leaveApprovalRows,
) =>
    leaveApprovalRows
        ?.map((e) => getLeaveApprovalRowFirestoreData(e, true))
        .toList() ??
    [];
