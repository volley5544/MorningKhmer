// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ListLocationStruct extends FFFirebaseStruct {
  ListLocationStruct({
    String? id,
    String? empCode,
    String? nameLastname,
    String? branchCode,
    String? branchName,
    String? latitude,
    String? longitude,
    String? radius,
    String? deleted,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _empCode = empCode,
        _nameLastname = nameLastname,
        _branchCode = branchCode,
        _branchName = branchName,
        _latitude = latitude,
        _longitude = longitude,
        _radius = radius,
        _deleted = deleted,
        super(firestoreUtilData);

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "EMP_CODE" field.
  String? _empCode;
  String get empCode => _empCode ?? '';
  set empCode(String? val) => _empCode = val;

  bool hasEmpCode() => _empCode != null;

  // "NAME_LASTNAME" field.
  String? _nameLastname;
  String get nameLastname => _nameLastname ?? '';
  set nameLastname(String? val) => _nameLastname = val;

  bool hasNameLastname() => _nameLastname != null;

  // "BRANCH_CODE" field.
  String? _branchCode;
  String get branchCode => _branchCode ?? '';
  set branchCode(String? val) => _branchCode = val;

  bool hasBranchCode() => _branchCode != null;

  // "BRANCH_NAME" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  set branchName(String? val) => _branchName = val;

  bool hasBranchName() => _branchName != null;

  // "LATITUDE" field.
  String? _latitude;
  String get latitude => _latitude ?? '';
  set latitude(String? val) => _latitude = val;

  bool hasLatitude() => _latitude != null;

  // "LONGITUDE" field.
  String? _longitude;
  String get longitude => _longitude ?? '';
  set longitude(String? val) => _longitude = val;

  bool hasLongitude() => _longitude != null;

  // "RADIUS" field.
  String? _radius;
  String get radius => _radius ?? '';
  set radius(String? val) => _radius = val;

  bool hasRadius() => _radius != null;

  // "DELETED" field.
  String? _deleted;
  String get deleted => _deleted ?? '';
  set deleted(String? val) => _deleted = val;

  bool hasDeleted() => _deleted != null;

  static ListLocationStruct fromMap(Map<String, dynamic> data) =>
      ListLocationStruct(
        id: data['ID'] as String?,
        empCode: data['EMP_CODE'] as String?,
        nameLastname: data['NAME_LASTNAME'] as String?,
        branchCode: data['BRANCH_CODE'] as String?,
        branchName: data['BRANCH_NAME'] as String?,
        latitude: data['LATITUDE'] as String?,
        longitude: data['LONGITUDE'] as String?,
        radius: data['RADIUS'] as String?,
        deleted: data['DELETED'] as String?,
      );

  static ListLocationStruct? maybeFromMap(dynamic data) => data is Map
      ? ListLocationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'EMP_CODE': _empCode,
        'NAME_LASTNAME': _nameLastname,
        'BRANCH_CODE': _branchCode,
        'BRANCH_NAME': _branchName,
        'LATITUDE': _latitude,
        'LONGITUDE': _longitude,
        'RADIUS': _radius,
        'DELETED': _deleted,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.String,
        ),
        'EMP_CODE': serializeParam(
          _empCode,
          ParamType.String,
        ),
        'NAME_LASTNAME': serializeParam(
          _nameLastname,
          ParamType.String,
        ),
        'BRANCH_CODE': serializeParam(
          _branchCode,
          ParamType.String,
        ),
        'BRANCH_NAME': serializeParam(
          _branchName,
          ParamType.String,
        ),
        'LATITUDE': serializeParam(
          _latitude,
          ParamType.String,
        ),
        'LONGITUDE': serializeParam(
          _longitude,
          ParamType.String,
        ),
        'RADIUS': serializeParam(
          _radius,
          ParamType.String,
        ),
        'DELETED': serializeParam(
          _deleted,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListLocationStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListLocationStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.String,
          false,
        ),
        empCode: deserializeParam(
          data['EMP_CODE'],
          ParamType.String,
          false,
        ),
        nameLastname: deserializeParam(
          data['NAME_LASTNAME'],
          ParamType.String,
          false,
        ),
        branchCode: deserializeParam(
          data['BRANCH_CODE'],
          ParamType.String,
          false,
        ),
        branchName: deserializeParam(
          data['BRANCH_NAME'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['LATITUDE'],
          ParamType.String,
          false,
        ),
        longitude: deserializeParam(
          data['LONGITUDE'],
          ParamType.String,
          false,
        ),
        radius: deserializeParam(
          data['RADIUS'],
          ParamType.String,
          false,
        ),
        deleted: deserializeParam(
          data['DELETED'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListLocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListLocationStruct &&
        id == other.id &&
        empCode == other.empCode &&
        nameLastname == other.nameLastname &&
        branchCode == other.branchCode &&
        branchName == other.branchName &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        radius == other.radius &&
        deleted == other.deleted;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        empCode,
        nameLastname,
        branchCode,
        branchName,
        latitude,
        longitude,
        radius,
        deleted
      ]);
}

ListLocationStruct createListLocationStruct({
  String? id,
  String? empCode,
  String? nameLastname,
  String? branchCode,
  String? branchName,
  String? latitude,
  String? longitude,
  String? radius,
  String? deleted,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListLocationStruct(
      id: id,
      empCode: empCode,
      nameLastname: nameLastname,
      branchCode: branchCode,
      branchName: branchName,
      latitude: latitude,
      longitude: longitude,
      radius: radius,
      deleted: deleted,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListLocationStruct? updateListLocationStruct(
  ListLocationStruct? listLocation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listLocation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListLocationStructData(
  Map<String, dynamic> firestoreData,
  ListLocationStruct? listLocation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listLocation == null) {
    return;
  }
  if (listLocation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listLocation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listLocationData =
      getListLocationFirestoreData(listLocation, forFieldValue);
  final nestedData =
      listLocationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listLocation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListLocationFirestoreData(
  ListLocationStruct? listLocation, [
  bool forFieldValue = false,
]) {
  if (listLocation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listLocation.toMap());

  // Add any Firestore field values
  mapToFirestore(listLocation.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListLocationListFirestoreData(
  List<ListLocationStruct>? listLocations,
) =>
    listLocations?.map((e) => getListLocationFirestoreData(e, true)).toList() ??
    [];
