// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    int? id,
    String? nameTh,
    String? nameEn,
    String? email,
    String? emailVerifiedAt,
    String? registerId,
    String? username,
    String? password2,
    String? employeeId,
    String? employeeType,
    String? sessionId,
    String? accessToken,
    String? mobilePhone,
    String? position,
    String? level,
    String? branchCode,
    String? startDate,
    String? status,
    String? deleted,
    int? createdUserid,
    String? createdAt,
    int? updatedUserid,
    String? updatedAt,
    String? passwordChange,
    String? fcmToken,
    String? uid,
    String? jwtToken,
    String? insurancePlan,
    String? groupCheckin,
    String? roleName,
    String? authentikPk,
    String? checkInBranchCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nameTh = nameTh,
        _nameEn = nameEn,
        _email = email,
        _emailVerifiedAt = emailVerifiedAt,
        _registerId = registerId,
        _username = username,
        _password2 = password2,
        _employeeId = employeeId,
        _employeeType = employeeType,
        _sessionId = sessionId,
        _accessToken = accessToken,
        _mobilePhone = mobilePhone,
        _position = position,
        _level = level,
        _branchCode = branchCode,
        _startDate = startDate,
        _status = status,
        _deleted = deleted,
        _createdUserid = createdUserid,
        _createdAt = createdAt,
        _updatedUserid = updatedUserid,
        _updatedAt = updatedAt,
        _passwordChange = passwordChange,
        _fcmToken = fcmToken,
        _uid = uid,
        _jwtToken = jwtToken,
        _insurancePlan = insurancePlan,
        _groupCheckin = groupCheckin,
        _roleName = roleName,
        _authentikPk = authentikPk,
        _checkInBranchCode = checkInBranchCode,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name_th" field.
  String? _nameTh;
  String get nameTh => _nameTh ?? '';
  set nameTh(String? val) => _nameTh = val;

  bool hasNameTh() => _nameTh != null;

  // "name_en" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  set nameEn(String? val) => _nameEn = val;

  bool hasNameEn() => _nameEn != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "email_verified_at" field.
  String? _emailVerifiedAt;
  String get emailVerifiedAt => _emailVerifiedAt ?? '';
  set emailVerifiedAt(String? val) => _emailVerifiedAt = val;

  bool hasEmailVerifiedAt() => _emailVerifiedAt != null;

  // "register_id" field.
  String? _registerId;
  String get registerId => _registerId ?? '';
  set registerId(String? val) => _registerId = val;

  bool hasRegisterId() => _registerId != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "password2" field.
  String? _password2;
  String get password2 => _password2 ?? '';
  set password2(String? val) => _password2 = val;

  bool hasPassword2() => _password2 != null;

  // "employee_id" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  set employeeId(String? val) => _employeeId = val;

  bool hasEmployeeId() => _employeeId != null;

  // "employee_type" field.
  String? _employeeType;
  String get employeeType => _employeeType ?? '';
  set employeeType(String? val) => _employeeType = val;

  bool hasEmployeeType() => _employeeType != null;

  // "session_id" field.
  String? _sessionId;
  String get sessionId => _sessionId ?? '';
  set sessionId(String? val) => _sessionId = val;

  bool hasSessionId() => _sessionId != null;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "mobile_phone" field.
  String? _mobilePhone;
  String get mobilePhone => _mobilePhone ?? '';
  set mobilePhone(String? val) => _mobilePhone = val;

  bool hasMobilePhone() => _mobilePhone != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  set level(String? val) => _level = val;

  bool hasLevel() => _level != null;

  // "branch_code" field.
  String? _branchCode;
  String get branchCode => _branchCode ?? '';
  set branchCode(String? val) => _branchCode = val;

  bool hasBranchCode() => _branchCode != null;

  // "start_date" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "deleted" field.
  String? _deleted;
  String get deleted => _deleted ?? '';
  set deleted(String? val) => _deleted = val;

  bool hasDeleted() => _deleted != null;

  // "created_userid" field.
  int? _createdUserid;
  int get createdUserid => _createdUserid ?? 0;
  set createdUserid(int? val) => _createdUserid = val;

  void incrementCreatedUserid(int amount) =>
      createdUserid = createdUserid + amount;

  bool hasCreatedUserid() => _createdUserid != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_userid" field.
  int? _updatedUserid;
  int get updatedUserid => _updatedUserid ?? 0;
  set updatedUserid(int? val) => _updatedUserid = val;

  void incrementUpdatedUserid(int amount) =>
      updatedUserid = updatedUserid + amount;

  bool hasUpdatedUserid() => _updatedUserid != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "password_change" field.
  String? _passwordChange;
  String get passwordChange => _passwordChange ?? '';
  set passwordChange(String? val) => _passwordChange = val;

  bool hasPasswordChange() => _passwordChange != null;

  // "fcm_token" field.
  String? _fcmToken;
  String get fcmToken => _fcmToken ?? '';
  set fcmToken(String? val) => _fcmToken = val;

  bool hasFcmToken() => _fcmToken != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "jwt_token" field.
  String? _jwtToken;
  String get jwtToken => _jwtToken ?? '';
  set jwtToken(String? val) => _jwtToken = val;

  bool hasJwtToken() => _jwtToken != null;

  // "insurance_plan" field.
  String? _insurancePlan;
  String get insurancePlan => _insurancePlan ?? '';
  set insurancePlan(String? val) => _insurancePlan = val;

  bool hasInsurancePlan() => _insurancePlan != null;

  // "group_checkin" field.
  String? _groupCheckin;
  String get groupCheckin => _groupCheckin ?? '';
  set groupCheckin(String? val) => _groupCheckin = val;

  bool hasGroupCheckin() => _groupCheckin != null;

  // "role_name" field.
  String? _roleName;
  String get roleName => _roleName ?? '';
  set roleName(String? val) => _roleName = val;

  bool hasRoleName() => _roleName != null;

  // "authentik_pk" field.
  String? _authentikPk;
  String get authentikPk => _authentikPk ?? '';
  set authentikPk(String? val) => _authentikPk = val;

  bool hasAuthentikPk() => _authentikPk != null;

  // "check_in_branch_code" field.
  String? _checkInBranchCode;
  String get checkInBranchCode => _checkInBranchCode ?? '';
  set checkInBranchCode(String? val) => _checkInBranchCode = val;

  bool hasCheckInBranchCode() => _checkInBranchCode != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: castToType<int>(data['id']),
        nameTh: data['name_th'] as String?,
        nameEn: data['name_en'] as String?,
        email: data['email'] as String?,
        emailVerifiedAt: data['email_verified_at'] as String?,
        registerId: data['register_id'] as String?,
        username: data['username'] as String?,
        password2: data['password2'] as String?,
        employeeId: data['employee_id'] as String?,
        employeeType: data['employee_type'] as String?,
        sessionId: data['session_id'] as String?,
        accessToken: data['access_token'] as String?,
        mobilePhone: data['mobile_phone'] as String?,
        position: data['position'] as String?,
        level: data['level'] as String?,
        branchCode: data['branch_code'] as String?,
        startDate: data['start_date'] as String?,
        status: data['status'] as String?,
        deleted: data['deleted'] as String?,
        createdUserid: castToType<int>(data['created_userid']),
        createdAt: data['created_at'] as String?,
        updatedUserid: castToType<int>(data['updated_userid']),
        updatedAt: data['updated_at'] as String?,
        passwordChange: data['password_change'] as String?,
        fcmToken: data['fcm_token'] as String?,
        uid: data['uid'] as String?,
        jwtToken: data['jwt_token'] as String?,
        insurancePlan: data['insurance_plan'] as String?,
        groupCheckin: data['group_checkin'] as String?,
        roleName: data['role_name'] as String?,
        authentikPk: data['authentik_pk'] as String?,
        checkInBranchCode: data['check_in_branch_code'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name_th': _nameTh,
        'name_en': _nameEn,
        'email': _email,
        'email_verified_at': _emailVerifiedAt,
        'register_id': _registerId,
        'username': _username,
        'password2': _password2,
        'employee_id': _employeeId,
        'employee_type': _employeeType,
        'session_id': _sessionId,
        'access_token': _accessToken,
        'mobile_phone': _mobilePhone,
        'position': _position,
        'level': _level,
        'branch_code': _branchCode,
        'start_date': _startDate,
        'status': _status,
        'deleted': _deleted,
        'created_userid': _createdUserid,
        'created_at': _createdAt,
        'updated_userid': _updatedUserid,
        'updated_at': _updatedAt,
        'password_change': _passwordChange,
        'fcm_token': _fcmToken,
        'uid': _uid,
        'jwt_token': _jwtToken,
        'insurance_plan': _insurancePlan,
        'group_checkin': _groupCheckin,
        'role_name': _roleName,
        'authentik_pk': _authentikPk,
        'check_in_branch_code': _checkInBranchCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name_th': serializeParam(
          _nameTh,
          ParamType.String,
        ),
        'name_en': serializeParam(
          _nameEn,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'email_verified_at': serializeParam(
          _emailVerifiedAt,
          ParamType.String,
        ),
        'register_id': serializeParam(
          _registerId,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'password2': serializeParam(
          _password2,
          ParamType.String,
        ),
        'employee_id': serializeParam(
          _employeeId,
          ParamType.String,
        ),
        'employee_type': serializeParam(
          _employeeType,
          ParamType.String,
        ),
        'session_id': serializeParam(
          _sessionId,
          ParamType.String,
        ),
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'mobile_phone': serializeParam(
          _mobilePhone,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
        'level': serializeParam(
          _level,
          ParamType.String,
        ),
        'branch_code': serializeParam(
          _branchCode,
          ParamType.String,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'deleted': serializeParam(
          _deleted,
          ParamType.String,
        ),
        'created_userid': serializeParam(
          _createdUserid,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_userid': serializeParam(
          _updatedUserid,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'password_change': serializeParam(
          _passwordChange,
          ParamType.String,
        ),
        'fcm_token': serializeParam(
          _fcmToken,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'jwt_token': serializeParam(
          _jwtToken,
          ParamType.String,
        ),
        'insurance_plan': serializeParam(
          _insurancePlan,
          ParamType.String,
        ),
        'group_checkin': serializeParam(
          _groupCheckin,
          ParamType.String,
        ),
        'role_name': serializeParam(
          _roleName,
          ParamType.String,
        ),
        'authentik_pk': serializeParam(
          _authentikPk,
          ParamType.String,
        ),
        'check_in_branch_code': serializeParam(
          _checkInBranchCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nameTh: deserializeParam(
          data['name_th'],
          ParamType.String,
          false,
        ),
        nameEn: deserializeParam(
          data['name_en'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        emailVerifiedAt: deserializeParam(
          data['email_verified_at'],
          ParamType.String,
          false,
        ),
        registerId: deserializeParam(
          data['register_id'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        password2: deserializeParam(
          data['password2'],
          ParamType.String,
          false,
        ),
        employeeId: deserializeParam(
          data['employee_id'],
          ParamType.String,
          false,
        ),
        employeeType: deserializeParam(
          data['employee_type'],
          ParamType.String,
          false,
        ),
        sessionId: deserializeParam(
          data['session_id'],
          ParamType.String,
          false,
        ),
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        mobilePhone: deserializeParam(
          data['mobile_phone'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
        level: deserializeParam(
          data['level'],
          ParamType.String,
          false,
        ),
        branchCode: deserializeParam(
          data['branch_code'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        deleted: deserializeParam(
          data['deleted'],
          ParamType.String,
          false,
        ),
        createdUserid: deserializeParam(
          data['created_userid'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedUserid: deserializeParam(
          data['updated_userid'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        passwordChange: deserializeParam(
          data['password_change'],
          ParamType.String,
          false,
        ),
        fcmToken: deserializeParam(
          data['fcm_token'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        jwtToken: deserializeParam(
          data['jwt_token'],
          ParamType.String,
          false,
        ),
        insurancePlan: deserializeParam(
          data['insurance_plan'],
          ParamType.String,
          false,
        ),
        groupCheckin: deserializeParam(
          data['group_checkin'],
          ParamType.String,
          false,
        ),
        roleName: deserializeParam(
          data['role_name'],
          ParamType.String,
          false,
        ),
        authentikPk: deserializeParam(
          data['authentik_pk'],
          ParamType.String,
          false,
        ),
        checkInBranchCode: deserializeParam(
          data['check_in_branch_code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        nameTh == other.nameTh &&
        nameEn == other.nameEn &&
        email == other.email &&
        emailVerifiedAt == other.emailVerifiedAt &&
        registerId == other.registerId &&
        username == other.username &&
        password2 == other.password2 &&
        employeeId == other.employeeId &&
        employeeType == other.employeeType &&
        sessionId == other.sessionId &&
        accessToken == other.accessToken &&
        mobilePhone == other.mobilePhone &&
        position == other.position &&
        level == other.level &&
        branchCode == other.branchCode &&
        startDate == other.startDate &&
        status == other.status &&
        deleted == other.deleted &&
        createdUserid == other.createdUserid &&
        createdAt == other.createdAt &&
        updatedUserid == other.updatedUserid &&
        updatedAt == other.updatedAt &&
        passwordChange == other.passwordChange &&
        fcmToken == other.fcmToken &&
        uid == other.uid &&
        jwtToken == other.jwtToken &&
        insurancePlan == other.insurancePlan &&
        groupCheckin == other.groupCheckin &&
        roleName == other.roleName &&
        authentikPk == other.authentikPk &&
        checkInBranchCode == other.checkInBranchCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nameTh,
        nameEn,
        email,
        emailVerifiedAt,
        registerId,
        username,
        password2,
        employeeId,
        employeeType,
        sessionId,
        accessToken,
        mobilePhone,
        position,
        level,
        branchCode,
        startDate,
        status,
        deleted,
        createdUserid,
        createdAt,
        updatedUserid,
        updatedAt,
        passwordChange,
        fcmToken,
        uid,
        jwtToken,
        insurancePlan,
        groupCheckin,
        roleName,
        authentikPk,
        checkInBranchCode
      ]);
}

UserStruct createUserStruct({
  int? id,
  String? nameTh,
  String? nameEn,
  String? email,
  String? emailVerifiedAt,
  String? registerId,
  String? username,
  String? password2,
  String? employeeId,
  String? employeeType,
  String? sessionId,
  String? accessToken,
  String? mobilePhone,
  String? position,
  String? level,
  String? branchCode,
  String? startDate,
  String? status,
  String? deleted,
  int? createdUserid,
  String? createdAt,
  int? updatedUserid,
  String? updatedAt,
  String? passwordChange,
  String? fcmToken,
  String? uid,
  String? jwtToken,
  String? insurancePlan,
  String? groupCheckin,
  String? roleName,
  String? authentikPk,
  String? checkInBranchCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      id: id,
      nameTh: nameTh,
      nameEn: nameEn,
      email: email,
      emailVerifiedAt: emailVerifiedAt,
      registerId: registerId,
      username: username,
      password2: password2,
      employeeId: employeeId,
      employeeType: employeeType,
      sessionId: sessionId,
      accessToken: accessToken,
      mobilePhone: mobilePhone,
      position: position,
      level: level,
      branchCode: branchCode,
      startDate: startDate,
      status: status,
      deleted: deleted,
      createdUserid: createdUserid,
      createdAt: createdAt,
      updatedUserid: updatedUserid,
      updatedAt: updatedAt,
      passwordChange: passwordChange,
      fcmToken: fcmToken,
      uid: uid,
      jwtToken: jwtToken,
      insurancePlan: insurancePlan,
      groupCheckin: groupCheckin,
      roleName: roleName,
      authentikPk: authentikPk,
      checkInBranchCode: checkInBranchCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  mapToFirestore(user.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
