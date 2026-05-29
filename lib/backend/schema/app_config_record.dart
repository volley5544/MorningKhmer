import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppConfigRecord extends FirestoreRecord {
  AppConfigRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "url_storage" field.
  UrlStorageDataModelStruct? _urlStorage;
  UrlStorageDataModelStruct get urlStorage =>
      _urlStorage ?? UrlStorageDataModelStruct();
  bool hasUrlStorage() => _urlStorage != null;

  // "app_version" field.
  AppVersionDataModelStruct? _appVersion;
  AppVersionDataModelStruct get appVersion =>
      _appVersion ?? AppVersionDataModelStruct();
  bool hasAppVersion() => _appVersion != null;

  void _initializeFields() {
    _urlStorage = snapshotData['url_storage'] is UrlStorageDataModelStruct
        ? snapshotData['url_storage']
        : UrlStorageDataModelStruct.maybeFromMap(snapshotData['url_storage']);
    _appVersion = snapshotData['app_version'] is AppVersionDataModelStruct
        ? snapshotData['app_version']
        : AppVersionDataModelStruct.maybeFromMap(snapshotData['app_version']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AppConfig');

  static Stream<AppConfigRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppConfigRecord.fromSnapshot(s));

  static Future<AppConfigRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppConfigRecord.fromSnapshot(s));

  static AppConfigRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppConfigRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppConfigRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppConfigRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppConfigRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppConfigRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppConfigRecordData({
  UrlStorageDataModelStruct? urlStorage,
  AppVersionDataModelStruct? appVersion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'url_storage': UrlStorageDataModelStruct().toMap(),
      'app_version': AppVersionDataModelStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "url_storage" field.
  addUrlStorageDataModelStructData(firestoreData, urlStorage, 'url_storage');

  // Handle nested data for "app_version" field.
  addAppVersionDataModelStructData(firestoreData, appVersion, 'app_version');

  return firestoreData;
}

class AppConfigRecordDocumentEquality implements Equality<AppConfigRecord> {
  const AppConfigRecordDocumentEquality();

  @override
  bool equals(AppConfigRecord? e1, AppConfigRecord? e2) {
    return e1?.urlStorage == e2?.urlStorage && e1?.appVersion == e2?.appVersion;
  }

  @override
  int hash(AppConfigRecord? e) =>
      const ListEquality().hash([e?.urlStorage, e?.appVersion]);

  @override
  bool isValidKey(Object? o) => o is AppConfigRecord;
}
