// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileDataModelStruct extends FFFirebaseStruct {
  ProfileDataModelStruct({
    String? empCode,
    String? fullName,
    String? nickName,
    String? branchCode,
    String? branchName,
    String? area,
    String? region,
    String? positionName,
    String? department,
    String? unit,
    String? birthDate,
    AgeStruct? age,
    String? hiredDate,
    ServiceDurationStruct? serviceDuration,
    PositionAgeStruct? positionAge,
    String? checkPositionAge,
    String? mobileNumber,
    String? headOfWork,
    String? level,
    String? gpsLevel,
    String? branch,
    String? insurancePlan,
    String? groupCheckin,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _empCode = empCode,
        _fullName = fullName,
        _nickName = nickName,
        _branchCode = branchCode,
        _branchName = branchName,
        _area = area,
        _region = region,
        _positionName = positionName,
        _department = department,
        _unit = unit,
        _birthDate = birthDate,
        _age = age,
        _hiredDate = hiredDate,
        _serviceDuration = serviceDuration,
        _positionAge = positionAge,
        _checkPositionAge = checkPositionAge,
        _mobileNumber = mobileNumber,
        _headOfWork = headOfWork,
        _level = level,
        _gpsLevel = gpsLevel,
        _branch = branch,
        _insurancePlan = insurancePlan,
        _groupCheckin = groupCheckin,
        super(firestoreUtilData);

  // "empCode" field.
  String? _empCode;
  String get empCode => _empCode ?? '';
  set empCode(String? val) => _empCode = val;

  bool hasEmpCode() => _empCode != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "nickName" field.
  String? _nickName;
  String get nickName => _nickName ?? '';
  set nickName(String? val) => _nickName = val;

  bool hasNickName() => _nickName != null;

  // "branchCode" field.
  String? _branchCode;
  String get branchCode => _branchCode ?? '';
  set branchCode(String? val) => _branchCode = val;

  bool hasBranchCode() => _branchCode != null;

  // "branchName" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  set branchName(String? val) => _branchName = val;

  bool hasBranchName() => _branchName != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  set area(String? val) => _area = val;

  bool hasArea() => _area != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;

  bool hasRegion() => _region != null;

  // "positionName" field.
  String? _positionName;
  String get positionName => _positionName ?? '';
  set positionName(String? val) => _positionName = val;

  bool hasPositionName() => _positionName != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  set department(String? val) => _department = val;

  bool hasDepartment() => _department != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "birthDate" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  set birthDate(String? val) => _birthDate = val;

  bool hasBirthDate() => _birthDate != null;

  // "age" field.
  AgeStruct? _age;
  AgeStruct get age => _age ?? AgeStruct();
  set age(AgeStruct? val) => _age = val;

  void updateAge(Function(AgeStruct) updateFn) {
    updateFn(_age ??= AgeStruct());
  }

  bool hasAge() => _age != null;

  // "hiredDate" field.
  String? _hiredDate;
  String get hiredDate => _hiredDate ?? '';
  set hiredDate(String? val) => _hiredDate = val;

  bool hasHiredDate() => _hiredDate != null;

  // "serviceDuration" field.
  ServiceDurationStruct? _serviceDuration;
  ServiceDurationStruct get serviceDuration =>
      _serviceDuration ?? ServiceDurationStruct();
  set serviceDuration(ServiceDurationStruct? val) => _serviceDuration = val;

  void updateServiceDuration(Function(ServiceDurationStruct) updateFn) {
    updateFn(_serviceDuration ??= ServiceDurationStruct());
  }

  bool hasServiceDuration() => _serviceDuration != null;

  // "positionAge" field.
  PositionAgeStruct? _positionAge;
  PositionAgeStruct get positionAge => _positionAge ?? PositionAgeStruct();
  set positionAge(PositionAgeStruct? val) => _positionAge = val;

  void updatePositionAge(Function(PositionAgeStruct) updateFn) {
    updateFn(_positionAge ??= PositionAgeStruct());
  }

  bool hasPositionAge() => _positionAge != null;

  // "checkPositionAge" field.
  String? _checkPositionAge;
  String get checkPositionAge => _checkPositionAge ?? '';
  set checkPositionAge(String? val) => _checkPositionAge = val;

  bool hasCheckPositionAge() => _checkPositionAge != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "headOfWork" field.
  String? _headOfWork;
  String get headOfWork => _headOfWork ?? '';
  set headOfWork(String? val) => _headOfWork = val;

  bool hasHeadOfWork() => _headOfWork != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  set level(String? val) => _level = val;

  bool hasLevel() => _level != null;

  // "gps_level" field.
  String? _gpsLevel;
  String get gpsLevel => _gpsLevel ?? '';
  set gpsLevel(String? val) => _gpsLevel = val;

  bool hasGpsLevel() => _gpsLevel != null;

  // "branch" field.
  String? _branch;
  String get branch => _branch ?? '';
  set branch(String? val) => _branch = val;

  bool hasBranch() => _branch != null;

  // "insurancePlan" field.
  String? _insurancePlan;
  String get insurancePlan => _insurancePlan ?? '';
  set insurancePlan(String? val) => _insurancePlan = val;

  bool hasInsurancePlan() => _insurancePlan != null;

  // "group_checkin" field.
  String? _groupCheckin;
  String get groupCheckin => _groupCheckin ?? '';
  set groupCheckin(String? val) => _groupCheckin = val;

  bool hasGroupCheckin() => _groupCheckin != null;

  static ProfileDataModelStruct fromMap(Map<String, dynamic> data) =>
      ProfileDataModelStruct(
        empCode: data['empCode'] as String?,
        fullName: data['fullName'] as String?,
        nickName: data['nickName'] as String?,
        branchCode: data['branchCode'] as String?,
        branchName: data['branchName'] as String?,
        area: data['area'] as String?,
        region: data['region'] as String?,
        positionName: data['positionName'] as String?,
        department: data['department'] as String?,
        unit: data['unit'] as String?,
        birthDate: data['birthDate'] as String?,
        age: data['age'] is AgeStruct
            ? data['age']
            : AgeStruct.maybeFromMap(data['age']),
        hiredDate: data['hiredDate'] as String?,
        serviceDuration: data['serviceDuration'] is ServiceDurationStruct
            ? data['serviceDuration']
            : ServiceDurationStruct.maybeFromMap(data['serviceDuration']),
        positionAge: data['positionAge'] is PositionAgeStruct
            ? data['positionAge']
            : PositionAgeStruct.maybeFromMap(data['positionAge']),
        checkPositionAge: data['checkPositionAge'] as String?,
        mobileNumber: data['mobileNumber'] as String?,
        headOfWork: data['headOfWork'] as String?,
        level: data['level'] as String?,
        gpsLevel: data['gps_level'] as String?,
        branch: data['branch'] as String?,
        insurancePlan: data['insurancePlan'] as String?,
        groupCheckin: data['group_checkin'] as String?,
      );

  static ProfileDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ProfileDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'empCode': _empCode,
        'fullName': _fullName,
        'nickName': _nickName,
        'branchCode': _branchCode,
        'branchName': _branchName,
        'area': _area,
        'region': _region,
        'positionName': _positionName,
        'department': _department,
        'unit': _unit,
        'birthDate': _birthDate,
        'age': _age?.toMap(),
        'hiredDate': _hiredDate,
        'serviceDuration': _serviceDuration?.toMap(),
        'positionAge': _positionAge?.toMap(),
        'checkPositionAge': _checkPositionAge,
        'mobileNumber': _mobileNumber,
        'headOfWork': _headOfWork,
        'level': _level,
        'gps_level': _gpsLevel,
        'branch': _branch,
        'insurancePlan': _insurancePlan,
        'group_checkin': _groupCheckin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'empCode': serializeParam(
          _empCode,
          ParamType.String,
        ),
        'fullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'nickName': serializeParam(
          _nickName,
          ParamType.String,
        ),
        'branchCode': serializeParam(
          _branchCode,
          ParamType.String,
        ),
        'branchName': serializeParam(
          _branchName,
          ParamType.String,
        ),
        'area': serializeParam(
          _area,
          ParamType.String,
        ),
        'region': serializeParam(
          _region,
          ParamType.String,
        ),
        'positionName': serializeParam(
          _positionName,
          ParamType.String,
        ),
        'department': serializeParam(
          _department,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'birthDate': serializeParam(
          _birthDate,
          ParamType.String,
        ),
        'age': serializeParam(
          _age,
          ParamType.DataStruct,
        ),
        'hiredDate': serializeParam(
          _hiredDate,
          ParamType.String,
        ),
        'serviceDuration': serializeParam(
          _serviceDuration,
          ParamType.DataStruct,
        ),
        'positionAge': serializeParam(
          _positionAge,
          ParamType.DataStruct,
        ),
        'checkPositionAge': serializeParam(
          _checkPositionAge,
          ParamType.String,
        ),
        'mobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'headOfWork': serializeParam(
          _headOfWork,
          ParamType.String,
        ),
        'level': serializeParam(
          _level,
          ParamType.String,
        ),
        'gps_level': serializeParam(
          _gpsLevel,
          ParamType.String,
        ),
        'branch': serializeParam(
          _branch,
          ParamType.String,
        ),
        'insurancePlan': serializeParam(
          _insurancePlan,
          ParamType.String,
        ),
        'group_checkin': serializeParam(
          _groupCheckin,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProfileDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProfileDataModelStruct(
        empCode: deserializeParam(
          data['empCode'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['fullName'],
          ParamType.String,
          false,
        ),
        nickName: deserializeParam(
          data['nickName'],
          ParamType.String,
          false,
        ),
        branchCode: deserializeParam(
          data['branchCode'],
          ParamType.String,
          false,
        ),
        branchName: deserializeParam(
          data['branchName'],
          ParamType.String,
          false,
        ),
        area: deserializeParam(
          data['area'],
          ParamType.String,
          false,
        ),
        region: deserializeParam(
          data['region'],
          ParamType.String,
          false,
        ),
        positionName: deserializeParam(
          data['positionName'],
          ParamType.String,
          false,
        ),
        department: deserializeParam(
          data['department'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        birthDate: deserializeParam(
          data['birthDate'],
          ParamType.String,
          false,
        ),
        age: deserializeStructParam(
          data['age'],
          ParamType.DataStruct,
          false,
          structBuilder: AgeStruct.fromSerializableMap,
        ),
        hiredDate: deserializeParam(
          data['hiredDate'],
          ParamType.String,
          false,
        ),
        serviceDuration: deserializeStructParam(
          data['serviceDuration'],
          ParamType.DataStruct,
          false,
          structBuilder: ServiceDurationStruct.fromSerializableMap,
        ),
        positionAge: deserializeStructParam(
          data['positionAge'],
          ParamType.DataStruct,
          false,
          structBuilder: PositionAgeStruct.fromSerializableMap,
        ),
        checkPositionAge: deserializeParam(
          data['checkPositionAge'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobileNumber'],
          ParamType.String,
          false,
        ),
        headOfWork: deserializeParam(
          data['headOfWork'],
          ParamType.String,
          false,
        ),
        level: deserializeParam(
          data['level'],
          ParamType.String,
          false,
        ),
        gpsLevel: deserializeParam(
          data['gps_level'],
          ParamType.String,
          false,
        ),
        branch: deserializeParam(
          data['branch'],
          ParamType.String,
          false,
        ),
        insurancePlan: deserializeParam(
          data['insurancePlan'],
          ParamType.String,
          false,
        ),
        groupCheckin: deserializeParam(
          data['group_checkin'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProfileDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfileDataModelStruct &&
        empCode == other.empCode &&
        fullName == other.fullName &&
        nickName == other.nickName &&
        branchCode == other.branchCode &&
        branchName == other.branchName &&
        area == other.area &&
        region == other.region &&
        positionName == other.positionName &&
        department == other.department &&
        unit == other.unit &&
        birthDate == other.birthDate &&
        age == other.age &&
        hiredDate == other.hiredDate &&
        serviceDuration == other.serviceDuration &&
        positionAge == other.positionAge &&
        checkPositionAge == other.checkPositionAge &&
        mobileNumber == other.mobileNumber &&
        headOfWork == other.headOfWork &&
        level == other.level &&
        gpsLevel == other.gpsLevel &&
        branch == other.branch &&
        insurancePlan == other.insurancePlan &&
        groupCheckin == other.groupCheckin;
  }

  @override
  int get hashCode => const ListEquality().hash([
        empCode,
        fullName,
        nickName,
        branchCode,
        branchName,
        area,
        region,
        positionName,
        department,
        unit,
        birthDate,
        age,
        hiredDate,
        serviceDuration,
        positionAge,
        checkPositionAge,
        mobileNumber,
        headOfWork,
        level,
        gpsLevel,
        branch,
        insurancePlan,
        groupCheckin
      ]);
}

ProfileDataModelStruct createProfileDataModelStruct({
  String? empCode,
  String? fullName,
  String? nickName,
  String? branchCode,
  String? branchName,
  String? area,
  String? region,
  String? positionName,
  String? department,
  String? unit,
  String? birthDate,
  AgeStruct? age,
  String? hiredDate,
  ServiceDurationStruct? serviceDuration,
  PositionAgeStruct? positionAge,
  String? checkPositionAge,
  String? mobileNumber,
  String? headOfWork,
  String? level,
  String? gpsLevel,
  String? branch,
  String? insurancePlan,
  String? groupCheckin,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProfileDataModelStruct(
      empCode: empCode,
      fullName: fullName,
      nickName: nickName,
      branchCode: branchCode,
      branchName: branchName,
      area: area,
      region: region,
      positionName: positionName,
      department: department,
      unit: unit,
      birthDate: birthDate,
      age: age ?? (clearUnsetFields ? AgeStruct() : null),
      hiredDate: hiredDate,
      serviceDuration: serviceDuration ??
          (clearUnsetFields ? ServiceDurationStruct() : null),
      positionAge:
          positionAge ?? (clearUnsetFields ? PositionAgeStruct() : null),
      checkPositionAge: checkPositionAge,
      mobileNumber: mobileNumber,
      headOfWork: headOfWork,
      level: level,
      gpsLevel: gpsLevel,
      branch: branch,
      insurancePlan: insurancePlan,
      groupCheckin: groupCheckin,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProfileDataModelStruct? updateProfileDataModelStruct(
  ProfileDataModelStruct? profileDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    profileDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProfileDataModelStructData(
  Map<String, dynamic> firestoreData,
  ProfileDataModelStruct? profileDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (profileDataModel == null) {
    return;
  }
  if (profileDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && profileDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final profileDataModelData =
      getProfileDataModelFirestoreData(profileDataModel, forFieldValue);
  final nestedData =
      profileDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = profileDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProfileDataModelFirestoreData(
  ProfileDataModelStruct? profileDataModel, [
  bool forFieldValue = false,
]) {
  if (profileDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(profileDataModel.toMap());

  // Handle nested data for "age" field.
  addAgeStructData(
    firestoreData,
    profileDataModel.hasAge() ? profileDataModel.age : null,
    'age',
    forFieldValue,
  );

  // Handle nested data for "serviceDuration" field.
  addServiceDurationStructData(
    firestoreData,
    profileDataModel.hasServiceDuration()
        ? profileDataModel.serviceDuration
        : null,
    'serviceDuration',
    forFieldValue,
  );

  // Handle nested data for "positionAge" field.
  addPositionAgeStructData(
    firestoreData,
    profileDataModel.hasPositionAge() ? profileDataModel.positionAge : null,
    'positionAge',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(profileDataModel.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProfileDataModelListFirestoreData(
  List<ProfileDataModelStruct>? profileDataModels,
) =>
    profileDataModels
        ?.map((e) => getProfileDataModelFirestoreData(e, true))
        .toList() ??
    [];
