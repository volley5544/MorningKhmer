import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannersRecord extends FirestoreRecord {
  BannersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "banner_name" field.
  String? _bannerName;
  String get bannerName => _bannerName ?? '';
  bool hasBannerName() => _bannerName != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "blur_hash" field.
  String? _blurHash;
  String get blurHash => _blurHash ?? '';
  bool hasBlurHash() => _blurHash != null;

  // "link_url" field.
  String? _linkUrl;
  String get linkUrl => _linkUrl ?? '';
  bool hasLinkUrl() => _linkUrl != null;

  // "open_type" field.
  String? _openType;
  String get openType => _openType ?? '';
  bool hasOpenType() => _openType != null;

  // "sort" field.
  int? _sort;
  int get sort => _sort ?? 0;
  bool hasSort() => _sort != null;

  // "updated_time" field.
  DateTime? _updatedTime;
  DateTime? get updatedTime => _updatedTime;
  bool hasUpdatedTime() => _updatedTime != null;

  void _initializeFields() {
    _bannerName = snapshotData['banner_name'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
    _blurHash = snapshotData['blur_hash'] as String?;
    _linkUrl = snapshotData['link_url'] as String?;
    _openType = snapshotData['open_type'] as String?;
    _sort = castToType<int>(snapshotData['sort']);
    _updatedTime = snapshotData['updated_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Banners');

  static Stream<BannersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BannersRecord.fromSnapshot(s));

  static Future<BannersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BannersRecord.fromSnapshot(s));

  static BannersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BannersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BannersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BannersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BannersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BannersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBannersRecordData({
  String? bannerName,
  String? imageUrl,
  String? blurHash,
  String? linkUrl,
  String? openType,
  int? sort,
  DateTime? updatedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'banner_name': bannerName,
      'image_url': imageUrl,
      'blur_hash': blurHash,
      'link_url': linkUrl,
      'open_type': openType,
      'sort': sort,
      'updated_time': updatedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class BannersRecordDocumentEquality implements Equality<BannersRecord> {
  const BannersRecordDocumentEquality();

  @override
  bool equals(BannersRecord? e1, BannersRecord? e2) {
    return e1?.bannerName == e2?.bannerName &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.blurHash == e2?.blurHash &&
        e1?.linkUrl == e2?.linkUrl &&
        e1?.openType == e2?.openType &&
        e1?.sort == e2?.sort &&
        e1?.updatedTime == e2?.updatedTime;
  }

  @override
  int hash(BannersRecord? e) => const ListEquality().hash([
        e?.bannerName,
        e?.imageUrl,
        e?.blurHash,
        e?.linkUrl,
        e?.openType,
        e?.sort,
        e?.updatedTime
      ]);

  @override
  bool isValidKey(Object? o) => o is BannersRecord;
}
