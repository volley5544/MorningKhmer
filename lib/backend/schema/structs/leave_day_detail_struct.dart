// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// One calendar day inside a leave request.
class LeaveDayDetailStruct extends FFFirebaseStruct {
  LeaveDayDetailStruct({
    /// LeaveDayDetail.LEAVE_ID
    String? leaveId,

    /// LeaveDayDetail.LEAVE_NAME
    String? leaveName,

    /// LeaveDayDetail.LEAVE_DATE_FORMAT
    String? leaveDateFormat,

    /// LeaveDayDetail.LEAVE_PERIOD
    String? leavePeriod,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _leaveId = leaveId,
        _leaveName = leaveName,
        _leaveDateFormat = leaveDateFormat,
        _leavePeriod = leavePeriod,
        super(firestoreUtilData);

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

  // "LEAVE_DATE_FORMAT" field.
  String? _leaveDateFormat;
  String get leaveDateFormat => _leaveDateFormat ?? '';
  set leaveDateFormat(String? val) => _leaveDateFormat = val;

  bool hasLeaveDateFormat() => _leaveDateFormat != null;

  // "LEAVE_PERIOD" field.
  String? _leavePeriod;
  String get leavePeriod => _leavePeriod ?? '';
  set leavePeriod(String? val) => _leavePeriod = val;

  bool hasLeavePeriod() => _leavePeriod != null;

  static LeaveDayDetailStruct fromMap(Map<String, dynamic> data) =>
      LeaveDayDetailStruct(
        leaveId: data['LEAVE_ID'] as String?,
        leaveName: data['LEAVE_NAME'] as String?,
        leaveDateFormat: data['LEAVE_DATE_FORMAT'] as String?,
        leavePeriod: data['LEAVE_PERIOD'] as String?,
      );

  static LeaveDayDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveDayDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'LEAVE_ID': _leaveId,
        'LEAVE_NAME': _leaveName,
        'LEAVE_DATE_FORMAT': _leaveDateFormat,
        'LEAVE_PERIOD': _leavePeriod,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'LEAVE_ID': serializeParam(
          _leaveId,
          ParamType.String,
        ),
        'LEAVE_NAME': serializeParam(
          _leaveName,
          ParamType.String,
        ),
        'LEAVE_DATE_FORMAT': serializeParam(
          _leaveDateFormat,
          ParamType.String,
        ),
        'LEAVE_PERIOD': serializeParam(
          _leavePeriod,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeaveDayDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveDayDetailStruct(
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
        leaveDateFormat: deserializeParam(
          data['LEAVE_DATE_FORMAT'],
          ParamType.String,
          false,
        ),
        leavePeriod: deserializeParam(
          data['LEAVE_PERIOD'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeaveDayDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveDayDetailStruct &&
        leaveId == other.leaveId &&
        leaveName == other.leaveName &&
        leaveDateFormat == other.leaveDateFormat &&
        leavePeriod == other.leavePeriod;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([leaveId, leaveName, leaveDateFormat, leavePeriod]);
}

LeaveDayDetailStruct createLeaveDayDetailStruct({
  String? leaveId,
  String? leaveName,
  String? leaveDateFormat,
  String? leavePeriod,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveDayDetailStruct(
      leaveId: leaveId,
      leaveName: leaveName,
      leaveDateFormat: leaveDateFormat,
      leavePeriod: leavePeriod,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveDayDetailStruct? updateLeaveDayDetailStruct(
  LeaveDayDetailStruct? leaveDayDetail, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveDayDetail
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveDayDetailStructData(
  Map<String, dynamic> firestoreData,
  LeaveDayDetailStruct? leaveDayDetail,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveDayDetail == null) {
    return;
  }
  if (leaveDayDetail.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveDayDetail.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveDayDetailData =
      getLeaveDayDetailFirestoreData(leaveDayDetail, forFieldValue);
  final nestedData =
      leaveDayDetailData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveDayDetail.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveDayDetailFirestoreData(
  LeaveDayDetailStruct? leaveDayDetail, [
  bool forFieldValue = false,
]) {
  if (leaveDayDetail == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveDayDetail.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveDayDetail.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveDayDetailListFirestoreData(
  List<LeaveDayDetailStruct>? leaveDayDetails,
) =>
    leaveDayDetails
        ?.map((e) => getLeaveDayDetailFirestoreData(e, true))
        .toList() ??
    [];
