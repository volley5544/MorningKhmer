// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AgeStruct extends FFFirebaseStruct {
  AgeStruct({
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

  static AgeStruct fromMap(Map<String, dynamic> data) => AgeStruct(
        year: data['year'] as String?,
        month: data['month'] as String?,
        day: data['day'] as String?,
      );

  static AgeStruct? maybeFromMap(dynamic data) =>
      data is Map ? AgeStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static AgeStruct fromSerializableMap(Map<String, dynamic> data) => AgeStruct(
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
  String toString() => 'AgeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgeStruct &&
        year == other.year &&
        month == other.month &&
        day == other.day;
  }

  @override
  int get hashCode => const ListEquality().hash([year, month, day]);
}

AgeStruct createAgeStruct({
  String? year,
  String? month,
  String? day,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AgeStruct(
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

AgeStruct? updateAgeStruct(
  AgeStruct? age, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    age
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAgeStructData(
  Map<String, dynamic> firestoreData,
  AgeStruct? age,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (age == null) {
    return;
  }
  if (age.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && age.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ageData = getAgeFirestoreData(age, forFieldValue);
  final nestedData = ageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = age.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAgeFirestoreData(
  AgeStruct? age, [
  bool forFieldValue = false,
]) {
  if (age == null) {
    return {};
  }
  final firestoreData = mapToFirestore(age.toMap());

  // Add any Firestore field values
  mapToFirestore(age.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAgeListFirestoreData(
  List<AgeStruct>? ages,
) =>
    ages?.map((e) => getAgeFirestoreData(e, true)).toList() ?? [];
