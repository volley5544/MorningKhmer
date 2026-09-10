// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// One selectable leave period (full or half day).
class LeavePeriodOptionStruct extends FFFirebaseStruct {
  LeavePeriodOptionStruct({
    /// LeavePeriodOption.key
    String? key,

    /// LeavePeriodOption.name
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _key = key,
        _name = name,
        super(firestoreUtilData);

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;

  bool hasKey() => _key != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static LeavePeriodOptionStruct fromMap(Map<String, dynamic> data) =>
      LeavePeriodOptionStruct(
        key: data['key'] as String?,
        name: data['name'] as String?,
      );

  static LeavePeriodOptionStruct? maybeFromMap(dynamic data) => data is Map
      ? LeavePeriodOptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeavePeriodOptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LeavePeriodOptionStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeavePeriodOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeavePeriodOptionStruct &&
        key == other.key &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([key, name]);
}

LeavePeriodOptionStruct createLeavePeriodOptionStruct({
  String? key,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeavePeriodOptionStruct(
      key: key,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeavePeriodOptionStruct? updateLeavePeriodOptionStruct(
  LeavePeriodOptionStruct? leavePeriodOption, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leavePeriodOption
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeavePeriodOptionStructData(
  Map<String, dynamic> firestoreData,
  LeavePeriodOptionStruct? leavePeriodOption,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leavePeriodOption == null) {
    return;
  }
  if (leavePeriodOption.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leavePeriodOption.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leavePeriodOptionData =
      getLeavePeriodOptionFirestoreData(leavePeriodOption, forFieldValue);
  final nestedData =
      leavePeriodOptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leavePeriodOption.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeavePeriodOptionFirestoreData(
  LeavePeriodOptionStruct? leavePeriodOption, [
  bool forFieldValue = false,
]) {
  if (leavePeriodOption == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leavePeriodOption.toMap());

  // Add any Firestore field values
  mapToFirestore(leavePeriodOption.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeavePeriodOptionListFirestoreData(
  List<LeavePeriodOptionStruct>? leavePeriodOptions,
) =>
    leavePeriodOptions
        ?.map((e) => getLeavePeriodOptionFirestoreData(e, true))
        .toList() ??
    [];
