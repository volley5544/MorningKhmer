// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Decided requests for one year, split by outcome.
class LeaveAllBucketStruct extends FFFirebaseStruct {
  LeaveAllBucketStruct({
    /// LeaveAllBucket.Approve
    List<LeaveAllMonthStruct>? approve,

    /// LeaveAllBucket.NotApprove
    List<LeaveAllMonthStruct>? notApprove,

    /// LeaveAllBucket.Cancel
    List<LeaveAllMonthStruct>? cancel,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _approve = approve,
        _notApprove = notApprove,
        _cancel = cancel,
        super(firestoreUtilData);

  // "Approve" field.
  List<LeaveAllMonthStruct>? _approve;
  List<LeaveAllMonthStruct> get approve => _approve ?? const [];
  set approve(List<LeaveAllMonthStruct>? val) => _approve = val;

  void updateApprove(Function(List<LeaveAllMonthStruct>) updateFn) {
    updateFn(_approve ??= []);
  }

  bool hasApprove() => _approve != null;

  // "NotApprove" field.
  List<LeaveAllMonthStruct>? _notApprove;
  List<LeaveAllMonthStruct> get notApprove => _notApprove ?? const [];
  set notApprove(List<LeaveAllMonthStruct>? val) => _notApprove = val;

  void updateNotApprove(Function(List<LeaveAllMonthStruct>) updateFn) {
    updateFn(_notApprove ??= []);
  }

  bool hasNotApprove() => _notApprove != null;

  // "Cancel" field.
  List<LeaveAllMonthStruct>? _cancel;
  List<LeaveAllMonthStruct> get cancel => _cancel ?? const [];
  set cancel(List<LeaveAllMonthStruct>? val) => _cancel = val;

  void updateCancel(Function(List<LeaveAllMonthStruct>) updateFn) {
    updateFn(_cancel ??= []);
  }

  bool hasCancel() => _cancel != null;

  static LeaveAllBucketStruct fromMap(Map<String, dynamic> data) =>
      LeaveAllBucketStruct(
        approve: getStructList(
          data['Approve'],
          LeaveAllMonthStruct.fromMap,
        ),
        notApprove: getStructList(
          data['NotApprove'],
          LeaveAllMonthStruct.fromMap,
        ),
        cancel: getStructList(
          data['Cancel'],
          LeaveAllMonthStruct.fromMap,
        ),
      );

  static LeaveAllBucketStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveAllBucketStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Approve': _approve?.map((e) => e.toMap()).toList(),
        'NotApprove': _notApprove?.map((e) => e.toMap()).toList(),
        'Cancel': _cancel?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Approve': serializeParam(
          _approve,
          ParamType.DataStruct,
          isList: true,
        ),
        'NotApprove': serializeParam(
          _notApprove,
          ParamType.DataStruct,
          isList: true,
        ),
        'Cancel': serializeParam(
          _cancel,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LeaveAllBucketStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveAllBucketStruct(
        approve: deserializeStructParam<LeaveAllMonthStruct>(
          data['Approve'],
          ParamType.DataStruct,
          true,
          structBuilder: LeaveAllMonthStruct.fromSerializableMap,
        ),
        notApprove: deserializeStructParam<LeaveAllMonthStruct>(
          data['NotApprove'],
          ParamType.DataStruct,
          true,
          structBuilder: LeaveAllMonthStruct.fromSerializableMap,
        ),
        cancel: deserializeStructParam<LeaveAllMonthStruct>(
          data['Cancel'],
          ParamType.DataStruct,
          true,
          structBuilder: LeaveAllMonthStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaveAllBucketStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LeaveAllBucketStruct &&
        listEquality.equals(approve, other.approve) &&
        listEquality.equals(notApprove, other.notApprove) &&
        listEquality.equals(cancel, other.cancel);
  }

  @override
  int get hashCode => const ListEquality().hash([approve, notApprove, cancel]);
}

LeaveAllBucketStruct createLeaveAllBucketStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveAllBucketStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveAllBucketStruct? updateLeaveAllBucketStruct(
  LeaveAllBucketStruct? leaveAllBucket, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveAllBucket
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveAllBucketStructData(
  Map<String, dynamic> firestoreData,
  LeaveAllBucketStruct? leaveAllBucket,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveAllBucket == null) {
    return;
  }
  if (leaveAllBucket.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveAllBucket.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveAllBucketData =
      getLeaveAllBucketFirestoreData(leaveAllBucket, forFieldValue);
  final nestedData =
      leaveAllBucketData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveAllBucket.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveAllBucketFirestoreData(
  LeaveAllBucketStruct? leaveAllBucket, [
  bool forFieldValue = false,
]) {
  if (leaveAllBucket == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveAllBucket.toMap());

  // Add any Firestore field values
  mapToFirestore(leaveAllBucket.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveAllBucketListFirestoreData(
  List<LeaveAllBucketStruct>? leaveAllBuckets,
) =>
    leaveAllBuckets
        ?.map((e) => getLeaveAllBucketFirestoreData(e, true))
        .toList() ??
    [];
