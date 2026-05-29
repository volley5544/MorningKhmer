// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ServiceDurationStruct extends FFFirebaseStruct {
  ServiceDurationStruct({
    String? year,
    String? month,
    String? day,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _year = year,
        _month = month,
        _day = day,
        super(firestoreUtilData);

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  set year(String? val) => _year = val;

  bool hasYear() => _year != null;

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  set month(String? val) => _month = val;

  bool hasMonth() => _month != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  set day(String? val) => _day = val;

  bool hasDay() => _day != null;

  static ServiceDurationStruct fromMap(Map<String, dynamic> data) =>
      ServiceDurationStruct(
        year: data['year'] as String?,
        month: data['month'] as String?,
        day: data['day'] as String?,
      );

  static ServiceDurationStruct? maybeFromMap(dynamic data) => data is Map
      ? ServiceDurationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'year': _year,
        'month': _month,
        'day': _day,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'year': serializeParam(
          _year,
          ParamType.String,
        ),
        'month': serializeParam(
          _month,
          ParamType.String,
        ),
        'day': serializeParam(
          _day,
          ParamType.String,
        ),
      }.withoutNulls;

  static ServiceDurationStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServiceDurationStruct(
        year: deserializeParam(
          data['year'],
          ParamType.String,
          false,
        ),
        month: deserializeParam(
          data['month'],
          ParamType.String,
          false,
        ),
        day: deserializeParam(
          data['day'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ServiceDurationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServiceDurationStruct &&
        year == other.year &&
        month == other.month &&
        day == other.day;
  }

  @override
  int get hashCode => const ListEquality().hash([year, month, day]);
}

ServiceDurationStruct createServiceDurationStruct({
  String? year,
  String? month,
  String? day,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ServiceDurationStruct(
      year: year,
      month: month,
      day: day,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ServiceDurationStruct? updateServiceDurationStruct(
  ServiceDurationStruct? serviceDuration, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    serviceDuration
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addServiceDurationStructData(
  Map<String, dynamic> firestoreData,
  ServiceDurationStruct? serviceDuration,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (serviceDuration == null) {
    return;
  }
  if (serviceDuration.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && serviceDuration.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final serviceDurationData =
      getServiceDurationFirestoreData(serviceDuration, forFieldValue);
  final nestedData =
      serviceDurationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = serviceDuration.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getServiceDurationFirestoreData(
  ServiceDurationStruct? serviceDuration, [
  bool forFieldValue = false,
]) {
  if (serviceDuration == null) {
    return {};
  }
  final firestoreData = mapToFirestore(serviceDuration.toMap());

  // Add any Firestore field values
  mapToFirestore(serviceDuration.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getServiceDurationListFirestoreData(
  List<ServiceDurationStruct>? serviceDurations,
) =>
    serviceDurations
        ?.map((e) => getServiceDurationFirestoreData(e, true))
        .toList() ??
    [];
