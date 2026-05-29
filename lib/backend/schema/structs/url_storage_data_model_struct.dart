// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UrlStorageDataModelStruct extends FFFirebaseStruct {
  UrlStorageDataModelStruct({
    String? baseUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _baseUrl = baseUrl,
        super(firestoreUtilData);

  // "base_url" field.
  String? _baseUrl;
  String get baseUrl => _baseUrl ?? '';
  set baseUrl(String? val) => _baseUrl = val;

  bool hasBaseUrl() => _baseUrl != null;

  static UrlStorageDataModelStruct fromMap(Map<String, dynamic> data) =>
      UrlStorageDataModelStruct(
        baseUrl: data['base_url'] as String?,
      );

  static UrlStorageDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UrlStorageDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'base_url': _baseUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'base_url': serializeParam(
          _baseUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static UrlStorageDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UrlStorageDataModelStruct(
        baseUrl: deserializeParam(
          data['base_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UrlStorageDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UrlStorageDataModelStruct && baseUrl == other.baseUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([baseUrl]);
}

UrlStorageDataModelStruct createUrlStorageDataModelStruct({
  String? baseUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UrlStorageDataModelStruct(
      baseUrl: baseUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UrlStorageDataModelStruct? updateUrlStorageDataModelStruct(
  UrlStorageDataModelStruct? urlStorageDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    urlStorageDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUrlStorageDataModelStructData(
  Map<String, dynamic> firestoreData,
  UrlStorageDataModelStruct? urlStorageDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (urlStorageDataModel == null) {
    return;
  }
  if (urlStorageDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && urlStorageDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final urlStorageDataModelData =
      getUrlStorageDataModelFirestoreData(urlStorageDataModel, forFieldValue);
  final nestedData =
      urlStorageDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      urlStorageDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUrlStorageDataModelFirestoreData(
  UrlStorageDataModelStruct? urlStorageDataModel, [
  bool forFieldValue = false,
]) {
  if (urlStorageDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(urlStorageDataModel.toMap());

  // Add any Firestore field values
  mapToFirestore(urlStorageDataModel.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUrlStorageDataModelListFirestoreData(
  List<UrlStorageDataModelStruct>? urlStorageDataModels,
) =>
    urlStorageDataModels
        ?.map((e) => getUrlStorageDataModelFirestoreData(e, true))
        .toList() ??
    [];
