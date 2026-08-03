// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MenuConfigStruct extends FFFirebaseStruct {
  MenuConfigStruct({
    bool? checkin,
    bool? leave,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _checkin = checkin,
        _leave = leave,
        super(firestoreUtilData);

  // "checkin" field.
  bool? _checkin;
  bool get checkin => _checkin ?? false;
  set checkin(bool? val) => _checkin = val;

  bool hasCheckin() => _checkin != null;

  // "leave" field.
  bool? _leave;
  bool get leave => _leave ?? false;
  set leave(bool? val) => _leave = val;

  bool hasLeave() => _leave != null;

  static MenuConfigStruct fromMap(Map<String, dynamic> data) =>
      MenuConfigStruct(
        checkin: data['checkin'] as bool?,
        leave: data['leave'] as bool?,
      );

  static MenuConfigStruct? maybeFromMap(dynamic data) => data is Map
      ? MenuConfigStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'checkin': _checkin,
        'leave': _leave,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'checkin': serializeParam(
          _checkin,
          ParamType.bool,
        ),
        'leave': serializeParam(
          _leave,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MenuConfigStruct fromSerializableMap(Map<String, dynamic> data) =>
      MenuConfigStruct(
        checkin: deserializeParam(
          data['checkin'],
          ParamType.bool,
          false,
        ),
        leave: deserializeParam(
          data['leave'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MenuConfigStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MenuConfigStruct &&
        checkin == other.checkin &&
        leave == other.leave;
  }

  @override
  int get hashCode => const ListEquality().hash([checkin, leave]);
}

MenuConfigStruct createMenuConfigStruct({
  bool? checkin,
  bool? leave,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MenuConfigStruct(
      checkin: checkin,
      leave: leave,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MenuConfigStruct? updateMenuConfigStruct(
  MenuConfigStruct? menuConfig, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    menuConfig
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMenuConfigStructData(
  Map<String, dynamic> firestoreData,
  MenuConfigStruct? menuConfig,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (menuConfig == null) {
    return;
  }
  if (menuConfig.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && menuConfig.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final menuConfigData = getMenuConfigFirestoreData(menuConfig, forFieldValue);
  final nestedData = menuConfigData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = menuConfig.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMenuConfigFirestoreData(
  MenuConfigStruct? menuConfig, [
  bool forFieldValue = false,
]) {
  if (menuConfig == null) {
    return {};
  }
  final firestoreData = mapToFirestore(menuConfig.toMap());

  // Add any Firestore field values
  mapToFirestore(menuConfig.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMenuConfigListFirestoreData(
  List<MenuConfigStruct>? menuConfigs,
) =>
    menuConfigs?.map((e) => getMenuConfigFirestoreData(e, true)).toList() ?? [];
