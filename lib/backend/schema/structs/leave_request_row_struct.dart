// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// One leave request as returned by /api/leave/history.
class LeaveRequestRowStruct extends FFFirebaseStruct {
  LeaveRequestRowStruct({
    /// LeaveRequestRow.ID
    String? id,

    /// LeaveRequestRow.LEAVE_ID
    String? leaveId,

    /// LeaveRequestRow.LEAVE_NAME
    String? leaveName,

    /// LeaveRequestRow.LEAVE_PERIOD_NAME
    String? leavePeriodName,

    /// LeaveRequestRow.COMBINE_DATE
    String? combineDate,

    /// LeaveRequestRow.LEAVE_COUNT_DAY
    String? leaveCountDay,

    /// LeaveRequestRow.LEAVE_REASON
    String? leaveReason,

    /// LeaveRequestRow.LEAVE_STATUS
    String? leaveStatus,

    /// LeaveRequestRow.LEAVE_STATUS_APPROVE
    String? leaveStatusApprove,

    /// LeaveRequestRow.HEAD_APPROVE_NAME
    String? headApproveName,

    /// LeaveRequestRow.EMP_TEL
    String? empTel,

    /// LeaveRequestRow.CREATE_DATETIME_NAME
    String? createDatetimeName,

    /// LeaveRequestRow.CANCEL_BOTTON
    bool? cancelBotton,

    /// LeaveRequestRow.EDIT_BOTTON
    bool? editBotton,

    /// LeaveRequestRow.LEAVE_DETAILS
    List<LeaveDayDetailStruct>? leaveDetails,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _leaveId = leaveId,
        _leaveName = leaveName,
        _leavePeriodName = leavePeriodName,
        _combineDate = combineDate,
        _leaveCountDay = leaveCountDay,
        _leaveReason = leaveReason,
        _leaveStatus = leaveStatus,
        _leaveStatusApprove = leaveStatusApprove,
        _headApproveName = headApproveName,
        _empTel = empTel,
        _createDatetimeName = createDatetimeName,
        _cancelBotton = cancelBotton,
        _editBotton = editBotton,
        _leaveDetails = leaveDetails,
        super(firestoreUtilData);

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "LEAVE_ID" field.
  String? _leaveId;
  String get leaveId => _leaveId ?? '';
  set leaveId(String? val) => _leaveId = val;

  bool hasLeaveId() => _leaveId != null;

  // "LEAVE_NAME" field.
  String? _leaveName;
  String get leaveName => _leaveName ?? '';
  set leaveName(String? val) => _leaveName = val;

  bool hasLeaveName() => _leaveName != null;

  // "LEAVE_PERIOD_NAME" field.
  String? _leavePeriodName;
  String get leavePeriodName => _leavePeriodName ?? '';
  set leavePeriodName(String? val) => _leavePeriodName = val;

  bool hasLeavePeriodName() => _leavePeriodName != null;

  // "COMBINE_DATE" field.
  String? _combineDate;
  String get combineDate => _combineDate ?? '';
  set combineDate(String? val) => _combineDate = val;

  bool hasCombineDate() => _combineDate != null;

  // "LEAVE_COUNT_DAY" field.
  String? _leaveCountDay;
  String get leaveCountDay => _leaveCountDay ?? '';
  set leaveCountDay(String? val) => _leaveCountDay = val;

  bool hasLeaveCountDay() => _leaveCountDay != null;

  // "LEAVE_REASON" field.
  String? _leaveReason;
  String get leaveReason => _leaveReason ?? '';
  set leaveReason(String? val) => _leaveReason = val;

  bool hasLeaveReason() => _leaveReason != null;

  // "LEAVE_STATUS" field.
  String? _leaveStatus;
  String get leaveStatus => _leaveStatus ?? '';
  set leaveStatus(String? val) => _leaveStatus = val;

  bool hasLeaveStatus() => _leaveStatus != null;

  // "LEAVE_STATUS_APPROVE" field.
  String? _leaveStatusApprove;
  String get leaveStatusApprove => _leaveStatusApprove ?? '';
  set leaveStatusApprove(String? val) => _leaveStatusApprove = val;

  bool hasLeaveStatusApprove() => _leaveStatusApprove != null;

  // "HEAD_APPROVE_NAME" field.
  String? _headApproveName;
  String get headApproveName => _headApproveName ?? '';
  set headApproveName(String? val) => _headApproveName = val;

  bool hasHeadApproveName() => _headApproveName != null;

  // "EMP_TEL" field.
  String? _empTel;
  String get empTel => _empTel ?? '';
  set empTel(String? val) => _empTel = val;

  bool hasEmpTel() => _empTel != null;

  // "CREATE_DATETIME_NAME" field.
  String? _createDatetimeName;
  String get createDatetimeName => _createDatetimeName ?? '';
  set createDatetimeName(String? val) => _createDatetimeName = val;

  bool hasCreateDatetimeName() => _createDatetimeName != null;

  // "CANCEL_BOTTON" field.
  bool? _cancelBotton;
  bool get cancelBotton => _cancelBotton ?? false;
  set cancelBotton(bool? val) => _cancelBotton = val;

  bool hasCancelBotton() => _cancelBotton != null;

  // "EDIT_BOTTON" field.
  bool? _editBotton;
  bool get editBotton => _editBotton ?? false;
  set editBotton(bool? val) => _editBotton = val;

  bool hasEditBotton() => _editBotton != null;

  // "LEAVE_DETAILS" field.
  List<LeaveDayDetailStruct>? _leaveDetails;
  List<LeaveDayDetailStruct> get leaveDetails => _leaveDetails ?? const [];
  set leaveDetails(List<LeaveDayDetailStruct>? val) => _leaveDetails = val;

  void updateLeaveDetails(Function(List<LeaveDayDetailStruct>) updateFn) {
    updateFn(_leaveDetails ??= []);
  }

  bool hasLeaveDetails() => _leaveDetails != null;

  static LeaveRequestRowStruct fromMap(Map<String, dynamic> data) =>
      LeaveRequestRowStruct(
        id: data['ID'] as String?,
        leaveId: data['LEAVE_ID'] as String?,
        leaveName: data['LEAVE_NAME'] as String?,
        leavePeriodName: data['LEAVE_PERIOD_NAME'] as String?,
        combineDate: data['COMBINE_DATE'] as String?,
        leaveCountDay: data['LEAVE_COUNT_DAY'] as String?,
        leaveReason: data['LEAVE_REASON'] as String?,
        leaveStatus: data['LEAVE_STATUS'] as String?,
        leaveStatusApprove: data['LEAVE_STATUS_APPROVE'] as String?,
        headApproveName: data['HEAD_APPROVE_NAME'] as String?,
        empTel: data['EMP_TEL'] as String?,
        createDatetimeName: data['CREATE_DATETIME_NAME'] as String?,
        cancelBotton: data['CANCEL_BOTTON'] as bool?,
        editBotton: data['EDIT_BOTTON'] as bool?,
        leaveDetails: getStructList(
          data['LEAVE_DETAILS'],
          LeaveDayDetailStruct.fromMap,
        ),
      );

  static LeaveRequestRowStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveRequestRowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'LEAVE_ID': _leaveId,
        'LEAVE_NAME': _leaveName,
        'LEAVE_PERIOD_NAME': _leavePeriodName,
        'COMBINE_DATE': _combineDate,
        'LEAVE_COUNT_DAY': _leaveCountDay,
        'LEAVE_REASON': _leaveReason,
        'LEAVE_STATUS': _leaveStatus,
        'LEAVE_STATUS_APPROVE': _leaveStatusApprove,
        'HEAD_APPROVE_NAME': _headApproveName,
        'EMP_TEL': _empTel,
        'CREATE_DATETIME_NAME': _createDatetimeName,
        'CANCEL_BOTTON': _cancelBotton,
        'EDIT_BOTTON': _editBotton,
        'LEAVE_DETAILS': _leaveDetails?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.String,
        ),
        'LEAVE_ID': serializeParam(
          _leaveId,
          ParamType.String,
        ),
        'LEAVE_NAME': serializeParam(
          _leaveName,
          ParamType.String,
        ),
        'LEAVE_PERIOD_NAME': serializeParam(
          _leavePeriodName,
          ParamType.String,
        ),
        'COMBINE_DATE': serializeParam(
          _combineDate,
          ParamType.String,
        ),
        'LEAVE_COUNT_DAY': serializeParam(
          _leaveCountDay,
          ParamType.String,
        ),
        'LEAVE_REASON': serializeParam(
          _leaveReason,
          ParamType.String,
        ),
        'LEAVE_STATUS': serializeParam(
          _leaveStatus,
          ParamType.String,
        ),
        'LEAVE_STATUS_APPROVE': serializeParam(
          _leaveStatusApprove,
          ParamType.String,
        ),
        'HEAD_APPROVE_NAME': serializeParam(
          _headApproveName,
          ParamType.String,
        ),
        'EMP_TEL': serializeParam(
          _empTel,
          ParamType.String,
        ),
        'CREATE_DATETIME_NAME': serializeParam(
          _createDatetimeName,
          ParamType.String,
        ),
        'CANCEL_BOTTON': serializeParam(
          _cancelBotton,
          ParamType.bool,
        ),
        'EDIT_BOTTON': serializeParam(
          _editBotton,
          ParamType.bool,
        ),
        'LEAVE_DETAILS': serializeParam(
          _leaveDetails,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LeaveRequestRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveRequestRowStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.String,
          false,
        ),
        leaveId: deserializeParam(
          data['LEAVE_ID'],
          ParamType.String,
          false,
        ),
        leaveName: deserializeParam(
          data['LEAVE_NAME'],
          ParamType.String,
          false,
        ),
        leavePeriodName: deserializeParam(
          data['LEAVE_PERIOD_NAME'],
          ParamType.String,
          false,
        ),
        combineDate: deserializeParam(
          data['COMBINE_DATE'],
          ParamType.String,
          false,
        ),
        leaveCountDay: deserializeParam(
          data['LEAVE_COUNT_DAY'],
          ParamType.String,
          false,
        ),
        leaveReason: deserializeParam(
          data['LEAVE_REASON'],
          ParamType.String,
          false,
        ),
        leaveStatus: deserializeParam(
          data['LEAVE_STATUS'],
          ParamType.String,
          false,
        ),
        leaveStatusApprove: deserializeParam(
          data['LEAVE_STATUS_APPROVE'],
          ParamType.String,
          false,
        ),
        headApproveName: deserializeParam(
          data['HEAD_APPROVE_NAME'],
          ParamType.String,
          false,
        ),
        empTel: deserializeParam(
          data['EMP_TEL'],
          ParamType.String,
          false,
        ),
        createDatetimeName: deserializeParam(
          data['CREATE_DATETIME_NAME'],
          ParamType.String,
          false,
        ),
        cancelBotton: deserializeParam(
          data['CANCEL_BOTTON'],
          ParamType.bool,
          false,
        ),
        editBotton: deserializeParam(
          data['EDIT_BOTTON'],
          ParamType.bool,
          false,
        ),
        leaveDetails: deserializeStructParam<LeaveDayDetailStruct>(
          data['LEAVE_DETAILS'],
          ParamType.DataStruct,
          true,
          structBuilder: LeaveDayDetailStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveRequestRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LeaveRequestRowStruct &&
        id == other.id &&
        leaveId == other.leaveId &&
        leaveName == other.leaveName &&
        leavePeriodName == other.leavePeriodName &&
        combineDate == other.combineDate &&
        leaveCountDay == other.leaveCountDay &&
        leaveReason == other.leaveReason &&
        leaveStatus == other.leaveStatus &&
        leaveStatusApprove == other.leaveStatusApprove &&
        headApproveName == other.headApproveName &&
        empTel == other.empTel &&
        createDatetimeName == other.createDatetimeName &&
        cancelBotton == other.cancelBotton &&
        editBotton == other.editBotton &&
        listEquality.equals(leaveDetails, other.leaveDetails);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        leaveId,
        leaveName,
        leavePeriodName,
        combineDate,
        leaveCountDay,
        leaveReason,
        leaveStatus,
        leaveStatusApprove,
        headApproveName,
        empTel,
        createDatetimeName,
        cancelBotton,
        editBotton,
        leaveDetails
      ]);
}

LeaveRequestRowStruct createLeaveRequestRowStruct({
  String? id,
  String? leaveId,
  String? leaveName,
  String? leavePeriodName,
  String? combineDate,
  String? leaveCountDay,
  String? leaveReason,
  String? leaveStatus,
  String? leaveStatusApprove,
  String? headApproveName,
  String? empTel,
  String? createDatetimeName,
  bool? cancelBotton,
  bool? editBotton,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveRequestRowStruct(
      id: id,
      leaveId: leaveId,
      leaveName: leaveName,
      leavePeriodName: leavePeriodName,
      combineDate: combineDate,
      leaveCountDay: leaveCountDay,
      leaveReason: leaveReason,
      leaveStatus: leaveStatus,
      leaveStatusApprove: leaveStatusApprove,
      headApproveName: headApproveName,
      empTel: empTel,
      createDatetimeName: createDatetimeName,
      cancelBotton: cancelBotton,
      editBotton: editBotton,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveRequestRowStruct? updateLeaveRequestRowStruct(
  LeaveRequestRowStruct? leaveRequestRow, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveRequestRow
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveRequestRowStructData(
  Map<String, dynamic> firestoreData,
  LeaveRequestRowStruct? leaveRequestRow,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveRequestRow == null) {
    return;
  }
  if (leaveRequestRow.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveRequestRow.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveRequestRowData =
      getLeaveRequestRowFirestoreData(leaveRequestRow, forFieldValue);
  final nestedData =
      leaveRequestRowData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveRequestRow.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveRequestRowFirestoreData(
  LeaveRequestRowStruct? leaveRequestRow, [
  bool forFieldValue = false,
]) {
  if (leaveRequestRow == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveRequestRow.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveRequestRow.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveRequestRowListFirestoreData(
  List<LeaveRequestRowStruct>? leaveRequestRows,
) =>
    leaveRequestRows
        ?.map((e) => getLeaveRequestRowFirestoreData(e, true))
        .toList() ??
    [];
