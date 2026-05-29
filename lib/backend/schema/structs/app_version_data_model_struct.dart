// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AppVersionDataModelStruct extends FFFirebaseStruct {
  AppVersionDataModelStruct({
    String? versionAndroid,
    String? versionIos,
    int? buildNumberAndroid,
    int? buildNumberIos,
    bool? forceUpdate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _versionAndroid = versionAndroid,
        _versionIos = versionIos,
        _buildNumberAndroid = buildNumberAndroid,
        _buildNumberIos = buildNumberIos,
        _forceUpdate = forceUpdate,
        super(firestoreUtilData);

  // "version_android" field.
  String? _versionAndroid;
  String get versionAndroid => _versionAndroid ?? '';
  set versionAndroid(String? val) => _versionAndroid = val;

  bool hasVersionAndroid() => _versionAndroid != null;

  // "version_ios" field.
  String? _versionIos;
  String get versionIos => _versionIos ?? '';
  set versionIos(String? val) => _versionIos = val;

  bool hasVersionIos() => _versionIos != null;

  // "build_number_android" field.
  int? _buildNumberAndroid;
  int get buildNumberAndroid => _buildNumberAndroid ?? 0;
  set buildNumberAndroid(int? val) => _buildNumberAndroid = val;

  void incrementBuildNumberAndroid(int amount) =>
      buildNumberAndroid = buildNumberAndroid + amount;

  bool hasBuildNumberAndroid() => _buildNumberAndroid != null;

  // "build_number_ios" field.
  int? _buildNumberIos;
  int get buildNumberIos => _buildNumberIos ?? 0;
  set buildNumberIos(int? val) => _buildNumberIos = val;

  void incrementBuildNumberIos(int amount) =>
      buildNumberIos = buildNumberIos + amount;

  bool hasBuildNumberIos() => _buildNumberIos != null;

  // "force_update" field.
  bool? _forceUpdate;
  bool get forceUpdate => _forceUpdate ?? false;
  set forceUpdate(bool? val) => _forceUpdate = val;

  bool hasForceUpdate() => _forceUpdate != null;

  static AppVersionDataModelStruct fromMap(Map<String, dynamic> data) =>
      AppVersionDataModelStruct(
        versionAndroid: data['version_android'] as String?,
        versionIos: data['version_ios'] as String?,
        buildNumberAndroid: castToType<int>(data['build_number_android']),
        buildNumberIos: castToType<int>(data['build_number_ios']),
        forceUpdate: data['force_update'] as bool?,
      );

  static AppVersionDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? AppVersionDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'version_android': _versionAndroid,
        'version_ios': _versionIos,
        'build_number_android': _buildNumberAndroid,
        'build_number_ios': _buildNumberIos,
        'force_update': _forceUpdate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'version_android': serializeParam(
          _versionAndroid,
          ParamType.String,
        ),
        'version_ios': serializeParam(
          _versionIos,
          ParamType.String,
        ),
        'build_number_android': serializeParam(
          _buildNumberAndroid,
          ParamType.int,
        ),
        'build_number_ios': serializeParam(
          _buildNumberIos,
          ParamType.int,
        ),
        'force_update': serializeParam(
          _forceUpdate,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AppVersionDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AppVersionDataModelStruct(
        versionAndroid: deserializeParam(
          data['version_android'],
          ParamType.String,
          false,
        ),
        versionIos: deserializeParam(
          data['version_ios'],
          ParamType.String,
          false,
        ),
        buildNumberAndroid: deserializeParam(
          data['build_number_android'],
          ParamType.int,
          false,
        ),
        buildNumberIos: deserializeParam(
          data['build_number_ios'],
          ParamType.int,
          false,
        ),
        forceUpdate: deserializeParam(
          data['force_update'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AppVersionDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AppVersionDataModelStruct &&
        versionAndroid == other.versionAndroid &&
        versionIos == other.versionIos &&
        buildNumberAndroid == other.buildNumberAndroid &&
        buildNumberIos == other.buildNumberIos &&
        forceUpdate == other.forceUpdate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        versionAndroid,
        versionIos,
        buildNumberAndroid,
        buildNumberIos,
        forceUpdate
      ]);
}

AppVersionDataModelStruct createAppVersionDataModelStruct({
  String? versionAndroid,
  String? versionIos,
  int? buildNumberAndroid,
  int? buildNumberIos,
  bool? forceUpdate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AppVersionDataModelStruct(
      versionAndroid: versionAndroid,
      versionIos: versionIos,
      buildNumberAndroid: buildNumberAndroid,
      buildNumberIos: buildNumberIos,
      forceUpdate: forceUpdate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AppVersionDataModelStruct? updateAppVersionDataModelStruct(
  AppVersionDataModelStruct? appVersionDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    appVersionDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAppVersionDataModelStructData(
  Map<String, dynamic> firestoreData,
  AppVersionDataModelStruct? appVersionDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (appVersionDataModel == null) {
    return;
  }
  if (appVersionDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && appVersionDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final appVersionDataModelData =
      getAppVersionDataModelFirestoreData(appVersionDataModel, forFieldValue);
  final nestedData =
      appVersionDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      appVersionDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAppVersionDataModelFirestoreData(
  AppVersionDataModelStruct? appVersionDataModel, [
  bool forFieldValue = false,
]) {
  if (appVersionDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(appVersionDataModel.toMap());

  // Add any Firestore field values
  mapToFirestore(appVersionDataModel.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAppVersionDataModelListFirestoreData(
  List<AppVersionDataModelStruct>? appVersionDataModels,
) =>
    appVersionDataModels
        ?.map((e) => getAppVersionDataModelFirestoreData(e, true))
        .toList() ??
    [];
