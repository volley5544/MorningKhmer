// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationDataModelStruct extends FFFirebaseStruct {
  LocationDataModelStruct({
    List<String>? group,
    List<String>? multiRegion,
    String? empCode,
    String? fullname,
    String? position,
    int? total,
    List<ListLocationStruct>? listLocation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _group = group,
        _multiRegion = multiRegion,
        _empCode = empCode,
        _fullname = fullname,
        _position = position,
        _total = total,
        _listLocation = listLocation,
        super(firestoreUtilData);

  // "group" field.
  List<String>? _group;
  List<String> get group => _group ?? const [];
  set group(List<String>? val) => _group = val;

  void updateGroup(Function(List<String>) updateFn) {
    updateFn(_group ??= []);
  }

  bool hasGroup() => _group != null;

  // "multi_region" field.
  List<String>? _multiRegion;
  List<String> get multiRegion => _multiRegion ?? const [];
  set multiRegion(List<String>? val) => _multiRegion = val;

  void updateMultiRegion(Function(List<String>) updateFn) {
    updateFn(_multiRegion ??= []);
  }

  bool hasMultiRegion() => _multiRegion != null;

  // "emp_code" field.
  String? _empCode;
  String get empCode => _empCode ?? '';
  set empCode(String? val) => _empCode = val;

  bool hasEmpCode() => _empCode != null;

  // "fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  set fullname(String? val) => _fullname = val;

  bool hasFullname() => _fullname != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "list_location" field.
  List<ListLocationStruct>? _listLocation;
  List<ListLocationStruct> get listLocation => _listLocation ?? const [];
  set listLocation(List<ListLocationStruct>? val) => _listLocation = val;

  void updateListLocation(Function(List<ListLocationStruct>) updateFn) {
    updateFn(_listLocation ??= []);
  }

  bool hasListLocation() => _listLocation != null;

  static LocationDataModelStruct fromMap(Map<String, dynamic> data) =>
      LocationDataModelStruct(
        group: getDataList(data['group']),
        multiRegion: getDataList(data['multi_region']),
        empCode: data['emp_code'] as String?,
        fullname: data['fullname'] as String?,
        position: data['position'] as String?,
        total: castToType<int>(data['total']),
        listLocation: getStructList(
          data['list_location'],
          ListLocationStruct.fromMap,
        ),
      );

  static LocationDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? LocationDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'group': _group,
        'multi_region': _multiRegion,
        'emp_code': _empCode,
        'fullname': _fullname,
        'position': _position,
        'total': _total,
        'list_location': _listLocation?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'group': serializeParam(
          _group,
          ParamType.String,
          isList: true,
        ),
        'multi_region': serializeParam(
          _multiRegion,
          ParamType.String,
          isList: true,
        ),
        'emp_code': serializeParam(
          _empCode,
          ParamType.String,
        ),
        'fullname': serializeParam(
          _fullname,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'list_location': serializeParam(
          _listLocation,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LocationDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LocationDataModelStruct(
        group: deserializeParam<String>(
          data['group'],
          ParamType.String,
          true,
        ),
        multiRegion: deserializeParam<String>(
          data['multi_region'],
          ParamType.String,
          true,
        ),
        empCode: deserializeParam(
          data['emp_code'],
          ParamType.String,
          false,
        ),
        fullname: deserializeParam(
          data['fullname'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        listLocation: deserializeStructParam<ListLocationStruct>(
          data['list_location'],
          ParamType.DataStruct,
          true,
          structBuilder: ListLocationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LocationDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LocationDataModelStruct &&
        listEquality.equals(group, other.group) &&
        listEquality.equals(multiRegion, other.multiRegion) &&
        empCode == other.empCode &&
        fullname == other.fullname &&
        position == other.position &&
        total == other.total &&
        listEquality.equals(listLocation, other.listLocation);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [group, multiRegion, empCode, fullname, position, total, listLocation]);
}

LocationDataModelStruct createLocationDataModelStruct({
  String? empCode,
  String? fullname,
  String? position,
  int? total,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocationDataModelStruct(
      empCode: empCode,
      fullname: fullname,
      position: position,
      total: total,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocationDataModelStruct? updateLocationDataModelStruct(
  LocationDataModelStruct? locationDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    locationDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLocationDataModelStructData(
  Map<String, dynamic> firestoreData,
  LocationDataModelStruct? locationDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (locationDataModel == null) {
    return;
  }
  if (locationDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && locationDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final locationDataModelData =
      getLocationDataModelFirestoreData(locationDataModel, forFieldValue);
  final nestedData =
      locationDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = locationDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocationDataModelFirestoreData(
  LocationDataModelStruct? locationDataModel, [
  bool forFieldValue = false,
]) {
  if (locationDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(locationDataModel.toMap());

  // Add any Firestore field values
  mapToFirestore(locationDataModel.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocationDataModelListFirestoreData(
  List<LocationDataModelStruct>? locationDataModels,
) =>
    locationDataModels
        ?.map((e) => getLocationDataModelFirestoreData(e, true))
        .toList() ??
    [];
