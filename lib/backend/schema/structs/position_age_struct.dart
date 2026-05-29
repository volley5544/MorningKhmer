// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PositionAgeStruct extends FFFirebaseStruct {
  PositionAgeStruct({
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

  static PositionAgeStruct fromMap(Map<String, dynamic> data) =>
      PositionAgeStruct(
        year: data['year'] as String?,
        month: data['month'] as String?,
        day: data['day'] as String?,
      );

  static PositionAgeStruct? maybeFromMap(dynamic data) => data is Map
      ? PositionAgeStruct.fromMap(data.cast<String, dynamic>())
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

  static PositionAgeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PositionAgeStruct(
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
  String toString() => 'PositionAgeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PositionAgeStruct &&
        year == other.year &&
        month == other.month &&
        day == other.day;
  }

  @override
  int get hashCode => const ListEquality().hash([year, month, day]);
}

PositionAgeStruct createPositionAgeStruct({
  String? year,
  String? month,
  String? day,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PositionAgeStruct(
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

PositionAgeStruct? updatePositionAgeStruct(
  PositionAgeStruct? positionAge, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    positionAge
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPositionAgeStructData(
  Map<String, dynamic> firestoreData,
  PositionAgeStruct? positionAge,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (positionAge == null) {
    return;
  }
  if (positionAge.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && positionAge.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final positionAgeData =
      getPositionAgeFirestoreData(positionAge, forFieldValue);
  final nestedData =
      positionAgeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = positionAge.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPositionAgeFirestoreData(
  PositionAgeStruct? positionAge, [
  bool forFieldValue = false,
]) {
  if (positionAge == null) {
    return {};
  }
  final firestoreData = mapToFirestore(positionAge.toMap());

  // Add any Firestore field values
  mapToFirestore(positionAge.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPositionAgeListFirestoreData(
  List<PositionAgeStruct>? positionAges,
) =>
    positionAges?.map((e) => getPositionAgeFirestoreData(e, true)).toList() ??
    [];
